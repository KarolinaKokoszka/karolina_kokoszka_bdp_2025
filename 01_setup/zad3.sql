-- 1. Tabela: pracownicy
CREATE TABLE ksiegowosc.pracownicy (
    id_pracownika SERIAL PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    adres VARCHAR(100),
    telefon VARCHAR(15)
);

COMMENT ON TABLE ksiegowosc.pracownicy IS 'Tabela przechowuje dane o pracownikach firmy.';
COMMENT ON COLUMN ksiegowosc.pracownicy.id_pracownika IS 'Klucz główny pracownika';
COMMENT ON COLUMN ksiegowosc.pracownicy.imie IS 'Imię pracownika';
COMMENT ON COLUMN ksiegowosc.pracownicy.nazwisko IS 'Nazwisko pracownika';
COMMENT ON COLUMN ksiegowosc.pracownicy.adres IS 'Adres zamieszkania pracownika';
COMMENT ON COLUMN ksiegowosc.pracownicy.telefon IS 'Numer telefonu pracownika';



-- 2. Tabela: godziny
CREATE TABLE ksiegowosc.godziny (
    id_godziny SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    liczba_godzin NUMERIC(4,2) NOT NULL,
    id_pracownika INT REFERENCES ksiegowosc.pracownicy(id_pracownika) ON DELETE CASCADE
);

COMMENT ON TABLE ksiegowosc.godziny IS 'Tabela przechowuje informacje o przepracowanych godzinach.';
COMMENT ON COLUMN ksiegowosc.godziny.id_godziny IS 'Klucz główny godzin';
COMMENT ON COLUMN ksiegowosc.godziny.data IS 'Data';
COMMENT ON COLUMN ksiegowosc.godziny.liczba_godzin IS 'Liczba przepracowanych godzin';
COMMENT ON COLUMN ksiegowosc.godziny.id_pracownika IS 'Powiązanie z pracownikiem';



-- 3. Tabela: pensja
CREATE TABLE ksiegowosc.pensja (
    id_pensji SERIAL PRIMARY KEY,
    stanowisko VARCHAR(50) NOT NULL,
    kwota NUMERIC(10,2) CHECK (kwota >= 0)
);

COMMENT ON TABLE ksiegowosc.pensja IS 'Tabela przechowuje informacje o wynagrodzeniu wg stanowiska.';
COMMENT ON COLUMN ksiegowosc.pensja.id_pensji IS 'Klucz główny pensji';
COMMENT ON COLUMN ksiegowosc.pensja.stanowisko IS 'Stanowisko pracownika';
COMMENT ON COLUMN ksiegowosc.pensja.kwota IS 'Kwota wynagrodzenia';



-- 4. Tabela: premia
CREATE TABLE ksiegowosc.premia (
    id_premii SERIAL PRIMARY KEY,
    rodzaj VARCHAR(50)NOT NULL,
    kwota NUMERIC(10,2) NOT NULL
);

COMMENT ON TABLE ksiegowosc.premia IS 'Tabela przechowuje dane o premiach.';
COMMENT ON COLUMN ksiegowosc.premia.id_premii IS 'Klucz główny premii';
COMMENT ON COLUMN ksiegowosc.premia.rodzaj IS 'Rodzaj przyznanej premii';
COMMENT ON COLUMN ksiegowosc.premia.kwota IS 'Kwota premii';


-- 5. Tabela: wynagrodzenie
CREATE TABLE ksiegowosc.wynagrodzenie (
    id_wynagrodzenia SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    id_pracownika INT REFERENCES ksiegowosc.pracownicy(id_pracownika) ON DELETE CASCADE,
    id_godziny INT REFERENCES ksiegowosc.godziny(id_godziny) ON DELETE SET NULL,
    id_pensji INT REFERENCES ksiegowosc.pensja(id_pensji) ON DELETE SET NULL,
    id_premii INT REFERENCES ksiegowosc.premia(id_premii) ON DELETE SET NULL
);

COMMENT ON TABLE ksiegowosc.wynagrodzenie IS 'Tabela łączy dane pracowników z ich przepracowanymi godzinami, pensjami i premiami.';
COMMENT ON COLUMN ksiegowosc.wynagrodzenie.id_wynagrodzenia IS 'Klucz główny wynagrodzen';
COMMENT ON COLUMN ksiegowosc.wynagrodzenie.data IS 'Data wypłaty';
COMMENT ON COLUMN ksiegowosc.wynagrodzenie.id_pracownika IS 'Powiązanie z pracownikiem';
COMMENT ON COLUMN ksiegowosc.wynagrodzenie.id_godziny IS 'Powiązanie z przepracowanymi godzinami';
COMMENT ON COLUMN ksiegowosc.wynagrodzenie.id_pensji IS 'Powiązanie z pensją';
COMMENT ON COLUMN ksiegowosc.wynagrodzenie.id_premii IS 'Powiązanie z premią';
