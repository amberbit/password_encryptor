require 'password_encryptor'

describe PasswordEncryptor do
  it 'should encrypt passwords using BCrypt' do
    expect(PasswordEncryptor.encrypt('password') == 'password').to eq(true)
  end

  it 'should be possible to verify if password matches given hash' do
    hash = PasswordEncryptor.encrypt('password')
    expect(PasswordEncryptor.new('password').matches?(hash)).to eq(true)

    hash = PasswordEncryptor.encrypt('wrong')
    expect(PasswordEncryptor.new('password').matches?(hash)).to eq(false)

    hash = "invalid hash"
    expect(PasswordEncryptor.new('password').matches?(hash)).to eq(false)

    hash = ""
    expect(PasswordEncryptor.new('password').matches?(hash)).to eq(false)

    hash = nil
    expect(PasswordEncryptor.new('password').matches?(hash)).to eq(false)
  end

  it 'should be possible to verify password with == ' do
    hash = PasswordEncryptor.encrypt('password')
    expect(PasswordEncryptor.new('password') == hash).to eq(true)

    hash = PasswordEncryptor.encrypt('wrong')
    expect(PasswordEncryptor.new('password') == hash).to eq(false)
  end
end
