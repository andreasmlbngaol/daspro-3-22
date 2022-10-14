program Tugas1_Soal_2_CASE;
uses crt;
var
    kode : string;

begin
    clrscr;
    writeln ('Kode      Nama Makanan        Harga');
    writeln ('M01       Nasi Goreng         Rp. 15.000');
    writeln ('M02       Ayam Penyet         Rp. 13.000');
    writeln ('M03       Ayam Geprek         Rp. 12.000');
    writeln ('M04       Ayam Bakar          Rp. 14.000');
    writeln ('M05       Ikan Bakar          Rp. 16.000');
    writeln ('M06       Ikan Arsik          Rp. 18.000');
    write ('Masukkan kode makanan --> '); readln (kode);
    kode := upcase (kode);
    writeln('-----------------------------------------');
    case kode of
    'M01' : writeln ('Nasi Goreng harganya Rp. 15.000');
    'M02' : writeln ('Ayam Penyet harganya Rp. 13.000');
    'M03' : writeln ('Ayam Geprek harganya Rp. 12.000');
    'M04' : writeln ('Ayam Bakar harganya Rp. 14.000');
    'M05' : writeln ('Ikan Bakar harganya Rp. 16.000');
    'M06' : writeln ('Ikan Arsik harganya Rp. 18.000');
    else
        writeln ('Menu tidak tersedia')
    end;
    readln;
end.