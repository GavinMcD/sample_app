# must restart spork when running factory girl

Factory.define :user do |user|
  user.name                   "Gavin McDermott"
  user.email                  "gavin@gmail.com"
  user.password               "foobar"
  user.password_confirmation  "foobar"
end