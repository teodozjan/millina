use Real::PersonId;

class Law::Activities::ChildRegistration{
	has Date $.bornDate;
	has Real::PersonId $.parentMaleId;
	has Real::PersonId $.parentFemaleId;
	has Real::PersonId $.childId;
}
