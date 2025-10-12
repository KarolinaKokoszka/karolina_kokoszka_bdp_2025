-- k) Zlicz i pogrupuj pracowników według pola ‘stanowisko’.  
SELECT pe.stanowisko, COUNT(DISTINCT wy.id_pracownika) AS liczba_pracownikow
FROM ksiegowosc.wynagrodzenie wy 
JOIN ksiegowosc.pensja pe ON wy.id_pensji = pe.id_pensji
GROUP BY pe.stanowisko;