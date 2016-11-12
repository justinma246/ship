Sequel.migration do
  change do
    alter_table :users do
      add_column :last_active, DateTime
    end
  end
end
