-- c) Wyświetl id pracowników nieposiadających premii, których płaca jest większa niż 2000.  
SELECT wy.id_pracownika
FROM ksiegowosc.wynagrodzenie wy 
JOIN ksiegowosc.pensja pe ON wy.id_pensji = pe.id_pensji
WHERE pe.kwota > 2000 AND wy.id_premii IS NULL;
