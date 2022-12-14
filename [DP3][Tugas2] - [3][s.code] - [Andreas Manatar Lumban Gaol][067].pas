uses crt;
type
    tanggal = record
    hari : byte;
    bulan : byte;
    month : string;
    tahun : integer;
    end;

    biodata = record
    nama : string;
    nim : string;
    alamat : string;
    no : string;
    tempat : string;
    t : tanggal;
    end;

var
    data : array [1..10] of biodata;
    n : integer;
    i : integer;

begin
    clrscr;
    write ('Masukkan jumlah mahasiswa : '); readln (n);
    for i := 1 to n do
        begin
            writeln ('Mahasiswa ', i);
            writeln ('-------------------------------------------------');
            write ('Masukkan nama   : '); readln (data[i].nama);
            write ('Masukkan NIM    : '); readln (data[i].nim);
            write ('Masukkan alamat : '); readln (data[i].alamat);
            write ('Masukkan No. HP : '); readln (data[i].no);
            write ('Masukkan Tempat Lahir : '); readln (data[i].tempat);
            writeln ('Tanggal Lahir');
            write ('Tanggal : '); readln (data[i].t.hari);
            write ('Bulan   : '); readln (data[i].t.bulan);
            case (data[i].t.bulan) of
                1 : data[i].t.month := 'Januari';
                2 : data[i].t.month := 'Februari';
                3 : data[i].t.month := 'Maret';
                4 : data[i].t.month := 'April';
                5 : data[i].t.month := 'Mei';
                6 : data[i].t.month := 'Juni';
                7 : data[i].t.month := 'Juli';
                8 : data[i].t.month := 'Agustus';
                9 : data[i].t.month := 'September';
                10 : data[i].t.month := 'Oktober';
                11 : data[i].t.month := 'November';
                12 : data[i].t.month := 'Desember';
            end;
            write ('Tahun   : '); readln (data[i].t.tahun);
            clrscr;
        end;
    for i := 1 to n do
        begin
            writeln ('Mahasiswa ', i);
            writeln ('-------------------------------------------------');
            with data[i] do
                begin
                    writeln ('Nama   : ', nama);
                    writeln ('NIM    : ', nim);
                    writeln ('alamat : ', alamat);
                    writeln ('No. HP : ', no);
                    writeln ('TTL    : ', tempat, ', ', t.hari, ' ', t.month, ' ', t.tahun);
                    if (i <> n) then
                        write ('Tekan enter untuk melihat data mahasiswa selanjutnya ...')
                    else
                        write ('Tekan enter untuk selesai');
                    readln;
                    clrscr;
                end;
        end;
end.