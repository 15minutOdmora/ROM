#1. Naloga
podatki = dlmread('kolokviji.csv', ',')
vsota = sum(podatki, 2)
povprecje = mean(podatki, 2)
ocene = izracunaj_oceno(povprecje)
zaporedje = (1:length(ocene))'
rezultat = [zaporedje, podatki, vsota, povprecje, ocene]
dlmwrite('rezultati.csv', rezultat, ',')
disp('Tip rezultata')
class(rezultat)
disp('Tipi stolpcev')
class(podatki)
class(vsota)
class(povprecje)
class(zaporedje)
class(ocene)
povprecje = round(mean(podatki, 2))
ocene = izracunaj_oceno(povprecje)
rezultat = [zaporedje, podatki, vsota, povprecje, ocene]

dlmwrite('rezultati_celi.csv', rezultat, ',')

#.................................................

#2.Naloga
pkg install -forge io
pkg install -forge statistics
pkg load statistics

frekvence = tabulate(ocene)

class(frekvence)

bar(6:10, frekvence(6:10, 3))

slika = figure()
bar(6:10, frekvence(6:10, 3), 'facecolor', 'r', 'edgecolor', 'b')
title('Porazdelitev ocen kolokvija')
xlabel ("Ocene");
ylabel ("Stevilo studentov");
text (10, 10, "Bravo!");
print(slika, 'slika.pdf')

#...........................................................................

#3. Naloga
A=narascujoca(4)

#...........................................................................

#4. Naloga
ali_je_sedlo(A,1,1)
stevilo_sedel(A)
stevilo_sedel2(A)
cas1_zacetek = tic; stevilo_sedel(A); cas1_konec = toc;
cas2_zacetek = tic; stevilo_sedel2(A); cas2_konec = cas2 = toc;
razlika_casov = (cas1_konec - cas1_zacetek) - (cas2_konec - cas2_zacetek)

#..........................................................................

#5. Naloga
rotacija(phi)

a=[-3:3]
b=a.^3
T=[a;b]