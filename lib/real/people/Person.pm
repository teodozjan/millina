# Person can be a citizen but don't have to. We also can
# have tourists and residents. We are not interested in
# storing any information here it should be stored in
# departments to provide consistency
class PersonId{
has $.dnaChecksum;
}

class Person{
  has PersonId $.id;
  has $!ownLogic;

}
