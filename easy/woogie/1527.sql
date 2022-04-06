Create table If Not Exists Patients (patient_id int, patient_name varchar(30), conditions varchar(100));
Truncate table Patients;
insert into Patients (patient_id, patient_name, conditions) values (1, 'Daniel', 'YFEV COUGH');
insert into Patients (patient_id, patient_name, conditions) values (2, 'Alice', '');
insert into Patients (patient_id, patient_name, conditions) values (3, 'Bob', 'DIAB100 MYOP');
insert into Patients (patient_id, patient_name, conditions) values (4, 'George', 'ACNE DIAB100');
insert into Patients (patient_id, patient_name, conditions) values (5, 'Alain', 'DIAB201');

-- 못 품

-- 정규식 사용
SELECT 
  p.patient_id
  ,p.patient_name
  ,p.conditions
FROM Patients p
WHERE REGEXP_LIKE(p.conditions, ' +DIAB1|^DIAB1')
;