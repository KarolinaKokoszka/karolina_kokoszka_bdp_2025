-- i) Uszereguj pracowników według pensji. 
SELECT pr.imie, pr.nazwisko, pe.kwota
FROM ksiegowosc.pracownicy pr
JOIN ksiegowosc.wynagrodzenie wy ON pr.id_pracownika = wy.id_pracownika
JOIN ksiegowosc.pensja pe ON wy.id_pensji = pe.id_pensji
ORDER BY pe.kwota ASC;