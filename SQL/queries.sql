use IMC_Project;
select E.employeeID,Fname,Lname
from Employee E
where not exists(select *
		from  Invoice_payment I
		where E.employeeID= I.employeeID);

 
select d.doctorID, Fname, lname, count(t.trNo) as countOfTreatment
from Employee, doctor d, Treatment t
where employeeID=d.doctorID and d.doctorID=t.doctorID
group by d.doctorID, fname, lname
order by countOfTreatment desc;

select p.patientNo, Fname, lName 
from patient p, Triage t
where p.triageNo= t.triageNo
		and t.allergies like 'pollen';

select p.patientNo, fName, specimensNo
from Specimens s, Result r, patient p
where s.patientNo=p.patientNo
	and s.resultNo=r.resultNo
	and r.resultStatus='delivered';

select p.patientNo, p.fName
from Patient p, Patient_Isolation pi, Patient_VitalSign pv, vitalSigns v
where p.patientNo= pi.patientNo
	and p.patientNo=pv.patientNo
	and pv.VitalSignNo=v.VitalSignNo
	and v.VitalSignName='temperature'
	and pv.value>37;

select e.TopicNo, topicName, count(p.patientNo) as numberOfPatient
from Education E, Patient_Education pe, Patient p
where e.TopicNo=pe.topicNo
	and pe.patientNo= p.patientNo
group by e.TopicNo, e.topicName
order by numberOfPatient asc;

select e.employeeID, e.fName, e.lName, count(f.fileNo) as numberOfFile
from employee e, FFile f
where e.employeeID= f.employeeID
group by e.employeeID, e.fName, e.lName
having count(f.fileNo)> 3;

select o.orderNo, o.ItemName, e.fName
from oorder o, approvalForm a, employee e
where o.employeeID=e.employeeID
	and o.orderNo= a.orderNo
	and a.formStatus='approved';

select s.serviceNo, s.serviceType, count(ps.patientNo) as numberOfPatient
from services s, patient_service ps
where s.serviceNo=ps.serviceNo 
group by s.serviceNo, s.serviceType
order by numberOfPatient asc;

select p.patientNo, p.fName, AVG(r.amount) as avgPayment
from Receipt r, Receipt_Delivery rd, Patient p
where r.receiptNo= rd.receiptNo
	and rd.patientNo=p.patientNo
group by p.patientNo, p.fName;

select employeeID, fName, lname, address
from employee
where address != 'beirut';

select a.announcementNo, a.announcementDesc, ep.PartyName
from Announcement a, Announcement_Party ap, ExternalParty ep
where a.announcementNo= ap.announcementNo
	and ap.partyID= ep.partyID
	and ep.classification='hospital';


select distinct m.managerID, e.fName, e.lName
from  Manager m, Employee e 
where  m.managerID=e.employeeID
	and not exists (select *
		from   Certificate c
		where e.employeeID=c.employeeID);

select sum(i.amount) as sumOfInvoices
from Invoice I, Invoice_payment ip
where i.invoiceDate<'20210101';

select managerID, fName, lName, count(e.employeeID) as numberOfEmployee
from Manager m, employee e
where m.managerID=e.employeeID
group by managerID, fname, lname
order by numberOfEmployee desc;



