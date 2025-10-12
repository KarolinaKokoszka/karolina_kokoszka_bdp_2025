-- b) Wyświetl id pracowników, których płaca jest większa niż 1000. 
SELECT pr.id_pracownika
FROM ksiegowosc.pracownicy pr
JOIN ksiegowosc.wynagrodzenie wy ON pr.id_pracownika = wy.id_pracownika
JOIN ksiegowosc.pensja pe ON wy.id_pensji = pe.id_pensji
WHERE pe.kwota > 1000;
 
