CREATE TABLE Clienti (
    ID_Client INT PRIMARY KEY,
    Nume VARCHAR(50),
    Adresa VARCHAR(100)
);


CREATE TABLE Furnizori (
    ID_Furnizor INT PRIMARY KEY,
    Nume VARCHAR(50),
    Adresa VARCHAR(100)
);


CREATE TABLE Categorii_Materiale (
    ID_Categorie INT PRIMARY KEY,
    Nume VARCHAR(50),
    Descriere VARCHAR(100)
);


CREATE TABLE Materiale (
    ID_Material INT PRIMARY KEY,
    Nume VARCHAR(50),
    Descriere VARCHAR(100),
    ID_Furnizor INT,
    ID_Categorie INT,
    Pret DECIMAL(10, 2),
    FOREIGN KEY (ID_Furnizor) REFERENCES Furnizori(ID_Furnizor),
    FOREIGN KEY (ID_Categorie) REFERENCES Categorii_Materiale(ID_Categorie)
);


CREATE TABLE Stocuri (
    ID_Stoc INT PRIMARY KEY,
    ID_Material INT,
    Cantitate INT,
    Data_Aprovizionare DATE,
    FOREIGN KEY (ID_Material) REFERENCES Materiale(ID_Material)
);


CREATE TABLE Comenzi (
    ID_Comanda INT PRIMARY KEY,
    ID_Client INT,
    Data_Comanda DATE,
    Data_Livrare DATE,
    FOREIGN KEY (ID_Client) REFERENCES Clienti(ID_Client)
);


CREATE TABLE Detalii_Comenzi (
    ID_Comanda INT,
    ID_Material INT,
    Cantitate INT,
    Pret_Unitar DECIMAL(10, 2),
    FOREIGN KEY (ID_Comanda) REFERENCES Comenzi(ID_Comanda),
    FOREIGN KEY (ID_Material) REFERENCES Materiale(ID_Material),
    PRIMARY KEY (ID_Comanda, ID_Material)
);


CREATE TABLE Angajati (
    ID_Angajat INT PRIMARY KEY,
    Nume VARCHAR(50),
    Departament VARCHAR(50),
    Salariu DECIMAL(10, 2)
);


CREATE TABLE Livrari (
    ID_Livrare INT PRIMARY KEY,
    ID_Comanda INT,
    ID_Angajat INT,
    Data_Livrare DATE,
    FOREIGN KEY (ID_Comanda) REFERENCES Comenzi(ID_Comanda),
    FOREIGN KEY (ID_Angajat) REFERENCES Angajati(ID_Angajat)
);


CREATE TABLE Plati (
    ID_Plata INT PRIMARY KEY,
    ID_Comanda INT,
    Suma DECIMAL(10, 2),
    Data_Plata DATE,
    FOREIGN KEY (ID_Comanda) REFERENCES Comenzi(ID_Comanda)
);


INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (1, 'Ion Popescu', 'Str. Mihai Eminescu, nr. 45, Bucuresti');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (2, 'Maria Ionescu', 'Bd. Unirii, nr. 23, Brasov');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (3, 'George Enescu', 'Str. Libertatii, nr. 10, Cluj-Napoca');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (4, 'Ana Marin', 'Str. Primaverii, nr. 78, Timisoara');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (5, 'Mihai Vasile', 'Str. Horia, nr. 12, Iasi');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (6, 'Elena Dumitrescu', 'Str. Mures, nr. 34, Constanta');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (7, 'Cristina Radu', 'Str. Avram Iancu, nr. 56, Craiova');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (8, 'Alexandru Stoica', 'Str. Tudor Vladimirescu, nr. 22, Oradea');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (9, 'Gabriela Popa', 'Str. Stefan cel Mare, nr. 9, Sibiu');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (10, 'Florin Dinu', 'Str. Republicii, nr. 33, Arad');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (11, 'Andrei Gheorghe', 'Str. Carol I, nr. 5, Ploiesti');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (12, 'Roxana Iliescu', 'Str. Decebal, nr. 11, Galati');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (13, 'Vlad Munteanu', 'Str. Traian Vuia, nr. 14, Baia Mare');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (14, 'Laura Petrescu', 'Str. Bulevardul Dacia, nr. 6, Satu Mare');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (15, 'Dan Preda', 'Str. Tineretului, nr. 88, Botosani');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (16, 'Simona Ursu', 'Str. Closca, nr. 18, Pitesti');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (17, 'Marius Neagu', 'Str. Neagoe Basarab, nr. 25, Alba Iulia');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (18, 'Adela Balan', 'Str. Petru Rares, nr. 27, Targu Mures');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (19, 'Cosmin Rusu', 'Str. Nufarului, nr. 31, Suceava');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (20, 'Oana Vaduva', 'Str. Marasesti, nr. 19, Bacau');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (21, 'Ana Maria Pop', 'Str. Crângului, nr. 7, Timisoara');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (22, 'Gabriel Ionescu', 'Bd. Republicii, nr. 14, Brasov');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (23, 'Andreea Radu', 'Str. Libertatii, nr. 33, Cluj-Napoca');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (24, 'Mihai Stan', 'Str. Muncii, nr. 21, Iasi');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (25, 'Cristina Popescu', 'Bd. Unirii, nr. 9, Bucuresti');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (26, 'Alexandru Georgescu', 'Str. Dorobantilor, nr. 12, Constanta');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (27, 'Laura Dumitru', 'Str. Victoriei, nr. 18, Galati');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (28, 'Ionut Stoica', 'Str. Revolutiei, nr. 6, Cluj-Napoca');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (29, 'Raluca Vasile', 'Str. Stefan cel Mare, nr. 3, Suceava');
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (30, 'Adrian Radulescu', 'Bd. Decebal, nr. 15, Ploiesti');


INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (101, 1, TO_DATE('2024-05-19', 'YYYY-MM-DD'), TO_DATE('2024-05-20', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (102, 2, TO_DATE('2024-05-20', 'YYYY-MM-DD'), TO_DATE('2024-05-22', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (103, 3, TO_DATE('2024-05-21', 'YYYY-MM-DD'), TO_DATE('2024-05-23', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (104, 4, TO_DATE('2024-05-22', 'YYYY-MM-DD'), TO_DATE('2024-05-24', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (105, 5, TO_DATE('2024-05-23', 'YYYY-MM-DD'), TO_DATE('2024-05-25', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (106, 6, TO_DATE('2024-05-24', 'YYYY-MM-DD'), TO_DATE('2024-05-26', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (107, 7, TO_DATE('2024-05-25', 'YYYY-MM-DD'), TO_DATE('2024-05-27', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (108, 8, TO_DATE('2024-05-26', 'YYYY-MM-DD'), TO_DATE('2024-05-28', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (109, 9, TO_DATE('2024-05-27', 'YYYY-MM-DD'), TO_DATE('2024-05-29', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (110, 10, TO_DATE('2024-05-28', 'YYYY-MM-DD'), TO_DATE('2024-05-30', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (111, 11, TO_DATE('2024-05-29', 'YYYY-MM-DD'), TO_DATE('2024-06-01', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (112, 12, TO_DATE('2024-05-30', 'YYYY-MM-DD'), TO_DATE('2024-06-02', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (113, 13, TO_DATE('2024-05-31', 'YYYY-MM-DD'), TO_DATE('2024-06-03', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (114, 14, TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-06-04', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (115, 15, TO_DATE('2024-06-02', 'YYYY-MM-DD'), TO_DATE('2024-06-05', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (116, 16, TO_DATE('2024-06-03', 'YYYY-MM-DD'), TO_DATE('2024-06-06', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (117, 17, TO_DATE('2024-06-04', 'YYYY-MM-DD'), TO_DATE('2024-06-07', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (118, 18, TO_DATE('2024-06-05', 'YYYY-MM-DD'), TO_DATE('2024-06-08', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (119, 19, TO_DATE('2024-06-06', 'YYYY-MM-DD'), TO_DATE('2024-06-09', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (120, 20, TO_DATE('2024-06-07', 'YYYY-MM-DD'), TO_DATE('2024-06-10', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (121, 21, TO_DATE('2024-06-08', 'YYYY-MM-DD'), TO_DATE('2024-06-11', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (122, 22, TO_DATE('2024-06-09', 'YYYY-MM-DD'), TO_DATE('2024-06-12', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (123, 23, TO_DATE('2024-06-10', 'YYYY-MM-DD'), TO_DATE('2024-06-13', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (124, 24, TO_DATE('2024-06-11', 'YYYY-MM-DD'), TO_DATE('2024-06-14', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (125, 25, TO_DATE('2024-06-12', 'YYYY-MM-DD'), TO_DATE('2024-06-15', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (126, 26, TO_DATE('2024-06-13', 'YYYY-MM-DD'), TO_DATE('2024-06-16', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (127, 27, TO_DATE('2024-06-14', 'YYYY-MM-DD'), TO_DATE('2024-06-17', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (128, 28, TO_DATE('2024-06-15', 'YYYY-MM-DD'), TO_DATE('2024-06-18', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (129, 29, TO_DATE('2024-06-16', 'YYYY-MM-DD'), TO_DATE('2024-06-19', 'YYYY-MM-DD'));
INSERT INTO Comenzi (ID_Comanda, ID_Client, Data_Comanda, Data_Livrare) VALUES (130, 30, TO_DATE('2024-06-17', 'YYYY-MM-DD'), TO_DATE('2024-06-20', 'YYYY-MM-DD'));

INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (1678, 'Furnizor ABC', 'Str. Victoriei, nr. 10, Bucuresti');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (2143, 'Furnizor XYZ', 'Bd. Independentei, nr. 20, Cluj-Napoca');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (3219, 'Furnizor SRL', 'Str. Libertatii, nr. 30, Iasi');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (4225, 'Furnizor Partners', 'Bd. Unirii, nr. 40, Timisoara');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (5478, 'Furnizor SCM', 'Str. Republicii, nr. 50, Brasov');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (6754, 'Furnizor Group', 'Bd. Revolutiei, nr. 60, Constanta');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (7311, 'Furnizor Co', 'Str. Mihai Viteazu, nr. 70, Galati');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (8124, 'Furnizor Ltd', 'Bd. Aurel Vlaicu, nr. 80, Ploiesti');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (9443, 'Furnizor Enterprises', 'Str. Traian, nr. 90, Craiova');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (1056, 'Furnizor Solutions', 'Bd. Carol I, nr. 100, Bacau');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (1288, 'Furnizor Tech', 'Str. Decebal, nr. 110, Sibiu');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (1347, 'Furnizor International', 'Bd. 1 Decembrie 1918, nr. 120, Oradea');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (1477, 'Furnizor Corporation', 'Str. Avram Iancu, nr. 130, Arad');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (1562, 'Furnizor Solutions', 'Bd. Horea, nr. 140, Alba Iulia');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (1683, 'Furnizor Partners', 'Str. Gheorghe Doja, nr. 150, Targu Mures');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (1743, 'Furnizor Group', 'Bd. Mihai Eminescu, nr. 160, Suceava');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (1892, 'Furnizor Ltd', 'Str. Vasile Alecsandri, nr. 170, Pitesti');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (1975, 'Furnizor Partners', 'Bd. Stefan cel Mare, nr. 180, Botosani');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (2083, 'Furnizor Corporation', 'Str. Ion Creanga, nr. 190, Braila');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (2156, 'Furnizor Enterprises', 'Bd. Vasile Lupu, nr. 200, Ramnicu Valcea');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (2219, 'Furnizor Tech', 'Str. Dimitrie Cantemir, nr. 210, Targu Jiu');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (2365, 'Furnizor SCM', 'Bd. Gheorghe Doja, nr. 220, Cluj-Napoca');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (2471, 'Furnizor SRL', 'Str. Tudor Vladimirescu, nr. 230, Iasi');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (2556, 'Furnizor ABC', 'Bd. Mihai Bravu, nr. 240, Galati');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (2687, 'Furnizor Group', 'Str. Aviatorilor, nr. 250, Timisoara');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (2765, 'Furnizor Enterprises', 'Bd. Calea Victoriei, nr. 260, Bucuresti');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (2831, 'Furnizor Solutions', 'Str. Mihai Viteazu, nr. 270, Craiova');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (2998, 'Furnizor Tech', 'Bd. Unirii, nr. 280, Brasov');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (3087, 'Furnizor Partners', 'Str. Stefan cel Mare, nr. 290, Sibiu');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (3165, 'Furnizor Corporation', 'Bd. 1 Decembrie 1918, nr. 300, Timisoara');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (3254, 'Furnizor Ltd', 'Str. Avram Iancu, nr. 310, Cluj-Napoca');
INSERT INTO Furnizori (ID_Furnizor, Nume, Adresa) VALUES (3322, 'Furnizor SCM', 'Bd. Independentei, nr. 320, Iasi');


INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (328, 'Feronerie', 'Elemente pentru ferestre si usi');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (329, 'Sanitare', 'Componente pentru instalatiile de apa');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (330, 'Electrice', 'Componente pentru instalatii electrice');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (331, 'Gips-carton', 'Placi pentru finisarea peretilor');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (332, 'Chimice', 'Substante chimice pentru diverse aplicatii');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (333, 'Podele', 'Pardoseli din ceramica si gresie');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (334, 'Sticla', 'Componente pentru ferestre si usi');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (335, 'Izolatii', 'Materiale pentru izolarea termica');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (336, 'Metalice', 'Elemente din metal pentru diverse aplicatii');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (337, 'Plastice', 'Articole fabricate din plastic');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (338, 'Lemn', 'Componente din lemn pentru constructii');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (339, 'Beton', 'Elemente din beton pentru constructii');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (340, 'Profile', 'Profile metalice pentru diverse aplicatii');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (341, 'Termoizolante', 'Materiale pentru izolatii termice');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (342, 'Pietris', 'Material granular pentru constructii');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (343, 'Nisip', 'Material granular utilizat in constructii');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (344, 'Vopsele', 'Produse pentru finisarea suprafetelor');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (345, 'Fixare', 'Elemente pentru montarea componentelor');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (346, 'Scule', 'Instrumente pentru lucrarile de constructii');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (347, 'Pompe', 'Componente pentru sistemele de alimentare cu apa');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (348, 'Protectie', 'Elemente pentru protejarea cladirilor');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (349, 'Compuse', 'Produse obtinute prin combinarea materialelor');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (350, 'Acoperisuri', 'Elemente pentru construcția acoperișurilor');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (358, 'Aerisire', 'Elemente pentru circulatia aerului in incaperi');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (359, 'Instalatii electrice', 'Componente pentru alimentarea si distributia curentului electric');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (360, 'Profile metalice', 'Elemente de constructie din metal');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (361, 'Scule si unelte', 'Instrumente pentru lucrarile de constructii si amenajari interioare');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (362, 'Vata minerala', 'Material de izolare termica si fonica');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (363, 'Tamplarie PVC', 'Profile si elemente din PVC pentru ferestre si usi');
INSERT INTO Categorii_Materiale (ID_Categorie, Nume, Descriere) VALUES (364, 'Chituri si etansanti', 'Materiale pentru etansarea si umplerea rosturilor si fisurilor');

INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (900, 'Țeavă de cupru', 'Țeavă de cupru pentru instalații sanitare', 1678, 329, 25.50);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (901, 'Placă gips-carton', 'Placă gips-carton pentru finisarea peretilor', 1347, 331, 15.75);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (902, 'Vopsea lavabilă', 'Vopsea lavabilă pentru finisarea suprafețelor interioare', 2556, 344, 35.99);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (903, 'Conducte electrice', 'Conducte electrice pentru instalații electrice', 1288, 330, 18.25);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (904, 'Feronerie uși', 'Feronerie pentru uși de interior', 3322, 328, 8.99);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (905, 'Placă ceramică', 'Placă ceramică pentru pardoseli', 2365, 333, 20.50);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (906, 'Izolație termică', 'Izolație termică pentru pereți exteriori', 2831, 335, 30.75);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (907, 'Elemente de fixare', 'Elemente de fixare pentru montarea componentelor', 2998, 345, 5.99);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (908, 'Placă OSB', 'Placă OSB pentru construcția pardoselilor', 3254, 338, 28.80);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (909, 'Vată minerală', 'Vată minerală pentru izolație fonica', 3322, 362, 22.30);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (910, 'Profil metalic', 'Profil metalic pentru structuri metalice', 1683, 340, 12.45);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (911, 'Chit de rosturi', 'Chit de rosturi pentru plăci ceramice', 1562, 364, 6.80);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (912, 'Piatră decorativă', 'Piatră decorativă pentru finisarea pereților', 6745, 343, 18.99);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (913, 'Pompe de apă', 'Pompe de apă pentru sistemele de irigație', 2156, 347, 120.00);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (914, 'Vopsea antirugină', 'Vopsea antirugină pentru metale', 2471, 344, 22.99);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (915, 'Profile PVC', 'Profile PVC pentru tâmplărie ferestre', 3254, 363, 9.50);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (916, 'Tâmplărie aluminiu', 'Tâmplărie aluminiu pentru ferestre', 2219, 363, 45.80);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (917, 'Chit de etanșare', 'Chit de etanșare pentru ferestre', 8124, 364, 7.25);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (918, 'Elemente de acoperiș', 'Elemente de acoperiș pentru construcții', 1743, 350, 55.99);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (919, 'Panou solar', 'Panou solar pentru încălzirea apei', 3322, 359, 320.50);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (920, 'Cărămidă', 'Cărămidă pentru construcții', 1892, 339, 0.80);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret) VALUES (921, 'Instalație de aer condiționat', 'Instalație de aer condiționat pentru încăperi', 3322, 358, 550.00);VALUES (923, 'Placă de beton', 'Placă de beton pentru pavaje', 3087, 339, 12.99);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret)VALUES (924, 'Profile de aluminiu', 'Profile de aluminiu pentru construcții', 1975, 360, 18.50);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret)VALUES (925, 'Chit de montaj', 'Chit de montaj pentru lucrări de construcții', 6745, 345, 4.50);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret)VALUES (926, 'Pardoseală ceramică', 'Pardoseală ceramică pentru băi și bucătării', 2556, 333, 28.75);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret)VALUES (927, 'Furtun de apă', 'Furtun de apă pentru instalații sanitare', 1683, 329, 6.99);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret)VALUES (928, 'Roată abrazivă', 'Roată abrazivă pentru polizare', 1288, 346, 9.25);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret)VALUES (929, 'Pompa submersibilă', 'Pompa submersibilă pentru puțuri', 2831, 347, 189.99);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret)VALUES (930, 'Furtun de gaz', 'Furtun de gaz pentru instalații termice', 3254, 329, 15.30);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret)VALUES (931, 'Sârmă galvanizată', 'Sârmă galvanizată pentru construcții', 3322, 336, 2.99);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret)VALUES (932, 'Gresie decorativă', 'Gresie decorativă pentru pardoseli', 2219, 333, 18.80);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret)VALUES (933, 'Folie termoizolantă', 'Folie termoizolantă pentru acoperișuri', 3322, 341, 7.50);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret)VALUES (934, 'Foi de aluminiu', 'Foi de aluminiu pentru izolații termice', 1975, 336, 10.25);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret)VALUES (935, 'Placă din lemn', 'Placă din lemn pentru pardoseli', 8124, 338, 14.99);
INSERT INTO Materiale (ID_Material, Nume, Descriere, ID_Furnizor, ID_Categorie, Pret)VALUES (936, 'Piatră de râu', 'Piatră de râu pentru decorarea grădinilor', 1743, 343, 6.50);

INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (400, 900, 100, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (401, 901, 150, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (402, 902, 80, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (403, 903, 200, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (404, 904, 300, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (405, 905, 120, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (406, 906, 90, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (407, 907, 500, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (408, 908, 75, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (409, 909, 110, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (411, 911, 400, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (413, 913, 30, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (414, 914, 80, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (415, 915, 250, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (416, 916, 60, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (417, 917, 300, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (418, 918, 45, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (419, 919, 10, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (420, 920, 800, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (421, 921, 70, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (423, 924, 100, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (425, 926, 85, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (427, 928, 400, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (428, 929, 20, TO_DATE('2024-05-19', 'YYYY-MM-DD'));
INSERT INTO Stocuri (ID_Stoc, ID_Material, Cantitate, Data_Aprovizionare) VALUES (429, 930, 180, TO_DATE('2024-05-19', 'YYYY-MM-DD'));


-- Comanda 101
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (101, 900, 50, 25.00);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (101, 901, 30, 14.00);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (101, 902, 20, 32.50);
-- Comanda 102
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (102, 903, 80, 15.50);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (102, 904, 100, 9.50);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (102, 905, 70, 18.00);
-- Comanda 103
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (103, 906, 40, 28.00);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (103, 907, 200, 6.50);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (103, 908, 60, 27.00);
-- Comanda 104
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (104, 909, 90, 20.00);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (104, 911, 200, 5.00);
-- Comanda 105
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (105, 913, 20, 110.00);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (105, 914, 50, 20.00);
-- Comanda 106
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (106, 915, 120, 8.50);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (106, 916, 40, 40.00);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (106, 917, 150, 5.00);
-- Comanda 107
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (107, 918, 30, 60.00);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (107, 919, 5, 300.00);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (107, 920, 400, 0.75);
-- Comanda 108
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (108, 921, 50, 500.00);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (108, 924, 80, 17.00);
-- Comanda 109
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (109, 926, 50, 25.00);
-- Comanda 110
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (110, 928, 200, 7.75);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (110, 929, 10, 185.00);
INSERT INTO Detalii_Comenzi (ID_Comanda, ID_Material, Cantitate, Pret_Unitar) VALUES (110, 930, 120, 12.00);


INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (600, 'Alexandru Popescu', 'Vânzări', 3500.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (601, 'Maria Ionescu', 'Contabilitate', 4000.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (602, 'Andrei Radu', 'Resurse Umane', 3800.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (603, 'Elena Popa', 'Marketing', 3700.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (604, 'Cristina Stan', 'Tehnic', 4200.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (605, 'Ion Marin', 'IT', 4500.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (606, 'Ana Dumitrescu', 'Producție', 3800.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (607, 'Mihai Tudor', 'Logistică', 3600.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (608, 'Gabriela Voicu', 'Achiziții', 3900.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (609, 'Răzvan Gheorghe', 'Tehnic', 4100.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (610, 'Ana Maria Pop', 'Vânzări', 3600.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (611, 'George Constantinescu', 'Marketing', 3800.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (612, 'Ioana Neagu', 'Producție', 3700.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (613, 'Dorin Iordache', 'Tehnic', 4000.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (614, 'Mariana Tudose', 'Logistică', 3500.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (615, 'Radu Popa', 'Achiziții', 3900.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (616, 'Cătălina Gheorghiu', 'Resurse Umane', 4100.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (617, 'Adrian Vasilescu', 'IT', 4300.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (618, 'Andreea Ionescu', 'Contabilitate', 4200.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (619, 'Diana Popescu', 'Marketing', 3700.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (620, 'Costel Marinescu', 'Producție', 3800.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (621, 'Anca Vasile', 'Logistică', 3600.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (622, 'Vlad Constantin', 'Achiziții', 4000.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (623, 'Alina Ionescu', 'Resurse Umane', 4100.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (624, 'Gabriel Moldovan', 'IT', 4300.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (625, 'Simona Dragomir', 'Contabilitate', 4200.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (626, 'Cristian Pop', 'Vânzări', 3600.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (627, 'Elena Mihai', 'Marketing', 3800.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (628, 'Robert Iacob', 'Tehnic', 4000.00);
INSERT INTO Angajati (ID_Angajat, Nume, Departament, Salariu) VALUES (629, 'Denisa Ilie', 'Producție', 3700.00);

INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (700, 101, 600, TO_DATE('2024-05-20', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (701, 102, 601, TO_DATE('2024-05-22', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (702, 103, 602, TO_DATE('2024-05-23', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (703, 104, 603, TO_DATE('2024-05-24', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (704, 105, 604, TO_DATE('2024-05-25', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (705, 106, 605, TO_DATE('2024-05-26', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (706, 107, 606, TO_DATE('2024-05-27', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (707, 108, 607, TO_DATE('2024-05-28', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (708, 109, 608, TO_DATE('2024-05-29', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (709, 110, 609, TO_DATE('2024-05-30', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (710, 111, 610, TO_DATE('2024-06-01', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (711, 112, 611, TO_DATE('2024-06-02', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (712, 113, 612, TO_DATE('2024-06-03', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (713, 114, 613, TO_DATE('2024-06-04', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (714, 115, 614, TO_DATE('2024-06-05', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (715, 116, 615, TO_DATE('2024-06-06', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (716, 117, 616, TO_DATE('2024-06-07', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (717, 118, 617, TO_DATE('2024-06-08', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (718, 119, 618, TO_DATE('2024-06-09', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (719, 120, 619, TO_DATE('2024-06-10', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (720, 121, 620, TO_DATE('2024-06-11', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (721, 122, 621, TO_DATE('2024-06-12', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (722, 123, 622, TO_DATE('2024-06-13', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (723, 124, 623, TO_DATE('2024-06-14', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (724, 125, 624, TO_DATE('2024-06-15', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (725, 126, 625, TO_DATE('2024-06-16', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (726, 127, 626, TO_DATE('2024-06-17', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (727, 128, 627, TO_DATE('2024-06-18', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (728, 129, 628, TO_DATE('2024-06-19', 'YYYY-MM-DD'));
INSERT INTO Livrari (ID_Livrare, ID_Comanda, ID_Angajat, Data_Livrare) VALUES (729, 130, 629, TO_DATE('2024-06-20', 'YYYY-MM-DD'));

INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (200, 101, 250.00, TO_DATE('2024-05-20', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (201, 102, 300.00, TO_DATE('2024-05-22', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (202, 103, 280.00, TO_DATE('2024-05-23', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (203, 104, 320.00, TO_DATE('2024-05-24', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (204, 105, 270.00, TO_DATE('2024-05-25', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (205, 106, 310.00, TO_DATE('2024-05-26', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (206, 107, 290.00, TO_DATE('2024-05-27', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (207, 108, 260.00, TO_DATE('2024-05-28', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (208, 109, 280.00, TO_DATE('2024-05-29', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (209, 110, 330.00, TO_DATE('2024-05-30', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (210, 111, 300.00, TO_DATE('2024-06-01', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (211, 112, 320.00, TO_DATE('2024-06-02', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (212, 113, 290.00, TO_DATE('2024-06-03', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (213, 114, 280.00, TO_DATE('2024-06-04', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (214, 115, 310.00, TO_DATE('2024-06-05', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (215, 116, 270.00, TO_DATE('2024-06-06', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (216, 117, 330.00, TO_DATE('2024-06-07', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (217, 118, 300.00, TO_DATE('2024-06-08', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (218, 119, 320.00, TO_DATE('2024-06-09', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (219, 120, 290.00, TO_DATE('2024-06-10', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (220, 121, 280.00, TO_DATE('2024-06-11', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (221, 122, 310.00, TO_DATE('2024-06-12', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (222, 123, 270.00, TO_DATE('2024-06-13', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (223, 124, 330.00, TO_DATE('2024-06-14', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (224, 125, 300.00, TO_DATE('2024-06-15', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (225, 126, 320.00, TO_DATE('2024-06-16', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (226, 127, 290.00, TO_DATE('2024-06-17', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (227, 128, 280.00, TO_DATE('2024-06-18', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (228, 129, 310.00, TO_DATE('2024-06-19', 'YYYY-MM-DD'));
INSERT INTO Plati (ID_Plata, ID_Comanda, Suma, Data_Plata) VALUES (229, 130, 270.00, TO_DATE('2024-06-20', 'YYYY-MM-DD'));


--Interogari
-- 1. Inserare Client Nou
INSERT INTO Clienti (ID_Client, Nume, Adresa) VALUES (31, 'Radulescu Marian', 'Bucurest,sector 3');

-- 2. Selectare Client După ID
SELECT * FROM Clienti WHERE ID_Client = 10;

-- 3. Actualizare Sumă Plată
UPDATE Plati SET Suma = 350.00 WHERE ID_Plata = 203;

-- 4. Selectare Plată După ID
SELECT * FROM Plati WHERE ID_Plata = 203;

-- 5. Selectare și Ștergere Furnizor
SELECT * FROM Furnizori WHERE ID_Furnizor=3219;
DELETE FROM Furnizori WHERE ID_Furnizor = 3219;

-- 6. Selectare Livrări într-o Perioadă
SELECT * FROM Livrari WHERE Data_Livrare BETWEEN TO_DATE('2024-05-28', 'YYYY-MM-DD') AND TO_DATE('2024-06-01', 'YYYY-MM-DD');

-- 7. Numărare Livrări într-o Perioadă
SELECT COUNT(*) AS Numar_Livrari FROM Livrari WHERE Data_Livrare BETWEEN TO_DATE('2024-05-28', 'YYYY-MM-DD') AND TO_DATE('2024-06-01', 'YYYY-MM-DD');

-- 8. Selectare Angajați în Ordine Alfabetică
SELECT * FROM Angajati ORDER BY Nume ASC;

-- 9. Creare Vizualizare pentru Nume și Adresă a Clienților
CREATE VIEW Nume_Adresa_Clienti AS SELECT Nume, Adresa FROM Clienti;

-- 10. Selectare Angajați cu Salariu într-un Anumit Interval
SELECT * FROM Angajati WHERE Salariu BETWEEN 3500 AND 4000;

-- 11. Selectare Nume Angajați și Dată Livrare
SELECT Angajati.Nume, Livrari.Data_Livrare FROM Angajati INNER JOIN Livrari ON Angajati.ID_Angajat = Livrari.ID_Angajat;

-- 12. Selectare Materiale cu Preț Mai Mare de 100
SELECT * FROM Materiale WHERE Pret > 100;

-- 13. Selectare Nume și Adresă Furnizori
SELECT Nume, Adresa FROM Furnizori;

-- 14. Afișarea informațiilor despre comenzi și sumele plătite pentru fiecare comandă:
SELECT c.ID_Comanda, c.Data_Comanda, c.Data_Livrare, SUM(p.Suma) AS Suma_Plata FROM Comenzi c JOIN Plati p ON c.ID_Comanda = p.ID_Comanda GROUP BY c.ID_Comanda, c.Data_Comanda, c.Data_Livrare;

-- 15. Afișarea numelor clienților și a datelor la care au plasat comenzi:
SELECT cl.Nume AS Nume_Client, c.Data_Comanda FROM Clienti cl JOIN Comenzi c ON cl.ID_Client = c.ID_Client;

