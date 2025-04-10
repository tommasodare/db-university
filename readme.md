## Esercizio

# Modellizzare la struttura di un database per memorizzare tutti i dati riguardanti un'università:

- sono presenti diversi **Dipartimenti** (es.: Lettere e Filosofia, Matematica, Ingegneria ecc.);
- ogni **Dipartimento** offre più **Corsi di Laurea** (es.: Civiltà e Letterature Classiche, Informatica, Ingegneria Elettronica ecc..)
- ogni **Corso di Laurea** prevede diversi **Corsi** (es.: Letteratura Latina, Sistemi Operativi 1, Analisi Matematica 2 ecc.);
- ogni **Corso** può essere tenuto da diversi **Insegnanti**;
- ogni **Corso** prevede più appelli d'**Esame**;
- ogni **Studente** è iscritto ad un solo **Corso di Laurea**;
- ogni **Studente** può iscriversi a più appelli di **Esame**;
- per ogni appello d'**Esame** a cui lo **Studente** ha partecipato, è necessario memorizzare il voto ottenuto, anche se non sufficiente. Pensiamo a quali entità (tabelle) creare per il nostro database e cerchiamo poi di stabilirne le relazioni. Infine, andiamo a definire le colonne e i tipi di dato di ogni tabella.

## Table name: 'departments'

**colums**:

- id: INT - primary key - auto_increment - NOT NULL - UNIQUE
- name: VARCHAR(100) - NOT NULL
- head_of_department: VARCHAR(100) NOT NULL
- phone_number: CHAR(10) NULL
- email: VARCHAR(50)

--------------------------------------------------------------

## Table name: 'degrees' (departments -> degreese)

**colums**:

- id INT - primary key - auto_increment - NOT NULL - UNIQUE
- name: VARCHAR(100) - NOT NULL
- department_id INT - foreign key - NOT NULL
- level: 
- website:

--------------------------------------------------------------

## Table name: 'courses'

**colums**:

- id INT - primary key - auto_increment - NOT NULL - UNIQUE
- degree_id INT - foreign key - NOT NULL
- name: VARCHAR(100) - NOT NULL
- cfu: TINYINT
- period: VARCHAR(50) NOT NULL
- year:
- website:

--------------------------------------------------------------

## Table name: 'teachers'

**colums**:

- id INT - primary key - auto_increment - NOT NULL - UNIQUE
- name: VARCHAR(100) - NOT NULL
- lastname: VARCHAR(100) - NOT NULL
- email: VARCHAR(100) - NOT NULL - UNIQUE
- phone_number: CHAR(10)

## Pivot: course_teacher
- id INT PK AI NN UN
- teacher_id INT (FK)
- course_id INT (FK)

---------------------------------------------------------------

## Table name: 'students'

**colums**:

- id INT - primary key - auto_increment - NOT NULL
- name: VARCHAR(100) - NOT NULL
- lastname: VARCHAR(100) - NOT NULL
- email: VARCHAR(100) - NOT NULL - UNIQUE
- serial_number: MEDIUMINT - NOT NULL - UNIQUE
- degree_id INT - FK - NN

## Pivot Table: exam_student
- id: INT PK AI NN UN
- exam_id: FK
- student_id: FK
- vote:

--------------------------------------------------------------

## Table name: 'exams'

**colums**:

- id INT - primary key - auto_increment - NOT NULL - UNIQUE
- course_id INT - FK - NOT NULL
- date: DATE - NOT NULL
- hour: TIME - NOT NULL
- location: VARCHAR(100) - NOT NULL
- address: VARCHAR(100) - NOT NULL

--------------------------------------------------------------

## NOTE 

- Un Dipartimento ha molti Corsi di Laurea

- Un Corso di Laurea ha molti Corsi

- Un Corso è tenuto da uno o più Insegnanti

- Un Corso ha molti Appelli di Esame

- Uno Studente è iscritto a un solo Corso di Laurea

- Uno Studente può iscriversi a più Appelli di Esame

- Ogni Iscrizione Esame ha un voto e un eventuale lode