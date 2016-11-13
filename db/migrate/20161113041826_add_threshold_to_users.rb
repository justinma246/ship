Sequel.migration do
  change do
    alter_table :users do
      add_column :threshold, Integer
    end
  end
end
