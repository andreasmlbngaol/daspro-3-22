program uts_1;
uses crt, math;
var
    atap : integer;
    sudut : integer;
    tangga : real;
    sudut_rad : real;
    sinus : real;
const rad = 0.0174533;

begin
    clrscr;
    write ('Masukkan tinggi atap rumah anda (cm)           : '); readln (atap);
    write ('Masukkan sudut tangga terhadap tanah (derajat) : '); readln (sudut);
    if (atap >= 1) and (atap <= 10000) and (sudut >= 1) and (sudut <= 89) then
        begin
            writeln ('----------------------------------------------------------------'); //border
            sudut_rad := sudut * rad;
            sinus := sin(sudut_rad);
            tangga := ceil(atap / sinus);
            writeln ('Panjang tangga minimal yang diperlukan adalah ', tangga:1:0, ' cm');
            writeln ('----------------------------------------------------------------'); // border
        end
    else
        halt;
    readln;
end.