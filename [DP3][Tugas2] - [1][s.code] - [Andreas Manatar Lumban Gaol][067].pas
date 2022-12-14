uses crt;
var
    NIM: array [1..10] of string[3];
    n: integer;
    i: integer;

begin
    clrscr;
    write ('Masukkan jumlah mahasiswa : '); readln (n);
    for i := 1 to n do 
        begin
            write ('Masukkan 3 digit NIM terakhir mahasiswa [', i, '] : '); readln (NIM[i]);
        end;
    writeln('-------------------------------------------------------------');
    write ('Urutan antrian : ');
    for i := n downto 1 do
        begin
            write (NIM[i]);
            if (i <> 1) then
                write (' , ');
        end;
    readln;
end.