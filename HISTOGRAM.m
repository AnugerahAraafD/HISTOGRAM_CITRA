% Anugerah A'raaf Disman
% 200209500014
% PTIK B

% MATRIKS
Data = [1 2 1 1, 3 3 4 7, 2 1 1 7];

% HISTOGRAM
[kolom, baris] = size(Data);
Histogram = zeros(1,7);

for x = 1 : kolom
    for y = 1 : baris
        a = Data(x,y);
        Histogram(a) = Histogram(a) + 1;
    end
end

figure(1)
bar(Histogram)
axis([0 8 0 8])
grid on

% KOMULATIF
Komulatif = zeros(1,7);
for b = 1 : 7
    Komulatif(b) = sum(Histogram(1:b));
end

figure(2)
bar(Komulatif)
axis([0 8 0 kolom*baris])
grid on

% EQUALISASI
Equalisasi = zeros(1,7);
for c = 1 : 7
    Equalisasi(c) = round(Komulatif(c)* 7 / (kolom*baris));
end

figure(3)
bar(Equalisasi)
axis([0 8 0 kolom*baris])
grid on
