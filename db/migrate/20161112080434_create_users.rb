Sequel.migration do
  change do

    create_table :users do
      primary_key :id
      String :provider
      String :uid
      String :name
      String :oauth_token
      DateTime :oauth_expires_at
    end

  end
end
