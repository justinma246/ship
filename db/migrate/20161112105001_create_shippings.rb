Sequel.migration do
  change do

    create_table :shippings do
      primary_key :id
      Integer :user1_id
      Integer :user2_id
      Integer :judge_id
      Integer :pass_count
    end

  end
end
