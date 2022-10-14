program Tugas1_Soal_1;
uses crt;
var
    a,b,c : integer;

begin
    clrscr;
    write ('Masukkan Nilai 1 : '); readln (a);
    write ('Masukkan Nilai 2 : '); readln (b);
    write ('Masukkan Nilai 3 : '); readln (c);
    if (a<b) and (b<c) then
        writeln ('Urutan : ', a,' ',b,' ',c)
    else if (a<c) and (c<b) then
        writeln ('Urutan : ',a,' ',c,' ',b)
    else if (b<a) and (a<c) then
        writeln ('Urutan : ',b,' ',a,' ',c)
    else if (b<c) and (c<a) then
        writeln ('Urutan : ',b,' ',c,' ',a)
    else if (c<a) and (a<b) then
        writeln ('Urutan : ',c,' ',a,' ',b)
    else
        writeln ('Urutan : ',c,' ',b,' ',a);
    readln;
end.
