class ResetPasswordMailer < ApplicationMailer
  def reset_password_instructions(user, token, opts={})
    @token = token
    @user = user
    mail(to: @user.email, subject: "Instruções para redefinição de senha")
  end
end
