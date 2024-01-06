-- Table: vaccine_type

-- DROP TABLE IF EXISTS vaccine_type;

CREATE TABLE IF NOT EXISTS vaccine_type
(
    id character varying PRIMARY KEY,
    name character varying NOT NULL,
    doses integer,
    temp_min double precision,
    temp_max double precision,
    CONSTRAINT "VaccineType_pkey" PRIMARY KEY (id)
)

-- Table: public.manufacturer

-- DROP TABLE IF EXISTS public.manufacturer;

CREATE TABLE IF NOT EXISTS public.manufacturer
(
    id character varying NOT NULL,
    country character varying NOT NULL,
    phone character varying NOT NULL,
    "vaccintID" character varying NOT NULL,
    CONSTRAINT "Manufacturere_pkey" PRIMARY KEY (id)
);
	
-- Table: vaccine_batch

-- DROP TABLE IF EXISTS vaccine_batch;

CREATE TABLE IF NOT EXISTS vaccine_batch
(
    manufacturer character varying NOT NULL,
    manu_date character varying NOT NULL,
    expiration character varying NOT NULL,
    location character varying NOT NULL,
    CONSTRAINT vaccine_batch_pkey PRIMARY KEY (manufacturer)
);

-- Table: vaccine_batch

-- DROP TABLE IF EXISTS vaccination_station;

CREATE TABLE IF NOT EXISTS vaccination_station
(
    name character varying NOT NULL,
    address character varying NOT NULL,
    phone character varying NOT NULL,
    CONSTRAINT vaccination_station_pkey PRIMARY KEY (name)
);


-- Table: transportation_log

-- DROP TABLE IF EXISTS transportation_log;

CREATE TABLE IF NOT EXISTS transportation_log
(
    log_id character varying NOT NULL,
	batch_id character varying NOT NULL,
    arrival character varying NOT NULL,
    departure character varying NOT NULL,
    date_arr date NOT NULL,
    date_dep date NOT NULL,
    CONSTRAINT transportation_log_pkey PRIMARY KEY (log_id)
);

-- Table: staff_member

-- DROP TABLE IF EXISTS staff_member;

CREATE TABLE IF NOT EXISTS staff_member
(
    ssn character varying  NOT NULL,
    name character varying NOT NULL,
    date_of_birth date NOT NULL,
    phone character varying NOT NULL,
    role character varying NOT NULL ,
    vaccination_status character varying NOT NULL ,
    hospital character varying NOT NULL ,
    CONSTRAINT staff_member_pkey PRIMARY KEY (ssn)
)

-- Table: staff_member

-- DROP TABLE IF EXISTS staff_member;

CREATE TABLE IF NOT EXISTS staff_member
(
    ssn character varying  NOT NULL,
    name character varying NOT NULL,
    date_of_birth date NOT NULL,
    phone character varying NOT NULL,
    role character varying NOT NULL ,
    vaccination_status character varying NOT NULL ,
    hospital character varying NOT NULL ,
    CONSTRAINT staff_member_pkey PRIMARY KEY (ssn)
)

-- Table: working_shift

-- DROP TABLE IF EXISTS working_shift;

CREATE TABLE IF NOT EXISTS working_shift
(
    station character varying NOT NULL,
    weekday character varying NOT NULL,
    worker character varying NOT NULL,
    CONSTRAINT working_shift_pkey PRIMARY KEY (weekday, worker)
);

-- Table: vaccination_shift

-- DROP TABLE IF EXISTS vaccination_shift;

CREATE TABLE IF NOT EXISTS vaccination_shift
(
    date character varying NOT NULL,
    location character varying NOT NULL,
    "batchID" character varying NOT NULL,
    CONSTRAINT vaccination_shift_pkey PRIMARY KEY (date, location)
);

-- Table: patient

-- DROP TABLE IF EXISTS patient;

CREATE TABLE IF NOT EXISTS public.patient
(
    ssn character varying NOT NULL,
    name character varying NOT NULL,
    date_of_birth character varying NOT NULL,
    gender character varying NOT NULL,
    CONSTRAINT patient_pkey PRIMARY KEY (ssn)
);

-- Table: vaccine_patient

-- DROP TABLE IF EXISTS vaccine_patient;

CREATE TABLE IF NOT EXISTS vaccine_patient
(
    date character varying NOT NULL,
    location character varying NOT NULL,
    patient_ssn character varying NOT NULL,
    CONSTRAINT vaccine_patient_pkey PRIMARY KEY (date, patient_ssn)
);

-- Table: sympstom

-- DROP TABLE IF EXISTS sympstom;

CREATE TABLE IF NOT EXISTS sympstom
(
    name character varying NOT NULL,
    criticality character varying NOT NULL,
    CONSTRAINT sympstom_pkey PRIMARY KEY (name)
);

-- Table: diagnosis

-- DROP TABLE IF EXISTS diagnosis;

CREATE TABLE IF NOT EXISTS diagnosis
(
    patient_ssn character varying NOT NULL,
    sympstom character varying NOT NULL,
    date date,
    CONSTRAINT diagnosis_pkey PRIMARY KEY (patient_ssn, sympstom)
);

