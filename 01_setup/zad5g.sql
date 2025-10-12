-- g) Wyświetl imię i nazwisko pracowników, których pensja zawiera się w przedziale 1500 – 3000 PLN. 
SELECT pr.imie, pr.nazwisko
FROM ksiegowosc.pracownicy pr
JOIN ksiegowosc.wynagrodzenie wy ON pr.id_pracownika = wy.id_pracownika
JOIN ksiegowosc.pensja pe ON wy.id_pensji = pe.id_pensji
WHERE pe.kwota BETWEEN 1500 AND 3000;
