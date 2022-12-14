uses crt;

var
    bilangan : integer;
    selisih : integer;
    beda : array [1..10] of integer;
    i, n : integer;

function deret_a (x : integer): integer;
    begin
        if (x > 2) then
            beda [x] := beda [x-2] + beda [x-1];
        bilangan := bilangan + beda [x];
    end;

function deret_b : integer;
    begin
        bilangan := bilangan * 2;
    end;

function deret_c (x : integer): integer;
    begin
        sqr (x);
    end;

function deret_d : integer;
    begin
        bilangan := bilangan + selisih;
        selisih := selisih + 2;
    end;

begin
    clrscr;
    write ('Masukkan jumlah perulangan : '); readln (n);
    writeln;
    
    //a
    bilangan := 1;
    beda [1] := 0;
    beda [2] := 1;
    for i := 1 to n do
        begin
            write (bilangan);
            if (i <> n) then
                write (' , ');
            deret_a(i);
        end;
    writeln;

    //b
    bilangan := 1;
    for i := 1 to n do
        begin
            write (bilangan);
            if (i <> n) then
                write (' , ');
            deret_b;
        end;
    writeln;

    //c
    bilangan := 1;
    for i := 1 to n do
        begin
            write (deret_c (i));
            if (i <> n) then
                write (' , ');
        end;
    writeln;

    //d
    bilangan := 2;
    selisih := 4;
    for i := 1 to n do
        begin
            write (bilangan);
            if (i <> n) then
                write (' , ');
            deret_d;
        end;
    readln;
end.