import 'package:atlas_mobile/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:atlas_mobile/screens/menu.dart';
import 'package:atlas_mobile/screens/productlist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Column(
              children: [
                Text(
                  'Atlas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Produk Terbaik!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    )
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.post_add),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke ProductFormPage
            onTap: () {
              Navigator.pushReplacement(context, 
              MaterialPageRoute(
                builder: (context) => const ProductFormPage()));
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.show_chart_rounded),
          //   title: const Text('Show Product'),
          //   // Bagian redirection ke
          //   onTap: () {
          //     Navigator.pushReplacement(context, 
          //     MaterialPageRoute(
          //       builder: (context) => MyHomePage()));
          //   },
          // ),
        ],
      ),
    );
  }
}