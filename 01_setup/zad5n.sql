-- n) Policz sumę wynagrodzeń w ramach danego stanowiska.  
SELECT pe.stanowisko, SUM(pe.kwota + COALESCE(pr.kwota, 0)) AS suma_wynagrodzen
FROM ksiegowosc.wynagrodzenie wy
JOIN ksiegowosc.pensja pe ON wy.id_pensji = pe.id_pensji
LEFT JOIN ksiegowosc.premia pr ON wy.id_premii = pr.id_premii
GROUP BY pe.stanowisko;