use IMC_project;
Create Table Room (
roomNo char (3) not null Primary Key,
usageStatus Bit not null,
roomType char,
);

Create Table IsolationRoom (
roomNo char (3) not null Primary Key,
sanitizationStatus Bit not null,
foreign key (roomNo) references Room (roomNo)
on delete cascade on update cascade,
);


create table Patient(
patientNo char(5) not null primary key,
fName varchar(15) not null,
mName varchar(15),
lName varchar(15) not null,
dateOfBirth date not null,
gender varchar(6) not null,
Check (gender IN ('male', 'Female')),
maritalStatus varchar(8) not null,
Check (maritalStatus IN ('single', 'married')),
address varchar(25),
phoneNumber Int,
roomNo char (3),
foreign key (roomNo) references Room (roomNo)
on delete set null on update cascade,
);

create table Patient_Isolation(
patientNo char(5) not null ,
foreign key (patientNo) references Patient (patientNo)
on delete No action on update cascade,
roomNo char (3) not null ,
foreign key (roomNo) references IsolationRoom (roomNo)
on delete No action on update no action,
constraint PK_Patient_isolation primary key(patientNo, roomNo),
);

create table Employee(
employeeID char(3) not null primary key,
fName varchar(15) not null,
lName varchar(15) not null,
title varchar(15) not null,
jobDescription varchar(15) not null,
email varchar(30) not null,
phoneNumber Int,
address varchar(30),
);

create table FFile(
fileNo char(5) not null primary key,
employeeID char(3) ,
foreign key (employeeID) references Employee(employeeID)
on delete set null on update cascade,
);

alter table patient add 
fileNo char(5) 
foreign key (fileNo) references FFile (fileNo)
on delete no action on update cascade;


create table Doctor(
doctorID char(3) not null primary key,
foreign key (doctorID) references Employee(employeeID)
on delete cascade on update cascade,
specialty varchar(30) not null,
);


create table MedicalPrescription(
PresNo char(8) not null primary key,
presDesc varchar(25),
presDate date not null,
patientNo char(5) not null ,
foreign key (patientNo) references Patient (patientNo)
on delete No action on update cascade,
doctorID char(3) not null
foreign key (doctorID) references Doctor(doctorID)
on delete no action on update no action,
);

create table Contract(
contractNo char(8) not null primary key,
contractDate date not null,
contractDuration int not null,
contractDesc varchar(25),
);


alter table employee add
contractNo char(8) 
foreign key (contractNo) references Contract(contractNo)
on delete no action on update cascade;

create table Medication(
medicationNo char(8) not null primary key,
medicationName varchar(30) not null ,
expirationDate date not null,
amountInStock int,
roomNo char(3),
foreign key (roomNo) references Room (roomNo)
on delete no action on update cascade,
employeeID char(3),
foreign key (employeeID) references Employee(employeeID)
on delete set null on update cascade,
patientNo char(5) ,
foreign key (patientNo) references Patient (patientNo)
on delete No action on update no action,
);


create table consultation(
consultationNo char(8) not null primary key,
consultationDate date not null,
diagnosisICD_10 char(5) not null,
consultationDesc varchar (25) not null,
);

create table Nurse(
nurseID char(3) not null primary key,
foreign key (nurseID) references Employee(employeeID)
on delete cascade on update cascade,
assistanceType varchar(15) not null,
);

create table TreatmentPlan(
TRNo char(8) not null primary key,
TRDate date not null,
managementPlan varchar(100) not null,
followupPlan varchar(100),
nurseID char(3),
foreign key (nurseID) references nurse(nurseID)
on delete no action on update cascade,
);

create table Treatment(
consultationNo char(8) not null primary key,
TRNo char(8) not null
foreign key (TRNo) references TreatmentPlan(TRNo)
on delete no action on update cascade,
patientNo char(5) not null,
foreign key (patientNo) references Patient (patientNo)
on delete No action on update no action,
doctorID char(3) not null
foreign key (doctorID) references Doctor(doctorID)
on delete no action on update no action,
);

create table Reference(
referenceDate datetime not null primary key,
patientNo char(5) not null,
foreign key (patientNo) references Patient (patientNo)
on delete No action on update no action,
doctorID char(3) not null
foreign key (doctorID) references Doctor(doctorID)
on delete no action on update no action,
);


create table Triage(
triageNo char(8) not null primary key,
triageDate date not null,
chronicDiseases varchar(15) default 'none' not null,
allergies varchar(15) default 'none' not null,
chiefComplaint varchar(25) not null,
);

alter table patient add
triageNo char(8) not null
foreign key (triageNo) references Triage(triageNo)
on delete no action on update cascade;

create table Education(
TopicNo char(8) not null primary key,
topicName varchar(15) not null,
instructions varchar(25) not null,
);

create table Patient_Education(
topicNo char(8) not null,
givenDate datetime not null,
foreign key (topicNo) references Education(topicNo)
on delete no action on update cascade,
patientNo char(5) not null,
foreign key (patientNo) references Patient (patientNo)
on delete No action on update no action,
nurseID char(3) not null,
foreign key (nurseID) references nurse(nurseID)
on delete no action on update cascade,
constraint pk_patient_Eduaction primary key (topicNo,nurseID,givenDate),
);



create table vitalSigns(
VitalSignNo char(8) not null primary key,
VitalSignName varchar(15) not null,
normalRange varchar(15) not null,
);

create table Patient_VitalSign(
VitalSignDate datetime not null primary key,
value int not null,
VitalSignNo char(8) not null
foreign key (vitalSignNo) references vitalSigns(vitalSignNo)
on delete no action on update cascade,
patientNo char(5) not null,
foreign key (patientNo) references Patient (patientNo)
on delete No action on update no action,
fileNo char(5) not null
foreign key (fileNo) references FFile (fileNo)
on delete no action on update no action,
nurseID char(3) not null,
foreign key (nurseID) references nurse(nurseID)
on delete no action on update cascade,
);


create table Receipt(
receiptNo char(10) not null primary key,
receiptDate date not null,
amount int not null,
receiptDesc varchar(25) not null,
);

create table Receipt_Delivery(
receiptNo char(10) not null
foreign key (receiptNo) references Receipt(receiptNo)
on delete no action on update cascade,
patientNo char(5) not null
foreign key (patientNo) references Patient (patientNo)
on delete No action on update no action,
employeeID char(3)  not null
foreign key (employeeID) references Employee(employeeID)
on delete no action on update cascade,
);
alter table Receipt_Delivery add 
constraint pk_delivery primary key (receiptNo, patientNo, employeeID);

create table Invoice(
invoiceNo char(10) not null primary key,
invoiceDate date not null,
amount int not null,
invoiceDesc varchar(25) not null,
);

create table Invoice_payment(
invoiceNo char(10) not null
foreign key (invoiceNo) references Invoice(invoiceNo)
on delete no action on update cascade,
employeeID char(3)  not null
foreign key (employeeID) references Employee(employeeID)
on delete no action on update cascade,
);

create table Services(
serviceNo char(8) not null primary key,
serviceType varchar(25) not null,
serviceExpenses int not null,
);

create table patient_service(
serviceNo char(8) not null,
serviceDate date not null,
patientNo char(5) not null
foreign key (patientNo) references Patient (patientNo)
on delete No action on update cascade,
constraint pk_service primary key (serviceNo,patientNo,serviceDate)
);


create table ExternalParty(
partyID char(10) not null primary key,
PartyName varchar(15) not null,
phoneNumber int not null,
address varchar(25) not null,
classification varchar(20) not null,
Check (classification IN 
('hospital', 'laboratory','supplier','partner','government')),
employeeID char(3) null
foreign key (employeeID) references Employee(employeeID)
on delete no action on update cascade,
);

alter table contract add 
partyID char(10) null
foreign key (partyID) references ExternalParty(partyID)
on delete no action on update no action;

alter table reference add 
partyID char(10) not null
foreign key (partyID) references ExternalParty(partyID)
on delete no action on update cascade;

alter table invoice_payment add 
partyID char(10) not null
foreign key (partyID) references ExternalParty(partyID)
on delete no action on update no action,
constraint pk_payment primary key(invoiceNo,employeeID, partyID) ;

create table Result(
resultNo char (8) not null primary key,
resultStatus varchar(20) not null
Check (resultStatus IN 
('pending', 'received','delivered')),
receivedDate date,
deliveryDate date,
employeeID char(3)  not null
foreign key (employeeID) references Employee(employeeID)
on delete no action on update cascade,
);

create table Result_externalParty(
resultNo char (8) not null
foreign key(resultNo) references Result(resultNo)
on delete no action on update cascade,
partyID char(10) not null
foreign key (partyID) references ExternalParty(partyID)
on delete no action on update no action,
constraint pk_result_party primary key(resultNo, partyID)
);

create table Specimens(
specimensNo char(8) not null primary key,
dateOfExtraction date not null,
resultNo char (8) not null
foreign key(resultNo) references Result(resultNo)
on delete no action on update cascade,
employeeID char(3)  not null
foreign key (employeeID) references Employee(employeeID)
on delete no action on update no action,
patientNo char(5) not null
foreign key (patientNo) references Patient (patientNo)
on delete No action on update no action,
);

create table Examination(
patientNo char(5) not null
foreign key (patientNo) references Patient (patientNo)
on delete No action on update cascade,
doctorID char(3) not null
foreign key (doctorID) references Doctor(doctorID)
on delete no action on update no action,
nurseID char(3) null
foreign key (nurseID) references nurse(nurseID)
on delete no action on update no action,
constraint pk_Examination primary key(patientNo,doctorID),
);

create table Manager(
managerID char(3)  not null
foreign key (managerID) references Employee(employeeID)
on delete no action on update no action,
employeeID char(3)  not null
foreign key (employeeID) references Employee(employeeID)
on delete no action on update cascade,
constraint pk_manager primary key(EmployeeID, managerID)
);

create table Certificate(
certificateID char(8) not null primary key,
certificateDate date not null,
certificateName varchar(50) not null,
issuingParty varchar(30) not null,
employeeID char(3)  not null
foreign key (employeeID) references Employee(employeeID)
on delete no action on update cascade,
);

create table RRule(
ruleNo char(8) not null primary key,
settingDate date not null,
applyingStatus bit not null,
employeeID char(3)  not null
foreign key (employeeID) references Employee(employeeID)
on delete no action on update cascade,
);

create table stock(
itemNo char(8) not null primary key,
itemName varchar(15) not null,
itemDesc varchar(25) not null,
stockType varchar(15) not null,
expirationDate date not null,
quantity int not null,
employeeID char(3)  null
foreign key (employeeID) references Employee(employeeID)
on delete no action on update cascade,
);

create table oorder(
orderNo char(10) not null primary key,
orderDesc varchar(25) not null,
orderDate date not null,
ItemName varchar(15) not null,
quantity int not null,
unitPrice int not null,
totalPrice int not null,
employeeID char(3)  not null
foreign key (employeeID) references Employee(employeeID)
on delete no action on update cascade,
);

create table ApprovalForm(
formNo char(8) not null primary key,
formDate date not null,
formStatus varchar(10) not null
check(formStatus In('pending','approved','rejected')),
employeeID char(3)  not null
foreign key (employeeID) references Employee(employeeID)
on delete no action on update cascade,
orderNo char(10) not null
foreign key (orderNo) references oorder(orderNo)
on delete no action on update no action,
);



create table Quotation(
quotationNo char(10) not null primary key,
orderNo char(10) not null
foreign key (orderNo) references oorder(orderNo),
partyID char(10) not null
foreign key (partyID) references ExternalParty(partyID)
on delete no action on update no action,
);

create table QualityIndicator(
IndicatorNo char(8) not null primary key,
indicatorName varchar(15) not null,
indicatorDesc varchar(25) not null,
);

create table ActionPlan(
actionPlanNo char(10) not null primary key,
futureAction varchar(25) not null,
percentageOfAchievement int not null,
deadline date not null,
dateOfVisit date not null,
);

create table ActionPlan_party(
indicatorNo char(8) not null
foreign key (indicatorNo) references QualityIndicator(indicatorNo)
on delete no action on update cascade,
partyID char(10) not null
foreign key (partyID) references ExternalParty(partyID)
on delete no action on update cascade,
actionPlanNo char(10) not null
foreign key (actionPlanNo) references ActionPlan(actionPlanNo)
on delete no action on update cascade,
constraint pk_actionPlan_party primary key(indicatorNo, partyID, actionPlanNo),
);

create table Announcement(
announcementNo char(10) not null primary key,
announcementDate date not null,
announcementDesc varchar(25) not null,
employeeID char(3)  not null
foreign key (employeeID) references Employee(employeeID)
on delete no action on update cascade,
);

create table Announcement_Party(
announcementNo char (10) not null
foreign key (announcementNo) references Announcement(announcementNo)
on delete no action on update cascade,
partyID char(10) not null
foreign key (partyID) references ExternalParty(partyID)
on delete no action on update no action,
constraint pk_announcement_party primary key (announcementNo, partyID),
);