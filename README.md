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

Tugas 9 : 
1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?

2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.

3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

4. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?

5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

7. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
    Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
    Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
    Membuat halaman login pada proyek tugas Flutter.
    Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
    Membuat model kustom sesuai dengan proyek aplikasi Django.
    Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
    Tampilkan name, price, description, thumbnail, category, dan is_featured dari masing-masing item pada halaman ini (Dapat disesuaikan dengan field yang kalian buat sebelumnya).
    Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
    Halaman ini dapat diakses dengan menekan salah satu card item pada halaman daftar Item.
    Tampilkan seluruh atribut pada model item kamu pada halaman ini.
    Tambahkan tombol untuk kembali ke halaman daftar item.
    Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.