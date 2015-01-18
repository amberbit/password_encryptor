require 'password_encryptor'

describe PasswordEncryptor do
  it 'should encrypt passwords using BCrypt' do
    expect(PasswordEncryptor.encrypt('password') == 'password').to eq(true)
  end
end
