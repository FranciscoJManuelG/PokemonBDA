CREATE TABLE TIPO
        (IDT NUMBER(2) CONSTRAINT PK_TIPO PRIMARY KEY,
         NOMBRET VARCHAR2(20) NOT NULL
        );

CREATE TABLE ATAQUE
       (IDA NUMBER(2) CONSTRAINT PK_ATAQUE PRIMARY KEY,
        NOMBREA VARCHAR2(20) NOT NULL,
        PP NUMBER(4) NOT NULL,
        POTENCIA NUMBER(3),
        PRECISION NUMBER(3),
        IDT NUMBER(2) CONSTRAINT FK_IDT_A REFERENCES TIPO NOT NULL
        );

CREATE TABLE HABILIDAD
       (IDH NUMBER(2) CONSTRAINT PK_HABILIDAD PRIMARY KEY,
        NOMBREH VARCHAR2(20) NOT NULL,
        DESCRIPCION VARCHAR2(50) NOT NULL
        );

CREATE TABLE POKEMON
       (IDP NUMBER(2) CONSTRAINT PK_POKEMON PRIMARY KEY,
        NOMBREP VARCHAR2(20) NOT NULL,
        HP NUMBER(4) NOT NULL,
        ATK NUMBER(4) NOT NULL,
        DEF NUMBER(4) NOT NULL,
        SPE NUMBER(4) NOT NULL,
        IDA NUMBER(2) CONSTRAINT FK_IDA REFERENCES ATAQUE NOT NULL,
        IDT NUMBER(2) CONSTRAINT FK_IDT_P REFERENCES TIPO NOT NULL,
        IDH NUMBER(2) CONSTRAINT FK_IDH REFERENCES HABILIDAD NOT NULL
        );

INSERT INTO TIPO VALUES (1,'FUEGO');
INSERT INTO TIPO VALUES (2,'AGUA');
INSERT INTO TIPO VALUES (3,'PLANTA');

INSERT INTO ATAQUE VALUES (1,'BURBUJA',30,40,100,2);
INSERT INTO ATAQUE VALUES (2,'HIDROBOMBA',5,110,80,2);
INSERT INTO ATAQUE VALUES (3,'ASCUAS',25,40,100,1);
INSERT INTO ATAQUE VALUES (4,'LANZALLAMAS',15,90,100,1);
INSERT INTO ATAQUE VALUES (5,'LLAMARADA',5,110,85,1);
INSERT INTO ATAQUE VALUES (6,'LATIGO CEPA',25,45,100,3);

INSERT INTO HABILIDAD VALUES (1,'TORRENTE','Potencia tipo agua +50%.');
INSERT INTO HABILIDAD VALUES (2,'MAR LLAMAS','Potencia tipo fuego +50%.');
INSERT INTO HABILIDAD VALUES (3,'ARMADURA BATALLA','Ataque enemigo nunca es crítico.');
INSERT INTO HABILIDAD VALUES (4,'ESPESURA','Potencia tipo planta +50%.');