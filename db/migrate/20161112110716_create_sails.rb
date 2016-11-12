Sequel.migration do
  change do

    create_table :sails do
      primary_key :id
      Integer :user1_id
      Integer :user2_id
      Boolean :pass
    end

  end
end
