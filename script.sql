CREATE TABLE TIPO
        (IDT NUMBER(2) CONSTRAINT PK_TIPO PRIMARY KEY,
         NOMBRET VARCHAR2(20)
        );

CREATE TABLE ATAQUE
       (IDA NUMBER(2) CONSTRAINT PK_ATAQUE PRIMARY KEY,
        NOMBREA VARCHAR2(20),
        PP NUMBER(4),
        POTENCIA NUMBER(3),
        PRECISION NUMBER(3),
        IDT NUMBER(2) CONSTRAINT FK_IDT REFERENCES TIPO
        );

CREATE TABLE HABILIDAD
       (IDH NUMBER(2) CONSTRAINT PK_HABILIDAD PRIMARY KEY,
        NOMBREH VARCHAR2(20),
        DESCRIPCION VARCHAR(500)
        );

CREATE TABLE POKEMON
       (IDP NUMBER(2) CONSTRAINT PK_POKEMON PRIMARY KEY,
        NOMBREP VARCHAR2(20),
        HP NUMBER(4),
        ATK NUMBER(4),
        DEF NUMBER(4),
        SPE NUMBER(4),
        IDA NUMBER(2) CONSTRAINT FK_IDA REFERENCES ATAQUE
        IDT NUMBER(2) CONSTRAINT FK_IDT REFERENCES TIPO
        IDH NUMBER(2) CONSTRAINT FK_IDH REFERENCES HABILIDAD
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

INSERT INTO HABILIDAD VALUES (1,'TORRENTE','Torrente aumenta la potencia de los movimientos de tipo agua del poseedor en un 50% cuando su salud esté igual o por debajo de 1/3 de sus PS máximos.');
INSERT INTO HABILIDAD VALUES (2,'MAR LLAMAS','Mar llamas aumenta la potencia de los movimientos de tipo fuego del poseedor en un 50% cuando su salud esté igual o por debajo de 1/3 de sus PS máximos.');
INSERT INTO HABILIDAD VALUES (3,'PODER SOLAR','Poder solar en clima soleado aumenta el ataque especial del Pokémon poseedor en un 50%, pero a cambio el Pokémon pierde 1/8 de sus PS máximos al final de cada turno.');
INSERT INTO HABILIDAD VALUES (4,'ESPESURA','Espesura aumenta la potencia de los movimientos de tipo planta del poseedor en un 50% cuando su salud esté igual o por debajo de 1/3 de sus PS máximos.');