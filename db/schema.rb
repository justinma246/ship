Sequel.migration do
  change do
    create_table(:schema_migrations) do
      column :filename, "varchar(255)", :null=>false
      
      primary_key [:filename]
    end
    
    create_table(:users) do
      primary_key :id
      column :provider, "varchar(255)"
      column :uid, "varchar(255)"
      column :name, "varchar(255)"
      column :oauth_token, "varchar(255)"
      column :oauth_expires_at, "timestamp"
    end
  end
end
Sequel.migration do
  change do
    self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20161112080434_create_users.rb')"
  end
end
