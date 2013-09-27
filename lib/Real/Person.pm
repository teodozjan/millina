# Person can be a citizen but don't have to. We also can
# have tourists and residents.
#

use Real::PersonId;
use Real::HumanLogic;

#| This class will contain people relations
class Real::Person{
  has Real::PersonId $.id;
  has Real::HumanLogic $.ownLogic;

  has Real::PersonId $!bioFather;
  has Real::PersonId $!bioMother;

  has Real::PersonId $!partner;
  has Real::PersonId @!children;

}
