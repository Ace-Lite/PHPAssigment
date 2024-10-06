SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `materialy` (
  `Nazev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `materialy` (`Nazev`) VALUES
('Hliník'),
('Plast'),
('Plech');

CREATE TABLE `produkty` (
  `Nazev` varchar(255) NOT NULL,
  `Kod` varchar(255) NOT NULL,
  `Cena` varchar(255) NOT NULL,
  `Popis` varchar(255) NOT NULL,
  `Urceni` varchar(255) NOT NULL,
  `Material` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `produkty` (`Nazev`, `Kod`, `Cena`, `Popis`, `Urceni`, `Material`) VALUES
('BMW 3 Compact (E46/5) Kryt pod motor', 'MM04456', '5 566', 'Jedinečné plechové kryty od firmy krytypodmotor.cz jsou vyráběny z pevných a odolných materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozi', 'BMW', 'Plech'),
('BMW 3 Kombi (E46) Kryt pod motor', 'MM04456', '5 566', 'Jedinečné plechové kryty od firmy krytypodmotor.cz jsou vyráběny z pevných a odolných materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozi', 'BMW', 'Plech'),
('Kryt diferenciálu a převodovky NISSAN PATHFINDER III (R51)', 'MX00575', '4 480', 'Jedinečné plechové kryty od firmy krytypodmotor.cz jsou vyráběny z pevných a odolných materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozi', 'NISSAN', 'Plech'),
('Kryt pod chladič TOYOTA HILUX VIII Pickup', 'MX03701', '3 680', 'Jedinečné plechové kryty od firmy krytypodmotor.cz jsou vyráběny z pevných a odolných materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozi', 'TOYOTA', 'Plech'),
('Kryt pod motor ABARTH 500 / 595 / 695', 'PM00161', '1 331', 'Plastové kryty od firmy krytypodmotor.cz jsou vyráběny z materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozidla. Každý kryt je důkladně o', 'ABARTH', 'Plast'),
('Kryt pod motor ABARTH 500C / 595C / 695C', 'PM00161', '1 331', 'Plastové kryty od firmy krytypodmotor.cz jsou vyráběny z materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozidla. Každý kryt je důkladně o', 'ABARTH', 'Plast'),
('Kryt pod motor CHEVROLET AVEO / KALOS Hatchback (T200) ', 'MM00762', '3 570', 'Jedinečné plechové kryty od firmy krytypodmotor.cz jsou vyráběny z pevných a odolných materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozi', 'CHEVROLET', 'Plech'),
('Kryt pod motor CHEVROLET AVEO Hatchback', 'MM00762', '3 570', 'Jedinečné plechové kryty od firmy krytypodmotor.cz jsou vyráběny z pevných a odolných materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozi', 'CHEVROLET', 'Plech'),
('Kryt pod motor CITROËN BERLINGO Box', 'MM03809', '4 720', 'Jedinečné plechové kryty od firmy krytypodmotor.cz jsou vyráběny z pevných a odolných materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozi', 'CITROËN', 'Plech'),
('Kryt pod motor CITROËN BERLINGO MULTISPACE MPV I', 'PM00079', '1 210', 'Plastové kryty od firmy krytypodmotor.cz jsou vyráběny z materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozidla. Každý kryt je důkladně o', 'CITROËN', 'Plast'),
('Kryt pod motor DODGE CALIBER', 'MM03811', '4 684', 'Jedinečné plechové kryty od firmy krytypodmotor.cz jsou vyráběny z pevných a odolných materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozi', 'DODGE', 'Plech'),
('Kryt pod motor FORD B-MAX Van (JK) ', 'PM00165', '2 057', 'Plastové kryty od firmy krytypodmotor.cz jsou vyráběny z materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozidla. Každý kryt je důkladně o', 'FORD', 'Plast'),
('Kryt pod motor HONDA CIVIC VII Hatchback', 'MM00640', '3 792', 'Jedinečné plechové kryty od firmy krytypodmotor.cz jsou vyráběny z pevných a odolných materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozi', 'HONDA', 'Plech'),
('Kryt pod motor IVECO DAILY III Bus', 'PM00210', '1 210', 'Plastové kryty od firmy krytypodmotor.cz jsou vyráběny z materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozidla. Každý kryt je důkladně o', 'IVECO', 'Plast'),
('Kryt pod motor JEEP COMPASS (MP, M6)', 'MM03558', '4 812', 'Jedinečné plechové kryty od firmy krytypodmotor.cz jsou vyráběny z pevných a odolných materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozi', 'JEEP', 'Plech'),
('Kryt pod motor MAZDA 3 Hatchback', 'PM00232', '1 331', 'Plastové kryty od firmy krytypodmotor.cz jsou vyráběny z materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozidla. Každý kryt je důkladně o', 'MAZDA', 'Plast'),
('Kryt pod motor PEUGEOT 2008 I (CU_)', 'PM00868', '1 331', 'Plastové kryty od firmy krytypodmotor.cz jsou vyráběny z materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozidla. Každý kryt je důkladně o', 'PEUGEOT', 'Plast'),
('Kryt pod motor SKODA FABIA I Hatchback (6Y2)', 'PM00433', '993', 'Plastové kryty od firmy krytypodmotor.cz jsou vyráběny z materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozidla. Každý kryt je důkladně o', 'ŠKODA', 'Plast'),
('Kryt pod motor SKODA FABIA I Sedan (6Y3)', 'MM03506', '3 898', 'Jedinečné plechové kryty od firmy krytypodmotor.cz jsou vyráběny z pevných a odolných materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozi', 'ŠKODA', 'Plech'),
('Kryt pod motor SMART FORFOUR', 'MM00665', '3 653', 'Jedinečné plechové kryty od firmy krytypodmotor.cz jsou vyráběny z pevných a odolných materiálů nejvyšší jakosti s maximální přesností, tak aby zajistili tu nejlepší ochranu motoru. Všechny kryty jsou vyrobeny pomocí přesného zaměření podvozku daného vozi', 'SMART', 'Plech');

CREATE TABLE `znacky` (
  `Znacka` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `znacky` (`Znacka`) VALUES
('ABARTH'),
('ALFA ROMERO'),
('AUDI'),
('BMW'),
('CHEVROLET'),
('CHRYSLER'),
('CITROËN'),
('CUPRA'),
('DACIA'),
('DAEWOO'),
('DAIHATSU'),
('DODGE'),
('DS'),
('FIAT'),
('FORD'),
('HONDA'),
('HYUNDAI'),
('ISUZU'),
('IVECO'),
('JAGUAR'),
('JEEP'),
('KIA'),
('LADA'),
('LANCIA'),
('LAND ROVER'),
('LEXUS'),
('MAN'),
('MAZDA'),
('MERCEDES-BENZ'),
('MINI'),
('MITSUBISHI'),
('NISSAN'),
('OPEL'),
('PEUGEOT'),
('PORSCHE'),
('RENAULT'),
('SEAT'),
('ŠKODA'),
('SMART'),
('SSANGYONG'),
('SUBARU'),
('SUZUKI'),
('TOYOTA'),
('VOLKSWAGEN'),
('VOLVO');

ALTER TABLE `materialy`
  ADD PRIMARY KEY (`Nazev`);

ALTER TABLE `produkty`
  ADD PRIMARY KEY (`Nazev`),
  ADD KEY `ZnackaForeign` (`Urceni`),
  ADD KEY `MateraiyForeign` (`Material`);

ALTER TABLE `znacky`
  ADD PRIMARY KEY (`Znacka`) USING BTREE;

ALTER TABLE `produkty`
  ADD CONSTRAINT `MateraiyForeign` FOREIGN KEY (`Material`) REFERENCES `materialy` (`Nazev`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ZnackaForeign` FOREIGN KEY (`Urceni`) REFERENCES `znacky` (`Znacka`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;