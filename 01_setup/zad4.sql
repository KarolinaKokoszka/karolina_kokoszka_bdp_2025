-- Pracownicy
INSERT INTO ksiegowosc.pracownicy (imie, nazwisko, adres, telefon) VALUES
('Jan', 'Kowalski', 'Warszawa, ul. Kwiatowa 12', '600111222'),
('Anna', 'Nowak', 'Kraków, ul. Lipowa 5', '601222333'),
('Piotr', 'Wiśniewski', 'Łódź, ul. Długa 8', '602333444'),
('Katarzyna', 'Wójcik', 'Gdańsk, ul. Krótka 9', '603444555'),
('Tomasz', 'Lewandowski', 'Poznań, ul. Polna 11', '604555666'),
('Ewa', 'Zielińska', 'Wrocław, ul. Leśna 6', '605666777'),
('Adam', 'Szymański', 'Szczecin, ul. Parkowa 3', '606777888'),
('Magdalena', 'Lewandowska', 'Lublin, ul. Wąska 2', '607888999'),
('Mikołaj', 'Pawlak', 'Katowice, ul. Brzozowa 7', '608999000'),
('Joanna', 'Michalska', 'Bydgoszcz, ul. Spacerowa 15', '609000111');s

-- Godziny
INSERT INTO ksiegowosc.godziny (data, liczba_godzin, id_pracownika) VALUES
('2025-10-01', 8, 1),
('2025-10-01', 7.5, 2),
('2025-10-01', 8, 3),
('2025-10-02', 6, 4),
('2025-10-02', 8, 5),
('2025-10-03', 8, 6),
('2025-10-03', 7, 7),
('2025-10-04', 8, 8),
('2025-10-04', 8, 9),
('2025-10-04', 6.5, 10);

-- Pensja
INSERT INTO ksiegowosc.pensja (stanowisko, kwota) VALUES
('Księgowy', 6200.00),
('Asystent', 1900.00),
('Specjalista HR', 6800.00),
('Dyrektor', 9500.00),
('Magazynier', 5500.00),
('Kierownik', 5500.00),
('Sekretarka', 5500.00),
('Analityk', 8000.00),
('Programista', 8000.00),
('Stażysta', 900.00);

-- Premia
INSERT INTO ksiegowosc.premia (rodzaj, kwota) VALUES
('Kwartalna', 200.00),
('Uznaniowa', 300.00),
('Wydajność', 500.00),
('Za nadgodziny', 450.00),
('Roczna', 1200.00),
('Świąteczna', 800.00),
('Motywacyjna', 600.00),
('Nowy projekt', 1000.00),
('Specjalna', 1500.00),
('Supervisor', 400.00);

-- Wynagrodzenie
INSERT INTO ksiegowosc.wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2025-10-05', 1, 1, 1, 2),
('2025-10-05', 2, 2, 2, NULL),
('2025-10-05', 3, 3, 3, 1),
('2025-10-06', 4, 4, 4, 4),
('2025-10-06', 5, 5, 5, 1),
('2025-10-06', 6, 6, 6, NULL),
('2025-10-07', 7, 7, 7, 2),
('2025-10-07', 8, 8, 8, 6),
('2025-10-08', 9, 9, 9, 8),
('2025-10-08', 10, 10, 10, 9);

