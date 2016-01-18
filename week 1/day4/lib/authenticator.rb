class Authenticator
  def initialize(correct_username, correct_password)
    @correct_username = correct_username
    @correct_password = correct_password
  end

  def valid_credentials?(username, password)
    if username == @correct_username && password == @correct_password
      true
    else
      false
    end
  end
end