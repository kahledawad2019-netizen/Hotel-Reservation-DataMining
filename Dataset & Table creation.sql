USE HospitalDB;
GO

-- Table 1: Departments
CREATE TABLE Departments (
    DepartmentID   INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    Floor          INT
);

-- Table 2: Doctors
CREATE TABLE Doctors (
    DoctorID       INT PRIMARY KEY,
    DoctorName     VARCHAR(100) NOT NULL,
    Specialty      VARCHAR(100),
    DepartmentID   INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Table 3: Patients
CREATE TABLE Patients (
    PatientID    INT PRIMARY KEY,
    PatientName  VARCHAR(100) NOT NULL,
    Age          INT,
    Gender       VARCHAR(10),
    City         VARCHAR(100)
);

-- Table 4: Appointments
CREATE TABLE Appointments (
    AppointmentID   INT PRIMARY KEY,
    PatientID       INT,
    DoctorID        INT,
    AppointmentDate DATE,
    Diagnosis       VARCHAR(200),
    Cost            DECIMAL(10, 2),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID)  REFERENCES Doctors(DoctorID)
);

-- Departments
INSERT INTO Departments VALUES
(1, 'Cardiology', 2),
(2, 'Neurology', 3),
(3, 'Orthopedics', 1),
(4, 'Pediatrics', 4),
(5, 'Dermatology', 2),
(6, 'Oncology', 5),
(7, 'Emergency', 1),
(8, 'Ophthalmology', 3);

-- Doctors
INSERT INTO Doctors VALUES
(1,  'Dr. Ahmed Salem',   'Cardiologist',   1),
(2,  'Dr. Mona Khaled',   'Neurologist',    2),
(3,  'Dr. Omar Fathy',    'Orthopedist',    3),
(4,  'Dr. Sara Hossam',   'Pediatrician',   4),
(5,  'Dr. Youssef Nabil', 'Cardiologist',   1),
(6,  'Dr. Nada Sherif',   'Dermatologist',  5),
(7,  'Dr. Hossam Gamal',  'Oncologist',     6),
(8,  'Dr. Reem Tarek',    'ER Specialist',  7),
(9,  'Dr. Khaled Wael',   'Ophthalmologist',8),
(10, 'Dr. Amira Saeed',   'Neurologist',    2),
(11, 'Dr. Bassem Lotfy',  'Cardiologist',   1),
(12, 'Dr. Ghada Nour',    'Pediatrician',   4),
(13, 'Dr. Sherif Adham',  'Orthopedist',    3),
(14, 'Dr. Yasmin Farouk', 'Dermatologist',  5),
(15, 'Dr. Magdy Helal',   'Oncologist',     6);

-- Patients
INSERT INTO Patients VALUES
(1,  'Ali Hassan',       45,  'Male',   'Cairo'),
(2,  'Nour Salah',       30,  'Female', 'Alexandria'),
(3,  'Kareem Adel',      60,  'Male',   'Cairo'),
(4,  'Hana Magdy',       25,  'Female', 'Giza'),
(5,  'Tarek Mahmoud',    50,  'Male',   'Cairo'),
(6,  'Dina Rashad',      35,  'Female', 'Luxor'),
(7,  'Sami Fouad',       70,  'Male',   'Alexandria'),
(8,  'Rana Ihab',        28,  'Female', 'Giza'),
(9,  'Mostafa Yasser',   40,  'Male',   'Cairo'),
(10, 'Layla Emad',       55,  'Female', 'Aswan'),
(11, 'Ibrahim Nasser',   33,  'Male',   'Cairo'),
(12, 'Salma Kamal',      27,  'Female', 'Alexandria'),
(13, 'Amr Zaki',         52,  'Male',   'Giza'),
(14, 'Heba Samir',       41,  'Female', 'Cairo'),
(15, 'Walid Tawfik',     63,  'Male',   'Luxor'),
(16, 'Rania Osama',      29,  'Female', 'Aswan'),
(17, 'Fady Mounir',      47,  'Male',   'Cairo'),
(18, 'Dalia Ashraf',     36,  'Female', 'Giza'),
(19, 'Sherif Bahgat',    58,  'Male',   'Alexandria'),
(20, 'Noha Galal',       22,  'Female', 'Cairo'),
(21, 'Tamer Sayed',      44,  'Male',   'Mansoura'),
(22, 'Iman Fawzy',       31,  'Female', 'Cairo'),
(23, 'Hazem Reda',       67,  'Male',   'Giza'),
(24, 'Maha Anwar',       39,  'Female', 'Alexandria'),
(25, 'Adel Sobhi',       55,  'Male',   'Cairo'),
(26, 'Yasmine Saad',     24,  'Female', 'Suez'),
(27, 'Nabil Hamdy',      71,  'Male',   'Cairo'),
(28, 'Farida Ramzy',     48,  'Female', 'Giza'),
(29, 'Karim Shawky',     37,  'Male',   'Alexandria'),
(30, 'Samar Hafez',      26,  'Female', 'Cairo');

-- Appointments
INSERT INTO Appointments VALUES
(1,  1,  1,  '2024-01-10',  'Hypertension',           500.00),
(2,  2,  2,  '2024-01-15',  'Migraine',               400.00),
(3,  3,  3,  '2024-02-05',  'Knee Pain',              350.00),
(4,  4,  4,  '2024-02-20',  'Flu',                    200.00),
(5,  5,  1,  '2024-03-01',  'Heart Arrhythmia',       750.00),
(6,  6,  2,  '2024-03-15',  'Epilepsy',               600.00),
(7,  7,  5,  '2024-04-10',  'Chest Pain',             800.00),
(8,  8,  3,  '2024-04-22',  'Back Pain',              300.00),
(9,  9,  1,  '2024-05-05',  'Hypertension',           500.00),
(10, 10, 4,  '2024-05-18',  'Child Fever',            150.00),
(11, 1,  2,  '2024-06-01',  'Stroke Follow-up',       900.00),
(12, 3,  5,  '2024-06-20',  'Heart Failure',         1000.00),
(13, 11, 6,  '2024-01-08',  'Acne',                   250.00),
(14, 12, 7,  '2024-01-22',  'Breast Cancer Follow-up',1200.00),
(15, 13, 8,  '2024-02-03',  'Fracture Emergency',     950.00),
(16, 14, 9,  '2024-02-14',  'Cataract',               700.00),
(17, 15, 10, '2024-02-28',  'Alzheimers',             850.00),
(18, 16, 11, '2024-03-07',  'Hypertension',           500.00),
(19, 17, 12, '2024-03-19',  'Child Asthma',           300.00),
(20, 18, 13, '2024-03-25',  'Shoulder Dislocation',   400.00),
(21, 19, 14, '2024-04-02',  'Psoriasis',              350.00),
(22, 20, 15, '2024-04-11',  'Lung Cancer',           1500.00),
(23, 21, 1,  '2024-04-18',  'Heart Arrhythmia',       750.00),
(24, 22, 2,  '2024-04-25',  'Migraine',               400.00),
(25, 23, 3,  '2024-05-03',  'Hip Replacement',        900.00),
(26, 24, 4,  '2024-05-10',  'Child Fever',            150.00),
(27, 25, 5,  '2024-05-17',  'Chest Pain',             800.00),
(28, 26, 6,  '2024-05-24',  'Eczema',                 280.00),
(29, 27, 7,  '2024-06-03',  'Colon Cancer',          1300.00),
(30, 28, 8,  '2024-06-09',  'Severe Allergy',         500.00),
(31, 29, 9,  '2024-06-16',  'Glaucoma',               650.00),
(32, 30, 10, '2024-06-23',  'Epilepsy',               600.00),
(33, 11, 11, '2024-07-01',  'Heart Failure',         1000.00),
(34, 12, 12, '2024-07-08',  'Flu',                    200.00),
(35, 13, 13, '2024-07-15',  'Knee Pain',              350.00),
(36, 14, 14, '2024-07-22',  'Acne',                   250.00),
(37, 15, 15, '2024-07-29',  'Lung Cancer',           1500.00),
(38, 16, 1,  '2024-08-05',  'Hypertension',           500.00),
(39, 17, 2,  '2024-08-12',  'Stroke Follow-up',       900.00),
(40, 18, 3,  '2024-08-19',  'Back Pain',              300.00),
(41, 19, 4,  '2024-08-26',  'Child Fever',            150.00),
(42, 20, 5,  '2024-09-02',  'Chest Pain',             800.00),
(43, 21, 6,  '2024-09-09',  'Psoriasis',              350.00),
(44, 22, 7,  '2024-09-16',  'Breast Cancer Follow-up',1200.00),
(45, 23, 8,  '2024-09-23',  'Fracture Emergency',     950.00),
(46, 24, 9,  '2024-09-30',  'Cataract',               700.00),
(47, 25, 10, '2024-10-07',  'Alzheimers',             850.00),
(48, 26, 11, '2024-10-14',  'Heart Arrhythmia',       750.00),
(49, 27, 12, '2024-10-21',  'Child Asthma',           300.00),
(50, 28, 13, '2024-10-28',  'Shoulder Dislocation',   400.00);


