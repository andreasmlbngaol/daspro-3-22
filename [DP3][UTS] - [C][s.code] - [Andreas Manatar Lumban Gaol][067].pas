program jam_pasir;
uses crt;
var
    i,n,j : integer;

begin
    clrscr;
    write ('Masukkan bilangan bulat antara 2 sampai 20 : '); readln (n);
    for i := 1 to 2*n - 1 do //border
        write ('-');
        writeln;
    for i := n downto 1 do
        begin
            for j := i to n-1 do
                write (' ');
            for j := i downto 1 do
                write ('* ');
            writeln;
        end;
    for i := 2 to n do
        begin
            for j := n downto i+1 do
                write (' ');
            for j := 1 to i do
                write ('* ');
            writeln;
        end;
    for i := 1 to 2*n - 1 do //border
        write ('-');
        writeln;
    readln;
end.