# Program Prototype Register, Login, dan Penyimpanan Data pada Website/Aplikasi
Ujian Akhir Semester Praktikum Dasar Pemrograman Lab 3  

Nama : Andreas Manatar Lumban Gaol  
NIM  : 221401067
Kom  : B
Lab  : Dasar Pemrograman 3  
Asisten Lab : Andrew Benedictus Jamesie  
Tahun Ajaran : Ganjil 2022/2023  

Ilmu Komputer Laboratory Center  
Program Studi Ilmu Komputer  
Fakultas Ilmu Komputer dan Teknologi Informasi  
Universitas Sumatera Utara  

## Deskripsi Proyek
Proyek ini merupakan sebuah program prototype cara kerja sebuah webiste/aplikasi yang berfungsi untuk menyimulasikan sebuah website/aplikasi. Program prototype ini hanya berisi alur mulai dari proses pendaftaran, masuk, dan pengeditan data akun yang telah didaftarkan. Program ini dapat diisi dengan sub program tambahan pada bagian system utama untuk mengisi system. Secara singkat, program ini dapat dianalogikan sebagai website/aplikasi yang mengharuskan pengguna untuk login terlebih dahulu untuk menggunakan fitur yang ada di dalam website/aplikasi tersebut. Sebagai contoh saya akan mengisikan program mengecek tahun kabisat pada system. Website/Aplikasi pada umumnya menggunakan klik kiri sebagai input. Di sini, saya menggunakan ketikan sebagai input dari user.

Program ini dibatasi hingga dapat menampung sebanyak 50 akun. Dimana kesemua 50 akun tersebut tidak boleh memiliki username,email, atau nomor hp yang sama. User dapat mengubah data pada akun maupun password akun setelah login di akun tersebut. 

Pada program ini, perulangan ke-51 hanya ditujukan untuk login dan menggunakan fungsi utama dari website/aplikasi tersebut.

## Alur Program
<li> Mulai. </li>
<li> Waktu saat program dijalankan akan selalu ditampilkan di paling atas</li>
<li> **Menu utama (HOME)** muncul</li>
<li> Program meminta input _'REGISTER'_, _'LOGIN'_, _'CLOSE'_ dari user</li>
<ul> Jika user menginput _'REGISTER'_, akan muncul menu pendaftaran yang mengharuskan user membuat Nama Depan, Nama Belakang, No. HP, Username, dan Password serta konfirmasi ulang password. Kemudian user akan diarahkan ke menu **LOGIN**</ul>
<ul> Jika user menginput _'LOGIN'_, user akan ditujukan ke menu **LOGIN**. Pada menu **LOGIN**, user diwajibkan menginput username/email/No. HP yang telah terdaftar. Jika tidak terdaftar, user akan dikembalikan ke HOME. Jika telah terdaftar, user disuruh menginput password sampai benar. Setelah username/email/No. HP dan password sesuai, akan masuk ke menu **SYSTEM**</ul>
<ul> Jika user menginput _'CLOSE'_, maka akan muncul tulisan 'Terima Kasih' dan program akan tertutup</ul>
<li> Pada menu **SYSTEM**, akan muncul tulisan 'Selamat datang, [NAMA USER]. Kemudian program kembali meminta input _'MAIN'_, _'PROFIL'_, _'PASSWORD'_, _'LOGOUT'_ dari user</li>
<ul> Jika user menginput _'MAIN'_, maka akan diarahkan ke program utama. Setelah selesai akan kembali ke menu **SYSTEM**</ul>
<ul> Jika user menginput _'PROFIL'_, maka akan diarahkan ke menu yang berguna untuk menampilkan informasi user. Setelah itu, user dapat menyunting isi profil ataupun data dari akun user tersebut</ul>
<ul> Jika user menginput _'PASSWORD'_, user dapat mengubah password akun tersebut</ul>
<ul> Jika user menginput _'LOGOUT'_, user akan kembali ke menu **HOME**</ul>
<li> Selesai.</li>

## Video
[Video Program](https://www.youtube.com "Program Prototype Register, Login, dan Penyimpanan Data pada Website/Aplikasi")