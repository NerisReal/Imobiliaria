Create Table proprietario(
    id_proprietario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(100) NOT NULL,
    telefone TEXT(15) NOT NULL
);

----imovel-----

Create table imovel(
    id_imovel INTEGER PRIMARY KEY AUTOINCREMENT,
    endereco TEXT(500),
    tipo_imovel TEXT(100),
    valor TEXT(30),
    descricao TEXT (500),
    id_proprietario INTEGER,
    FOREIGN KEY (id_proprietario) REFERENCES proprietario(id_proprietario)
);

-----cliente----

Create table cliente(
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(100) NOT NULL,
    telefone TEXT(15) NOT NULL,
    email TEXT(100),
    tipo_negocio TEXT(100)
);

----corretor-----

Create Table corretor(
    id_corretor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(100) NOT NULL,
    creci INTEGER NOT NULL,
    telefone TEXT(15) NOT NULL
);

-----negocio-----

Create table negocio(
    tipo_negocio TEXT(200),
    data TEXT (50),
    id_imovel INTEGER,
    id_cliente INTEGER,
    id_corretor INTEGER,
    id_proprietario INTEGER,
    FOREIGN KEY (id_imovel) REFERENCES imovel(id_imovel),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_corretor) REFERENCES corretor(id_corretor),
    FOREIGN KEY (id_proprietario) REFERENCES proprietario(id_proprietario)
);