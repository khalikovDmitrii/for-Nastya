program zadanie3;
var
    x, n, i, f: integer;
    a: array[1..100] of integer;
begin
    write('Введите N: '); 
    readln(n);
    
    if n <= 0 then begin
        writeln('N должно быть от 1 до 100');
        exit;
    end;
        
    if n > 100 then begin
        writeln('N должно быть от 1 до 100');
        exit;
    end;
    
    write('Введите модуль значения X (диапазон): ');
    readln(x);
        
    if x > 100 then begin
        writeln('X должен быть до 100');
        exit;
    end;
    
    randomize;
    for i:= 1 to n do
        a[i]:= random(x + x + 1) - x;
        
    write('Исходный массив: ');
    for i:= 1 to n do
        write(a[i]:4);
    writeln;
    
    f:= 0;
    
    writeln('Элементы после обработки массива: ');
    for i:= 1 to n do begin
        if abs(a[i]) >= 10 then begin
            if (abs(a[i]) mod 10 + abs(a[i]) div 10) > (abs(a[i]) mod 10 * abs(a[i]) div 10) then begin
                writeln(a[i]);
                f:= f + 1;
            end
            else if f = 0 then begin
                writeln('Не найдено');
            end;
        end;
    end;
        
end.
