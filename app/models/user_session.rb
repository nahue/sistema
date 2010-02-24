class UserSession < Authlogic::Session::Base
  authenticate_with Usuario
end