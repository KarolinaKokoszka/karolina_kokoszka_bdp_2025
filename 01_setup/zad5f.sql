-- f) Wyświetl imię i nazwisko pracowników oraz liczbę ich nadgodzin, przyjmując, iż standardowy czas pracy to 160h
SELECT pr.imie, pr.nazwisko, GREATEST(SUM(godz.liczba_godzin) - 160, 0) AS nadgodziny
FROM ksiegowosc.pracownicy pr
JOIN ksiegowosc.godziny godz ON pr.id_pracownika = godz.id_pracownika
GROUP BY pr.imie, pr.nazwisko;
