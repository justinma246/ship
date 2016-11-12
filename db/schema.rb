Sequel.migration do
  change do
    create_table(:sails) do
      primary_key :id
      column :user1_id, "integer"
      column :user2_id, "integer"
      column :pass, "Boolean"
    end
    
    create_table(:schema_migrations) do
      column :filename, "varchar(255)", :null=>false
      
      primary_key [:filename]
    end
    
    create_table(:shippings) do
      primary_key :id
      column :user1_id, "integer"
      column :user2_id, "integer"
      column :judge_id, "integer"
      column :pass_count, "integer"
    end
    
    create_table(:users) do
      primary_key :id
      column :provider, "varchar(255)"
      column :uid, "varchar(255)"
      column :name, "varchar(255)"
      column :oauth_token, "varchar(255)"
      column :oauth_expires_at, "timestamp"
      column :age, "integer"
      column :gender, "varchar(255)"
      column :interested_in, "varchar(255)"
      column :bio, "varchar(255)"
      column :ships, "integer"
      column :last_active, "timestamp"
    end
  end
end
              Sequel.migration do
                change do
                  self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20161112080434_create_users.rb')"
self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20161112103557_add_columns_to_users.rb')"
self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20161112105001_create_shippings.rb')"
self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20161112105343_add_last_access_to_users.rb')"
self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20161112110716_create_sails.rb')"
                end
              end
