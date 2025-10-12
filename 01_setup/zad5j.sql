-- j) Uszereguj pracowników według pensji i premii malejąco.  
SELECT pr.imie, pr.nazwisko, pe.kwota AS pensja, prem.kwota AS premia
FROM ksiegowosc.pracownicy pr
JOIN ksiegowosc.wynagrodzenie wy ON pr.id_pracownika = wy.id_pracownika
JOIN ksiegowosc.pensja pe ON wy.id_pensji = pe.id_pensji
LEFT JOIN ksiegowosc.premia prem ON wy.id_premii = prem.id_premii
ORDER BY pe.kwota DESC, COALESCE(prem.kwota, 0) DESC;
