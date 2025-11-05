# atlas-mobile
1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
    Navigator.push() melakukan push pada stack, sedangkan Navigator.pushReplacement() melakukan penghapusan halaman yang sekarang pada stack yang sekarang lalu push halaman yang berikutnya. Menurut saya jika terdapat data sensitif seperti setelah pengumpulan form ada routing ke halaman lain, baik dilakukan dengan Navigator.pushReplacement() agar tidak bisa kembali ke kondisi sebelum kita mengumpulkan form. selain itu menurut saya lebih baik untuk menggunakan Navigator.push untuk mudahnya akses dan rollback jika terjadi masalah.

2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
    Scaffold digunakan Appbarnya untuk membuat sebuah header dan Drawernya digunakan untuk membuat sebuah tampilan yang muncul dari samping. 

3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
    Penggunaan layout widget baik karena di berbagai device, peletakan widget bisa tetap teratur

4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
    theme data yang di definisikan di main.dart. secara default warna beberapa widget akan mengikuti color scheme yang tertulis di sana, menyebabkan aplikasi yang memiliki tema warna yang konsisten.