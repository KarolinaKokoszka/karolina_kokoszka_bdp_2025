-- l) Policz średnią, minimalną i maksymalną płacę dla stanowiska ‘kierownik’
SELECT AVG( pe.kwota), MIN( pe.kwota), MAX( pe.kwota)
FROM ksiegowosc.pensja pe
WHERE pe.stanowisko ILIKE 'kierownik';