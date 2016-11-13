# +----------+-----------+---------+---------+-------+-----+-----+
# |                            sails                             |
# +----------+-----------+---------+---------+-------+-----+-----+
# | Column   | Ruby Type | DB Type | Default | Null? | PK? | FK? |
# +----------+-----------+---------+---------+-------+-----+-----+
# | id       | integer   | integer |    -    |   N   |  Y  |  N  |
# | user1_id | integer   | integer |    -    |   Y   |  N  |  N  |
# | user2_id | integer   | integer |    -    |   Y   |  N  |  N  |
# | pass     | boolean   | Boolean |    -    |   Y   |  N  |  N  |
# +----------+-----------+---------+---------+-------+-----+-----+

class Sail < Sequel::Model
	
end
