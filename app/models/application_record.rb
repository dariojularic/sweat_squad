class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end

# rails g model SportEvent address:string description:text start_at:datetime latitude:float longitude:float sport:string user:references

# rails g model Message content:text user:references sport_event:references

# rails g model Invitation accepted:boolean user:references sport_event:references

# rails g model Review rating:integer content:text user:references sport_event:references

# domain name

# user first name, last name, username, password??, email???
