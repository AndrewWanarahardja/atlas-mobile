import 'package:flutter/material.dart';
import 'package:atlas_mobile/models/product_entry.dart';
import 'package:atlas_mobile/widgets/left_drawer.dart';
import 'package:atlas_mobile/screens/product_detail.dart';
import 'package:atlas_mobile/widgets/product_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class MyEntryListPage extends StatefulWidget {
  const MyEntryListPage({super.key});

  @override
  State<MyEntryListPage> createState() => _MyEntryListPageState();
}

class _MyEntryListPageState extends State<MyEntryListPage> {
  Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
    // TODO: Replace the URL with your app's URL and don't forget to add a trailing slash (/)!
    // To connect Android emulator with Django on localhost, use URL http://10.0.2.2/
    // If you using chrome,  use URL http://localhost:8000
    
    final response = await request.get('http://localhost:8000/json/');
    final userId = await getCurrentUserId(request);
    
    // Decode response to json format
    var data = response;
    
    // Convert json data to ProductEntry objects
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        var productEntry = ProductEntry.fromJson(d);
        if (productEntry.userId == userId) {
          listProduct.add(productEntry);
        }
      }
    }
    return listProduct;
  }

  Future<int?> getCurrentUserId(CookieRequest request) async {
      final response = await request.get('http://localhost:8000/auth/getUser/');

      if (response['userId'] != null) {
        return response['userId'];
      } else {
        print('Failed to load user data: ${response.statusCode}');
        return null;
      }
    }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Product Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'There are no products in ATLAS yet.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => ProductEntryCard(
                  product: snapshot.data![index],
                  onTap: () {
                    // Navigate to product detail page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                          product: snapshot.data![index],
                        ),
                      ),
                    );
                  },
                ),
              );
            }
          }
        },
      ),
    );
  }
}