Sequel.migration do
  change do
    alter_table :users do
      add_column :age, Integer
      add_column :gender, String
      add_column :interested_in, String
      add_column :bio, String
      add_column :ships, Integer
    end
  end
end
