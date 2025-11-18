# atlas-mobile
Tugas 8 :
1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
    Navigator.push() melakukan push pada stack, sedangkan Navigator.pushReplacement() melakukan penghapusan halaman yang sekarang pada stack yang sekarang lalu push halaman yang berikutnya. Menurut saya jika terdapat data sensitif seperti setelah pengumpulan form ada routing ke halaman lain, baik dilakukan dengan Navigator.pushReplacement() agar tidak bisa kembali ke kondisi sebelum kita mengumpulkan form. selain itu menurut saya lebih baik untuk menggunakan Navigator.push untuk mudahnya akses dan rollback jika terjadi masalah.

2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
    Scaffold digunakan Appbarnya untuk membuat sebuah header dan Drawernya digunakan untuk membuat sebuah tampilan yang muncul dari samping. 

3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
    Penggunaan layout widget baik karena di berbagai device, peletakan widget bisa tetap teratur

4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
    theme data yang di definisikan di main.dart. secara default warna beberapa widget akan mengikuti color scheme yang tertulis di sana, menyebabkan aplikasi yang memiliki tema warna yang konsisten.

------------------------------------------------------------------------------------------------

Tugas 9 : 
1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
    validasi tipe : pada model bisa langsung didefinisikan tipe data yang digunakan, jadi bisa langsung terlihat error jika ada salah masuk
    null safety : di model,bisa langung ditulis required untuk fields yang tidak boleh bernilai null
    maintainability : jika menggunakan model, saatada penggantian nama yang perlu diganti langsung terlihat semua, jadi tidak mencari satu satu.

    jika langsung menggunakan Map, semua itu lebih sulit untuk dilakukan

2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
    http dan CookieRequest sama sama bisa digunakan untuk membuat request ke server digunakan saat ingin melakukan fungsi yang ada di django, tapi cookie request juga bisa digunakan untuk menyimpan data yang dikirim dari server 
    
3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
    Agar cookie bisa diakses dari manapun di widget tree, ketika terjadi pergantion informasi pada cookie, widget yang berhubungan dirender ulang

4. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?

5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
    untuk pengiriman data produk, pertama di flutter dilakukan await untuk menagambil produk dari json endpoint. lalu setiap instance produk dalam hasilnya di build dalam widget product_entry_card

6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
    pertama flutter menampilkan sebuah form. setelah form diisi, flutter mengirim data yang diisi ke django dengan await, dan fungsi pada django yang ingin dilakukan dimasukkan ke dalam sebuah url. di django, dilakukan pemrosesan data, ie memastikan password benar, meregister dan login user. Lalu django akan mengembalikan sebuah response json yang menyatakan apakah proses berhasil. dari response yang dikembalikan, flutter akan menampilkan sebuah pesan dan pindah ke halaman yang dituju. 

7. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
    Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
    Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
        membuat halaman registrasi pada flutter dan membuat function untuk regitrasi di django. di halaman registrasi flutter, data registrasi di kirim ke django melalui aynchronous request. di django, request diproses dan di register. jika berhasil maka akan mengembalikan status success. dan di flutter akan menampilkan apakah terjadi register secara sukses atau tidak

    Membuat halaman login pada proyek tugas Flutter.
        sama dengan register tapi login

    Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
        di project flutter saat ingin melakukan autentikasi akan melakukan asynchronous call ke fungsi yang di django dan autentikasi akan diproses di django dan hasilnya dikembalikan untuk ditampilkan di flutter. 

    Membuat model kustom sesuai dengan proyek aplikasi Django.
        masukkan data sebuah instance objek di django ke dalam website quicktype

    Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
    Tampilkan name, price, description, thumbnail, category, dan is_featured dari masing-masing item pada halaman ini (Dapat disesuaikan dengan field yang kalian buat sebelumnya).
        data product diambil dari jason endpoint menggunakan aynchronous call dengan await. setiap instance product dimasukkan ke dalam sebuah list. kemudian dengan item builder, dibuatlah widget product_entry_card yang ada. pada widget product_entry_card, ditampilkan data seperti nama, kategori, dan is_featured sebuah produk

    Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
    Halaman ini dapat diakses dengan menekan salah satu card item pada halaman daftar Item.
    Tampilkan seluruh atribut pada model item kamu pada halaman ini.
        dibuat sebuah file untuk halaman berisi detail produk di flutter. halaman ini bisa diakses melalui halaman product_entry_list ketika menekan sebuah entry. perpindahan dilakukan dengan navigator.push(...). Karena data produk yang di-pass dari halaman sebelumnya hanya data produk tersebut maka bisa ditampilkan dengan product.attribute

    Tambahkan tombol untuk kembali ke halaman daftar item.
        tidak dilakukan secara explisit, tapi secara automatic dari flutter.

    Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.
        saya membuat page yang hanya menampilkan produk pengguna tersebut secara terpisah. di halaman yang menampilkan semua produk, ditambahkan satu button yang melakukan push ke halaman yang menampilkan produk pengguna saja. di halaman tersebut. pertama dibuat function yang melakukan await untuk mengambil userId pengguna yang diproses di django, lalu pada saaaat pemasukan produk ke list, hanya dimasukkan produk yang memiliki id yang sama dengan userId yang telah diambil. sisanya sama dengan halaman yang menampilkan semua produk.  