program Tugas1_Soal_3;

uses crt;

var
    
    huruf : string;
    u_huruf : string;


begin

    clrscr;
    write ('Masukkan huruf : '); readln(huruf);
    u_huruf := upcase (huruf);

    writeln ('---------------------------');

    case u_huruf of
    'A','I','U','E','O' : writeln (huruf, ' merupakan huruf vokal');         'B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Y','Z' : writeln (huruf, ' merupakan huruf konsonan');

    else

        writeln (huruf, ' bukan merupakan huruf')

    end;

    readln;

end.