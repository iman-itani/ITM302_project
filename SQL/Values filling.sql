use IMC_project;
insert into ActionPlan
values(2020004131,'sanitization',80,'20211204','20211104');

insert into ActionPlan
values(2020004132,'radiology maintainance',60,'20200320','20200301');

insert into ActionPlan
values(2020004133,'new echo scanner',75,'20200803','20200704'),
	  (2020004134,'hire new doctor',40,'20200806','20200702'),
	  (2020004142,'record vital signs',89,'20200612','20200601'),
	  (2020004135,'report efficiently',90,'20200917','20200903'),
	  (2020004136,'recycle trash',70,'20201028','20200929'),
	  (2020004137,'record patients temp',65,'20200214','20200212'),
	  (2020004138,'decrease waiting line',87,'20200515','20200501'),
	  (2020004139,'implement new file system',90,'20200901','20200813'),
	  (2020004140,'fix printer',90,'20200702','20200623'),
	  (2020004141,'preperation of iso_room',90,'20200504','20200416');

select * from ActionPlan;

insert into employee (employeeID,fName,lName,title,jobDescription,email,phoneNumber,address)
values(001,'mohamad','Itani','nurse', 'laboratory tech',
	   'mohamad.itani@irshad.com',01123456,'beirut'),
	   (002,'walid','karam','technician', 'radiology tech',
	   'walid.karam@irshad.com',01012323,'beirut, hamra'),
	   (003,'Ali','malas','nurse', ' assistant',
	   'ali.malas@irshad.com',02345754,'beirut'),
	   (004,'Karim','abbas','doctor', 'nutritionist',
	   'karim.abbas@irshad.com',09876543,'beirut'),
	   (005,'salim','makram','manager', 'project manager',
	   'salim.makram@irshad.com',01234876,'beirut'),
	   (006,'mustafa','kawas','pharmacist', 'pharmacist',
	   'mustafa.kawas@irshad.com',03245676,'beirut'),
	   (007,'jad','khalil','accountant', 'accountant',
	   'jad.khalil@irshad.com',03245768,'beirut'),
	   (008,'rim','zakaria','nurse', 'laboratory tech',
	   'rim.zakaria@irshad.com',01235674,'beirut'),
	   (009,'ranine','al hakim','cashier', 'deliver receipt',
	   'ranine.alhakim@irshad.com',01236543,'beirut'),
	   (010,'ghina','barakat',' manager', 'stock manager',
	   'ghina.barakat@irshad.com',09871267,'beirut');

insert into employee
values(011,'anas','elhaj','nurse', 'filing officer',
	   'anas.elhaj@irshad.com',76565656,'beirut',11110998),
	   (012,'adeel','ibrahim','doctor', 'dentist',
	   'adeel.ibrahim@irshad.com',03121212,'beirut, hamra',11110999),
	   (013,'adnan','younes','nurse', ' assistant',
	   'adnan.younes@irshad.com',03242424,'beirut',11110100),
	   (014,'tarek','harb','doctor', 'dermatology',
	   'tarek.harb@irshad.com',03252525,'beirut',11110101),
	   (015,'elham','deeb','manager', 'project manager',
	   'elham.deeb@irshad.com',03161616,'beirut',11110102),
	   (016,'farah','ismail','doctor', 'pediatrics',
	   'farah.ismail@irshad.com',76434343,'beirut',11110103),
	   (017,'fatima','hashem','doctor', 'cardiology',
	   'fatima.hashem@irshad.com',76898989,'beirut',11110104),
	   (018,'layla','zaiter','nurse', 'laboratory tech',
	   'layla.zaiter@irshad.com',71323232,'beirut',11110105),
	   (019,'esraa','al khatib','doctor', 'oncology',
	   'esraa.alkhatib@irshad.com',71292929,'beirut',11110106),
	   (020,'omar','al rifai',' manager', 'stock manager',
	   'omar.alrifai@irshad.com',71252525,'beirut',11110107);

insert into ExternalParty 
values (1111001230,'premier urgence',01111343,'beirut','partner',005),
	   (1111001231,'MPH',01121214,'beirut', 'government',005),
	   (1111001232,'amedic',09878787,'tripoli','laboratory',001),
	   (1111001233,'mask for all',07898989,'jbeil','supplier',010),
	   (1111001234,'pharmaline', 05678321,'tyre','supplier',010),
	   (1111001235,'Haykal Hosp',06453123,'batroun','hospital', 004),
	   (1111001236,'AUBMC',06543123,'beirut', 'hospital',004),
	   (1111001237,'medico',01234812,'beirut','supplier',010),
	   (1111001238,'franco labs',81127543,'tripoli','laboratory',008),
	   (1111001239,'M lab',05348147,'jbeil','partner',005);


insert into consultation 
values(20200670,'20200314','A00.0','cholera'),
	  (20200671,'20211206','A19.0','Miliary tuberculosis'),
	  (20200672,'20220926','A80.0','Acute poliomyelitis'),
	  (20200673,'20200312','B51.0','Plasmodium vivax malaria'),
	  (20200674,'20200925','B59.0','Pneumocystosis'),
	  (20200675,'20200807','A15.0','Respiratory tuberculosis'),
	  (20200676,'20200404','A32.0','Listeriosis'),
	  (20200677,'20201111','C00.0','Malignant neoplasm of lip'),
	  (20200678,'20200708','C4A.0','Merkel cell carcinoma'),
	  (20200679,'20200516','D45.0','Polycythemia vera');

select * from consultation;





insert into Announcement
values(2000001230,'20200405','compliance letter',005),
	  (2000001231,'20210607','new rules',010),
	  (2000001232,'20201210','contract updates',005),
	  (2000001233,'20201101','compliance letter',005),
	  (2000001234,'20200128','compliance letter',010),
	  (2000001235,'20220324','new rules',010),
	  (2000001236,'20210226','documents needed',004),
	  (2000001237,'20210319','changes',004),
	  (2000001238,'20220913','aggreement',010),
	  (2000001239,'20200405','last updates',005)
	  ;

insert into announcement_party
values(2000001230,1111001230),
	  (2000001231,1111001231),
	  (2000001232,1111001232),
	  (2000001233,1111001233),
	  (2000001234,1111001234),
	  (2000001235,1111001235),
	  (2000001236,1111001236),
	  (2000001237,1111001237),
	  (2000001238,1111001238),
	  (2000001239,1111001239);

insert into approvalForm
values(30001234,'20200405','pending',005,3000012350),
	  (30001235,'20210306','approved',020,3000012351),
	  (30001236,'20220312','approved',005,3000012352),
	  (30001237,'20200627','rejected',015,3000012353),
	  (30001238,'20200809','pending',015,3000012354),
	  (30001239,'20200825','rejected',005,3000012355),
	  (30001240,'20221201','pending',020,3000012356),
	  (30001241,'20200612','approved',005,3000012357),
	  (30001242,'20200711','rejected',005,3000012358),
	  (30001243,'20210427','pending',015,3000012359);

insert into certificate
values(50007821,'20180304','managerial finance','LAU',007),
	  (50007822,'20171203','registered nurse','AUB',003),
	  (50007823,'20150608','laboratory technician ','LIU',001),
	  (50007824,'20190306','quality control specialization','LU',007),
	  (50007825,'20201201','project management','saint joseph',005),
	  (50007826,'20150803','registered nurse','matn university',008),
	  (50007827,'20180701','coloquim','SUC',006),
	  (50007828,'20200908','warehouse management','Coursera',010),
	  (50007829,'20141201','data entry specialization','EDX',009),
	  (50007830,'20180512','health care certificate','MITReact',008);

insert into contract 
values(11110980,'20200708',3,'mask supply',1111001233),
	  (11110981,'20210908',2,'machines supply',1111001234),
	  (11110982,'20210612',1,'health care support',1111001237),
	  (11110983,'20201204',4,'partnership',1111001231),
	  (11110984,'20200527',2,'part time',null),
	  (11110985,'20200928',2,'full time',null),
	  (11110986,'20221224',4,'partnership',1111001236),
	  (11110987,'20220403',3,'agreement',1111001235),
	  (11110988,'20200201',1,'partnership',1111001239),
	  (11110989,'20220901',1,'partnership',1111001238),
	  (11110990,'20211201',3,'internship ',null);

insert into contract
values(11110991,'20211203',3,'full time',null),
	  (11110992,'20220304',2,'part time',null),
	  (11110993,'20200807',1,'full time',null),
	  (11110994,'20201204',4,'internship',null),
	  (11110995,'20211205',2,'full time',null),
	  (11110996,'20200928',2,'full time',null),
	  (11110997,'20221224',4,'full time',null);

insert into contract
values(11110998,'20200907',3,'full time',null),
	  (11110999,'20220403',2,'part time',null),
	  (11110100,'20201201',1,'full time',null),
	  (11110101,'20201204',4,'internship',null),
	  (11110102,'20210201',2,'full time',null),
	  (11110103,'20200302',2,'full time',null),
	  (11110104,'20221224',4,'full time',null),
	  (11110105,'20201103',4,'full time',null),
	  (11110106,'20200907',4,'full time',null),
	  (11110107,'20200803',4,'full time',null);


update Employee set contractNo=11110984 where employeeID=001;
update Employee set contractNo=11110985 where employeeID=002;
update Employee set contractNo=11110990 where employeeID=003;
update Employee set contractNo=11110991 where employeeID=004;
update Employee set contractNo=11110992 where employeeID=005;
update Employee set contractNo=11110993 where employeeID=006;
update Employee set contractNo=11110994 where employeeID=007;
update Employee set contractNo=11110995 where employeeID=008;
update Employee set contractNo=11110996 where employeeID=009;
update Employee set contractNo=11110997 where employeeID=010;

select * from employee;

insert into doctor
values(004,'nutritionist');

insert into doctor
values(012,'dentist'),
	  (014,'dermatology'),
	  (016,'pediatrics'),
	  (017,'cardiology'),
	  (019,'oncology');

select * from doctor;

insert into Education 
values(10002310,'cigarette','decrease consumption'),
	  (10002311,'pregnant',' do needed tests'),
	  (10002312,'obesity','limit sugar consumption'),
	  (10002313,'alcohol','decrease consumption'),
	  (10002314,'nutrition','eat regularly');

select * from Education;

insert into Nurse
values (003,'assistant'),
	   (008,'screening');


insert into Nurse
values (011,'data entry'),
	   (013,'assistant'),
	   (018,'laboratory'),
	   (002,'laboratory');

insert into FFile
values(00001,003),
	  (00002,008);

insert into FFile
values(00003,003),
	  (00004,008),
	  (00005,003),
	  (00006,008),
	  (00007,003),
	  (00008,008),
	  (00009,003),
	  (00010,008);

insert into FFile
values(00011,011),
	  (00012,011),
	  (00013,011),
	  (00014,011),
	  (00015,011),
	  (00016,011),
	  (00017,011),
	  (00018,011),
	  (00019,011),
	  (00020,011);

insert into invoice
values (1000001230,'20200805',700,'mask order'),
	   (1000001231,'20210608',800,'medications'),
	   (1000001232,'20220305',350,'machine purchase'),
	   (1000001233,'20201201',425,'printing fees'),
	   (1000001234,'20201103',600,'fuel order'),
	   (1000001235,'20201227',100,'locker fixing'),
	   (1000001236,'20211203',300,'needles order'),
	   (1000001237,'20220515',900,'gloves order'),
	   (1000001238,'20220913',250,'paper order'),
	   (1000001239,'20210709',130,'mask order');

insert into invoice_payment
values(1000001230,007,1111001233),
	  (1000001231,007,1111001234),
	  (1000001232,007,1111001237),
	  (1000001233,007,1111001233),
	  (1000001234,007,1111001234),
	  (1000001235,007,1111001237),
	  (1000001236,007,1111001233),
	  (1000001237,007,1111001234),
	  (1000001238,007,1111001237),
	  (1000001239,007,1111001233);

insert into room
values(101,1,'w'),
	  (102,0,'I'),
	  (103,0,'E'),
	  (104,1,'p');

insert into room
values(105,1,'D'),
	  (106,0,'S'),
	  (107,0,'D'),
	  (108,1,'D');

select * from room;

insert into IsolationRoom
values(102,1);

insert into manager
values (010,001),
	   (010,002),
	   (010,003),
	   (010,004),
	   (010,005),
	   (010,006),
	   (010,007);

insert into manager
values (020,012),
	   (015,013),
	   (020,014),
	   (020,016),
	   (015,011),
	   (015,012),
	   (020,017);

insert into oorder
values(3000012350,'mask order','20200102','mask',100,1,100,007),
	  (3000012351,'needles order','20200607','needle',50,2,100,007),
	  (3000012352,'gloves order','20211103','glove',150,2,300,007),
	  (3000012353,'paper order','20220209','paper',500,1,500,007);

insert into oorder
values(3000012354,'mask order','20201203','mask',100,1,100,007),
	  (3000012355,'needles order','20210607','needle',50,2,100,007),
	  (3000012356,'gloves order','20220903','glove',150,2,300,007),
	  (3000012357,'paper order','20211103','paper',150,2,300,007),
	  (3000012358,'gloves order','20211103','glove',150,2,300,007),
	  (3000012359,'paper order','20220309','paper',500,1,500,007);

insert into triage
values (20009870,'20200806','diabeties','pollen','flu'),
	   (20009871,'20210906','cancer','none','fever'),
	   (20009872,'20200124','none','peanuts','stomach ache'),
	   (20009873,'20211203','none','none','head ache'),
	   (20009874,'20200908','none','pollen','diarrhea'),
	   (20009875,'20200724','asthma','animal dander','flu');

insert into triage
values (20009876,'20200806','diabeties','pollen','flu'),
	   (20009877,'20210906','cancer','none','fever'),
	   (20009878,'20200124','none','peanuts','stomach ache'),
	   (20009879,'20211203','none','none','head ache'),
	   (20009880,'20200908','none','pollen','diarrhea'),
	   (20009881,'20200724','asthma','animal dander','flu'),
	   (20009882,'20200908','heart','pollen','flu'),
	   (20009883,'20210908','cancer','pollen','head ache'),
	   (20009884,'20200308','none','pollen','flu'),
	   (20009885,'20201108','none','animal dander','fever'),
	   (20009886,'20200927','asthma','pollen','fever'),
	   (20009887,'20220908','asthma','animal dander','fever'),
	   (20009888,'20211008','diabeties','peanuts','stomach ache'),
	   (20009889,'20201108','diabeties','peanuts','diarrhea'),
	   (20009890,'20200508','none','pollen','flu');

insert into patient
values(10001,'samir','jihad','ghanem','19971201','male','married',
	   'beirut',70654321,101,00001,20009870),
	   (10002,'walid','kamel','ashraf','20000211','male','single',
	   'beirut',71344566,103,00002,20009871),
	   (10003,'khodor','murad','zakaria','20020501','male','single',
	   'beirut',76322422,101,00003,20009872),
	   (10004,'hanin','walid','dirawi','19951201','female','married',
	   'beirut',03211877,104,00004,20009873),
	   (10005,'hala','walid','hakim','19940111','female','married',
	   'beirut',03447665,103,00005,20009874),
	   (10006,'sara','raed','zahraman','19990403','female','single',
	   'beirut',76233455,101,00006,20009875);

insert into patient
values(10007,'samir','walid','khair','19971201','male','married',
	   'beirut',70654321,105,00007,20009876),
	   (10008,'walid','samir','khair','20000211','male','single',
	   'beirut',null,107,00008,20009877),
	   (10009,'khodor','samir','khair','20020501','male','single',
	   'beirut',null,108,00009,20009878),
	   (10010,'hanin','khodor','khair','19951201','female','married',
	   'beirut',03211877,105,00010,20009879),
	   (10011,'hala','walid','hakim','19940111','female','married',
	   'beirut',03447665,105,00011,20009880),
	   (10012,'sara',null,'idris','19990403','female','single',
	   'beirut',76233455,107,00012,20009881),
	   (10013,'ayman','kamel','ibrahim','20000211','male','single',
	   'beirut',71344566,108,00013,20009882),
	   (10014,'bilal','murad','imam','20020501','male','single',
	   'beirut',76322422,105,00014,20009883),
	   (10015,'hanin','walid','dirawi','19951201','female','married',
	   'beirut',03211877,107,00015,20009884),
	   (10016,'hala','walid','dirawi','19940111','female','married',
	   'beirut',03447665,108,00016,20009885),
	   (10017,'rayan','mohamad','zahraman','19990403','female','single',
	   'beirut',76233455,105,00017,20009886),
	   (10018,'ahmad','mustafa','ashraf','20000211','male','single',
	   'beirut',71344566,105,00018,20009887),
	   (10019,'khodor','murad','zakaria','20020501','male','single',
	   'beirut',76322422,105,00019,20009888),
	   (10020,'khadija','murad','zakaria','19951201','female','married',
	   'beirut',03211877,107,00020,20009889),
	   (10021,'hamza','murad','zakaria','20020501','male','single',
	   'beirut',76322422,108,00003,20009890);

insert into medicalPrescription
values(40001270,'pain killer','20200507',10004,004),
	  (40001271,'fever','20200507',10002,004),
	  (40001272,'stomach ache','20200507',10003,004);

insert into medication
values(60002340,'medication1','20240101',80,104,006,null),
	  (60002341,'medication2','20231201',100,null,006,10004),
	  (60002342,'medication3','20221228',60,null,006,10002),
	  (60002343,'medication4','20230501',90,104,006,null),
	  (60002344,'medication5','20230401',50,104,006,null);

insert into patient_education
values(10002310,'20200507 09:34:44 AM',10001,003),
	  (10002311,'20210409 10:40:43 AM',10002,008),
	  (10002312,'20221201 01:19:57 PM',10003,003),
	  (10002313,'20201225 03:14:13 PM',10004,008);

insert into patient_education
values(10002310,'20200506 08:34:44 AM',10001,011),
	  (10002310,'20210410 09:44:45 AM',10002,013),
	  (10002310,'20221211 10:24:34 AM',10003,018),
	  (10002312,'20200115 11:14:24 AM',10004,011),
	  (10002312,'20220201 11:15:14 AM',10005,018),
	  (10002314,'20221101 10:35:43 AM',10006,018),
	  (10002311,'20221021 01:06:45 PM',10007,018),
	  (10002313,'20201201 02:09:57 PM',10011,018),
	  (10002310,'20210213 03:10:21 PM',10012,018),
	  (10002312,'20200514 03:56:13 PM',10013,018),
	  (10002310,'20210423 01:37:17 PM',10019,018);
	  
select * from Education;
select *from Patient_Education;

insert into patient_isolation
values(10006,102);

insert into patient_isolation
values(10002,102),
	  (10016,102),
	  (10018,102),
	  (10020,102);

insert into services
values(70008710,'laboratory test',20),
	  (70008711,'radiology test',30),
	  (70008712,'physical therapy',50),
	  (70008713,'counsultation',20);

insert into patient_service
values(70008710,'20200709',10001),
	  (70008711,'20200112',10002),
	  (70008712,'20210806',10003),
	  (70008713,'20220424',10004);

insert into patient_service
values(70008712,'20200709',10011),
	  (70008711,'20210809',10012),
	  (70008711,'20220305',10013),
	  (70008710,'20221205',10013),
	  (70008710,'20201223',10015),
	  (70008710,'20200306',10016),
	  (70008713,'20200506',10017),
	  (70008713,'20201026',10016),
	  (70008713,'20211003',10018);

insert into vitalSigns
values(80000960,'temperature','37'),
	  (80000961,'heart rate','60-80/min'),
	  (80000962,'breathing rate','12-18/s'),
	  (80000963,'blood pressure','90/60-120/180');

insert into patient_vitalSign
values('20200506 10:34:36 AM',37,80000960,10001,00001,003),
	  ('20220807 11:54:36 AM',66,80000961,10002,00002,008),
	  ('20210223 08:33:25 AM',13,80000962,10003,00003,003),
	  ('20200908 01:53:15 PM',90/60,80000963,10001,00001,008);

insert into patient_vitalSign
values('20200416 10:34:36 AM',37,80000960,10001,00011,003),
	  ('20220817 11:54:36 AM',40,80000960,10002,00002,008),
	  ('20210413 08:33:25 AM',38,80000960,10003,00016,003),
	  ('20210918 01:53:15 PM',39,80000960,10001,00018,008);

insert into qualityIndicator
values(90004360,'sanitization','hand sanitization'),
	  (90004361,'sustainability','sorting garbage'),
	  (90004362,'eradication','eliminate infection'),
	  (90004363,'records','save records');

insert into ActionPlan_party
values (90004360,1111001230,2020004131),
	   (90004361,1111001231,2020004132),
	   (90004362,1111001232,2020004133),
	   (90004363,1111001233,2020004134);

insert into quotation
values(5000056320,3000012350,1111001230),
	  (5000056321,3000012351,1111001231),
	  (5000056322,3000012352,1111001232),
	  (5000056323,3000012353,1111001233);

insert into receipt
values(400006790,'20210304',50,'blood test'),
	  (400006791,'20200907',30,'radiology'),
	  (400006792,'20200304',20,'counsultation'),
	  (400006793,'20200304',30,'echography'),
	  (400006794,'20211204',40,'teeth taken');

insert into receipt_delivery
values(400006790,10001,001),
	  (400006791,10002,002),
	  (400006792,10003,004),
	  (400006793,10004,003);

insert into reference
values('20210506 10:32:46 AM',10006,004,1111001235),
	  ('20201201 01:44:32 PM',10005,004,1111001236);

insert into result
values(33334560,'pending',null,null,001),
	  (33334561,'received','20200806',null,002),
	  (33334562,'delivered','20210304','20210309',008);

insert into result_externalparty
values(33334560,1111001232),
	  (33334561,1111001238),
	  (33334562,1111001238);

insert into rrule
values(44445680,'20200125','true',005),
	  (44445681,'20200304','true',005),
	  (44445682,'20211105','true',005),
	  (44445683,'20221201','false',005),
	  (44445684,'20221205','false',005);

insert into specimens
values(55559820,'20201207',33334560,001,10001),
	  (55559821,'20200801',33334561,008,10004),
	  (55559822,'20210228',33334562,008,10006);

insert into stock
values(66664510,'mask','face mask','medical','20230501',100,010),
	  (66664511,'needle','medical needle','medical','20230101',200,010),
	  (66664512,'glove','medical gloves','medical','20230201',300,010),
	  (66664513,'paper','white paper','normal','20240101',500,010);

insert into treatmentplan
values(77776530,'20200806','take medication',null,003),
	  (77776531,'20210704','serum','book an appointment',008),
	  (77776532,'20210704','serum','book an appointment',null);

insert into treatmentplan
values(77776533,'20210704','ecograohy','book an appointment',null),
	  (77776534,'20210704','physical therapy','book an appointment',018),
	  (77776535,'20210704','serum',null,008),
	  (77776536,'20210704','take medication','book an appointment',011),
	  (77776537,'20210704','take medication','book an appointment',null),
	  (77776538,'20210704','blood test','book an appointment',013),
	  (77776539,'20210704','blood test','book an appointment',008),
	  (77776540,'20211209','serum',null,null);

insert into treatment
values(20200670,77776530,10001,004),
	  (20200671,77776531,10002,004),
	  (20200672,77776532,10003,004);

insert into treatment
values(20200673,77776533,10011,012),
	  (20200674,77776534,10012,014),
	  (20200675,77776535,10020,016),
	  (20200676,77776536,10018,017),
	  (20200677,77776537,10019,019),
	  (20200678,77776538,10006,017),
	  (20200679,77776539,10015,017),
	  (20200680,77776540,10014,017);

insert into examination
values(10001,004,003),
	  (10002,004,008),
	  (10003,004,003),
	  (10004,004,008),
	  (10005,004,null);

insert into examination
values(10011,019,013),
	  (10013,017,018),
	  (10020,004,011),
	  (10016,016,011),
	  (10018,016,013),
	  (10019,017,018),
	  (10017,012,null);
