-- h) Wyświetl imię i nazwisko pracowników, którzy pracowali w nadgodzinach i nie otrzymali premii.
SELECT pr.imie, pr.nazwisko
FROM ksiegowosc.pracownicy pr
JOIN ksiegowosc.godziny godz ON pr.id_pracownika = godz.id_pracownika
JOIN ksiegowosc.wynagrodzenie wy ON pr.id_pracownika = wy.id_pracownika
GROUP BY pr.imie, pr.nazwisko,wy.id_premii
HAVING SUM(godz.liczba_godzin) > 160 AND wy.id_premii IS NULL;
