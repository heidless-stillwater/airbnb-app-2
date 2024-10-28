namespace :logins do
  desc "seed users"
  task seed_users: :environment do
    User.destroy_all

    # admin username
    email = "heidlessemail05@gmail.com"
    password = "password"
    user = User.create!(
                  email: email,
                  password: password,
                  password_confirmation: password
                )
    profile = user.profile
    profile.update address_1: "99 Bd Haussmann, 75008 Paris, France", city: "Paris", state: "Île-de-France", country: "France", zip_code: "75008"

  end
end
