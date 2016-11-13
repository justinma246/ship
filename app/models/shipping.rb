# +------------+-----------+---------+---------+-------+-----+-----+
# |                           shippings                            |
# +------------+-----------+---------+---------+-------+-----+-----+
# | Column     | Ruby Type | DB Type | Default | Null? | PK? | FK? |
# +------------+-----------+---------+---------+-------+-----+-----+
# | id         | integer   | integer |    -    |   N   |  Y  |  N  |
# | user1_id   | integer   | integer |    -    |   Y   |  N  |  N  |
# | user2_id   | integer   | integer |    -    |   Y   |  N  |  N  |
# | judge_id   | integer   | integer |    -    |   Y   |  N  |  N  |
# | pass_count | integer   | integer |    -    |   Y   |  N  |  N  |
# +------------+-----------+---------+---------+-------+-----+-----+

class Shipping < Sequel::Model
end
