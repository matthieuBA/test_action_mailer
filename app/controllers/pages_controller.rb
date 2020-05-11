class PagesController < ApplicationController
  def index
    user=User.create(name:"Féfé", email: "féfé@yopmail.com")
    UserMailer.welcome_email(user).deliver_now
  end
end
