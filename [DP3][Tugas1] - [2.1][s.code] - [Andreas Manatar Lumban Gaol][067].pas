program Tugas1_Soal_2_ELSE_IF;
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
if (kode = 'M01') then
    writeln ('Nasi Goreng harganya Rp. 15.000')
else if (kode = 'M02') then
    writeln ('Ayam Penyet harganya Rp. 13.000')
else if (kode = 'M03') then
    writeln ('Ayam Geprek harganya Rp. 12.000')
else if (kode = 'M04') then
    writeln ('Ayam Bakar harganya Rp. 14.000')
else if (kode = 'M05') then
    writeln ('Ikan Bakar harganya Rp. 16.000')
else if (kode = 'M06') then
    writeln ('Ikan Arsik harganya Rp. 18.000')
else
    writeln ('Menu tidak tersedia');
readln;
end.