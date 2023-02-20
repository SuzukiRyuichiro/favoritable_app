# frozen_string_literal: true

User.destroy_all

def create_users
  User.create(email: 'mail@mail.com', password: '123123')
  User.create(email: 'mail@test.com', password: '123123')

  puts "Created #{User.all.count} users!"
end

def create_products; end

create_users
