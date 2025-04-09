## Esercizio

# Modellizzare la struttura di un database per memorizzare tutti i dati riguardanti una università:

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

- id (BIGINT) - primary key - auto_increment - NOT NULL
- degree_course_id (BIGINT) - foreign key - NOT NULL
- name: VARCHAR(255) - NOT NULL

--------------------------------------------------------------

## Table name: 'degree_courses'

**colums**:

- id (BIGINT) - primary key - auto_increment - NOT NULL
- course_id (BIGINT) - foreign key - NOT NULL
- name: VARCHAR(255) - NOT NULL

--------------------------------------------------------------

## Table name: 'courses'

**colums**:

- id (BIGINT) - primary key - auto_increment - NOT NULL
- teacher_id (BIGINT) - foreign key - NOT NULL
- exam_session_id (BIGINT) - foreign jey - NOT NULL
- name: VARCHAR(255) - NOT NULL

--------------------------------------------------------------

## Table name: 'students'

**colums**:

- id (BIGINT) - primary key - auto_increment - NOT NULL
- name: VARCHAR(255) - NOT NULL
- lastname: VARCHAR(255) - NOT NULL
- email: VARCHAR(255) - NOT NULL - UNIQUE
- address: VARCHAR(255) - NULL
- phone: VARCHAR(20) - NULL
- date_of_birth: DATE - NULL

--------------------------------------------------------------

## Table name: 'teachers'

**colums**:

- id (BIGINT) - primary key - auto_increment - NOT NULL
- name: VARCHAR(255) - NOT NULL
- lastname: VARCHAR(255) - NOT NULL
- email: VARCHAR(255) - NOT NULL - UNIQUE
- address: VARCHAR(255) - NULL
- phone: VARCHAR(20) - NULL
- date_of_birth: DATE - NULL

--------------------------------------------------------------

## Table name: 'exams'

**colums**:

- id (BIGINT) - primary key - auto_increment - NOT NULL
- vote: SMALL
- result: TINYINT
- date: DATE - NOT NULL

--------------------------------------------------------------