uses 
    crt, sysutils; //sysutils digunakan untuk menampilkan waktu (DateTime), crt untuk clear screen

type
    flogin = record
        username : string; //username saat login
        password : string; //password saat login
        end;
    date = record
        hari : byte; //tanggal lahir, byte unsigned 8-bit
        bulan : byte; //bulan lahir
        tahun : word; //tahun lahir, word unsigned 16-bit
        end;
    fAkun = record
        NamaDepan : string; 
        NamaBelakang : string; 
        NoHP : string[13];
        username : string;
        email : string;
        password : string;
        Kpassword : string; //konfirmasi password
        tempat : string; //tempat lahir
        tanggal : date; //format tanggal lahir
        end;

const 
    limit = 51; //batas akun yang didaftar + 1

var
    Akun : array[1..limit] of fAkun;
    i, j, k : integer; //untuk perulangan
    menu : string; //input di menu home
    login : flogin; //username dan password saat login 
    ptr : ^fAkun; //pointer
    alamat : ^word; //alamat penyimpanan data akun

label home;

//writeln
procedure enter;
    begin
        writeln;
    end;

//clrscr dan menampilkan waktu di paling atas
procedure clear;
    begin
        clrscr;
        writeln (DateTimeToStr(Now));
        enter;
    end;

//isi program utama
procedure main;
    var
        tahun : cardinal; //unsigned 32-bit
        answer : char;

    begin
        clear;
        writeln (' PROGRAM MENENTUKAN TAHUN KABISAT');
        writeln ('----------------------------------');
        enter;
        write ('Masukkan tahun : '); readln (tahun);
        if (IsLeapYear(tahun)) then
            writeln (tahun, ' merupakan tahun kabisat')
        else
            writeln (tahun, ' bukan merupakan tahun kabisat');
        enter;
        write ('Lagi? (YES/NO) : '); readln(answer); answer := upcase(answer);
        if (answer = 'Y') then
            main;
    end;

//menu daftar akun
procedure register;
    begin
        writeln ('Nama Depan :'); readln (Akun[i].NamaDepan);
        writeln ('Nama Belakang :'); readln (Akun[i].NamaBelakang);
        writeln ('No. HP :'); readln (Akun[i].NoHP);
        for j := 1 to 32767 do
            begin
                for k := 1 to limit do
                    begin
                        while (Akun[i].NoHP = Akun[k].NoHP) and (i<>k) do
                            begin
                                writeln ('Nomor telah digunakan di akun lain. Coba nomor lain.');
                                writeln ('No. HP :'); readln (Akun[i].NoHP);
                            end;
                    end;
            end;
        writeln ('Email :'); readln (Akun[i].email); Akun[i].email := Lowercase(Akun[i].email);
        for j := 1 to 32767 do
            begin
                for k := 1 to limit do
                    begin
                        while (Akun[i].email = Akun[k].email) and (i<>k) do
                            begin
                                writeln ('email telah digunakan di akun lain. Coba email lain.');
                                writeln ('email :'); readln (Akun[i].email);
                            end;
                    end;
            end;
        writeln ('Buat Username baru :'); readln (Akun[i].username); Akun[i].username := LowerCase(Akun[i].username);
        for j := 1 to 32767 do
            begin
                for k := 1 to limit do
                    begin
                        while (Akun[i].username = Akun[k].username) and (i<>k) do
                            begin
                                writeln ('username telah digunakan di akun lain. Coba username lain.');
                                writeln ('username :'); readln (Akun[i].username);
                            end;
                    end;
            end;
        writeln ('Buat Password baru :'); readln (Akun[i].password);
        writeln ('Konfirmasi Ulang Password :'); readln (Akun[i].Kpassword);
        while (Akun[i].Kpassword <> Akun[i].password) do
            begin
                clear;
                writeln ('Password tidak sesuai. Coba lagi');
                writeln ('Buat Password baru :'); readln (Akun[i].password);
                writeln ('Konfirmasi Ulang Password :'); readln (Akun[i].Kpassword);
            end;
        ptr := @Akun[i];
        alamat := addr(ptr);
        Write ('Pendaftaran akun berhasil. ');
        writeln ('Data akun anda tersimpan di dalam memori nomor "', alamat^, '".');
        writeln ('Harap ingat semua informasi yang anda gunakan saat mendaftar.');
        write ('Tekan Enter untuk masuk ke menu LOGIN.'); readln;
    end;

// menampilkan semua informasi akun
procedure show;
    begin
        with (Akun[j]) do
            begin
                writeln ('Nama Depan: ');
                writeln (NamaDepan);
                enter;
                writeln ('Nama Belakang: ');
                writeln (NamaBelakang);
                enter;
                writeln ('Nomor HP: ');
                writeln (NoHP);
                enter;
                writeln ('Email: ');
                writeln (email);
                enter;
                writeln ('Username: ');
                writeln (username);
                enter;
                writeln ('Tempat, Tanggal Lahir: ');
                writeln (tempat, ', ', tanggal.hari, '/', tanggal.bulan, '/', tanggal.tahun);
                enter;
            end;
    end;

//mengedit data akun
procedure edit;
    var
        l : integer; //perulangan lokal
    begin
        clear;
        writeln ('Nama Depan :'); readln (Akun[j].NamaDepan);
        writeln ('Nama Belakang :'); readln (Akun[j].NamaBelakang);
        writeln ('No. HP :'); readln (Akun[j].NoHP);
        for l := 1 to 32767 do //mencegah no hp yang sama sampai 32767 kali percobaan
            begin
                for k := 1 to limit do
                    begin
                        while (Akun[j].NoHP = Akun[k].NoHP) and (j<>k) do
                            begin
                                writeln ('Nomor telah digunakan di akun lain. Coba nomor lain.');
                                writeln ('No. HP :'); readln (Akun[j].NoHP);
                            end;
                    end;
            end;
        writeln ('Email :'); readln (Akun[j].email); Akun[j].email := Lowercase(Akun[j].email);
        for l := 1 to 32767 do //mencegah email yang sama sampai 32767 kali percobaan
            begin
                for k := 1 to limit do
                    begin
                        while (Akun[j].email = Akun[k].email) and (j<>k) do
                            begin
                                writeln ('email telah digunakan di akun lain. Coba email lain.');
                                writeln ('email :'); readln (Akun[j].email);
                            end;
                    end;
            end;
        writeln ('Buat Username baru :'); readln (Akun[j].username); Akun[j].username := LowerCase(Akun[j].username);
        for l := 1 to 32767 do //mencegah username yang sama sampai 32767 kali percobaan
            begin
                for k := 1 to limit do
                    begin
                        while (Akun[j].username = Akun[k].username) and (j<>k) do
                            begin
                                writeln ('username telah digunakan di akun lain. Coba username lain.');
                                writeln ('username :'); readln (Akun[j].username);
                            end;
                    end;
            end;
        writeln ('Tempat Lahir :'); readln (Akun[j].tempat);
        writeln ('Tanggal Lahir :');
        writeln ('Tanggal Lahir (DD) :'); readln (Akun[j].tanggal.hari);
        writeln ('Bulan Lahir (MM):'); readln (Akun[j].tanggal.bulan);
        writeln ('Tahun Lahir (YYYY):'); readln (Akun[j].tanggal.tahun);
    end;

//mengubah password
procedure password;
    begin
        repeat
        clear;
            writeln ('Masukkan Password Lama : '); readln (login.password);
        until (login.password = Akun[j].password);
        writeln ('Buat Password baru :'); readln (Akun[j].password);
        writeln ('Konfirmasi Ulang Password :'); readln (Akun[j].Kpassword);
        while (Akun[j].Kpassword <> Akun[j].password) do
            begin
                clear;
                writeln ('Password tidak sesuai. Coba lagi.');
                writeln ('Buat Password baru :'); readln (Akun[j].password);
                writeln ('Konfirmasi Ulang Password :'); readln (Akun[j].Kpassword);
            end;
    end;

//menu profil  
procedure profil;
    var
        jawaban : string;
    begin
        clear;
        show;
        writeln ('ketik "EDIT" untuk melengkapi/mengubah profil anda.');
        writeln ('ketik "BACK" untuk kembali ke Tampilan Utama.');
        readln (jawaban); jawaban := upcase(jawaban);
        if (jawaban = 'EDIT') then
            edit
        else if (jawaban = 'BACK') then
            exit;
        profil;      
    end;


// tampilan home setelah login
procedure system;
    var
        jawaban : string;
    begin
        repeat
        clear;
        writeln ('Selamat datang, ', upcase(Akun[j].NamaDepan), ' ', upcase(Akun[j].NamaBelakang));
        writeln ('----------------------------------------------------------------');
        enter;
        writeln ('Ketik "MAIN" untuk masuk ke program utama');
        writeln ('Ketik "PROFIL" untuk melihat profil anda.');
        writeln ('ketik "PASSWORD" untuk mengubah password anda.');
        writeln ('Ketik "LOGOUT" untuk keluar dan kembali ke menu utama.');
        readln (jawaban); jawaban := upcase (jawaban);
        if (jawaban = 'MAIN') then
            main
        else if (jawaban = 'PROFIL') then
            profil
        else if (jawaban = 'PASSWORD') then
            password;
        until (jawaban = 'LOGOUT');
        clear;
    end;

//login akun
procedure log_in;
    begin
        writeln ('Username/email/No. HP :'); readln (login.username); login.username := Lowercase(login.username);
        for j := 1 to limit do
            begin
                if ((j = limit) and (login.username <> Akun[j].username) and (login.username <> Akun[j].email) and (login.username <> Akun[j].NoHP)) or (login.username = '') then
                    begin
                        clear;
                        writeln ('Akun tidak ditemukan. Tekan enter untuk kembali ke menu utama.');
                        readln;
                        clear;
                        exit;
                    end;
                if (login.username = Akun[j].username) or (login.username = Akun[j].email) or (login.username = Akun[j].NoHP) then
                    begin
                        repeat
                            writeln ('Password : '); readln (login.password);
                        until (login.password = Akun[j].password);
                        system;
                        break;
                    end;
            end;
    end;

//program utama
begin
    clear;
    //akun admin
    akun[51].username := 'andreasmlbngaol';
    akun[51].password := 'Dre2310';
    for i := 1 to limit do
        begin
            home : writeln ('~Selamat Datang di Program Prototype Website~');
            writeln ('---------------------------------------------');
            enter;
            if (i <> limit) then
                writeln ('Ketik "REGISTER" untuk daftar akun baru.');
            writeln ('Ketik "LOGIN" untuk masuk.');
            writeln ('Ketik "CLOSE" untuk menutup program.');
            enter;
            readln (menu); menu := upcase(menu);
            clear;
            if (menu = 'REGISTER') then
                begin
                    register;
                    clear;
                    log_in;
                end
            else if (menu = 'LOGIN') then
                begin
                    log_in;
                    goto home;
                end
            else if (menu = 'CLOSE') then
                begin
                    writeln ('Terima Kasih.');
                    readln;
                    halt;
                end
            else
                begin
                    writeln ('Input Salah. Coba Lagi.');
                    goto home;
                end;
        end;
end.