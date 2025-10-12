-- m) Policz sumę wszystkich wynagrodzeń.  
SELECT SUM(pe.kwota + COALESCE(pr.kwota, 0)) AS suma_wynagrodzen
FROM ksiegowosc.wynagrodzenie wy
JOIN ksiegowosc.pensja pe ON wy.id_pensji = pe.id_pensji
LEFT JOIN ksiegowosc.premia pr ON wy.id_premii = pr.id_premii;