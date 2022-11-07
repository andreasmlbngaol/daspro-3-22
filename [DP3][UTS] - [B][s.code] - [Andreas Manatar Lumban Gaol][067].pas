program menentukan_kuadran;
uses crt;
var 
    x : integer;
    y : integer;
    kuadran : string;
label a;

begin
    clrscr;
    write ('Masukkan koordinat x : '); readln (x);
    write ('Masukkan koordinat y : '); readln (y);
    writeln ('-------------------------------------------'); //border
    if (x >= -1000) and (x <= 1000) and (y >= -1000) and (y <= 1000) then
        begin
        if (x > 0) and (y > 0) then
            kuadran := '1'
        else if (x < 0) and (y > 0) then
            kuadran := '2'
        else if (x < 0) and (y < 0) then
            kuadran := '3'
        else if (x > 0) and (y < 0) then
            kuadran := '4'
        else
            begin
                writeln ('(', x, ',', y, ') tidak terletak di kuadran manapun');
                goto a;
            end;
        end
    else
        halt;
    writeln ('(', x, ',', y, ') terletak di kuadran ', kuadran);
    a : writeln ('-------------------------------------------'); //border
    readln;
end.