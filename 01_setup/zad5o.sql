-- o) Wyznacz liczbę premii przyznanych dla pracowników danego stanowiska.  
SELECT pe.stanowisko, COUNT(wy.id_premii) AS liczba_premii
FROM ksiegowosc.wynagrodzenie wy
JOIN ksiegowosc.pensja pe ON wy.id_pensji = pe.id_pensji
GROUP BY pe.stanowisko;