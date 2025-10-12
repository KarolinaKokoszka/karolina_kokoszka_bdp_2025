-- p) Usuń wszystkich pracowników mających pensję mniejszą niż 1200 zł.
DELETE FROM ksiegowosc.pracownicy
WHERE id_pracownika IN (
    SELECT pr.id_pracownika
    FROM ksiegowosc.pracownicy pr
    JOIN ksiegowosc.wynagrodzenie wy ON pr.id_pracownika = wy.id_pracownika
    JOIN ksiegowosc.pensja pe ON wy.id_pensji = pe.id_pensji
    WHERE pe.kwota < 1200
);
