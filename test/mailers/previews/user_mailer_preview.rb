# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at
  # http://https://f247cd0b4d3a419fad71e6bf8cb4adc3.vfs.cloud9.ap-northeast-1.amazonaws.com//rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at
  # http://https://f247cd0b4d3a419fad71e6bf8cb4adc3.vfs.cloud9.ap-northeast-1.amazonaws.com//rails/mailers/user_mailer/password_reset
  def password_reset
    user = User.first
    user.reset_token = User.new_token
    UserMailer.password_reset(user)
  end
end
