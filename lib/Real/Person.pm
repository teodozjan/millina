# Person can be a citizen but don't have to. We also can
# have tourists and residents.
#

use Real::PersonId;
use Real::HumanLogic;
use Real::Relation;

#| This class will contain people relations
class Real::Person{
  has Real::PersonId $.id;
  has Real::HumanLogic $.ownLogic;

  has Real::Relation @!relations;

}
