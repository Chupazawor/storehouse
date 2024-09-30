puts 'Running seeds'

admin = User.find_by(first_name: 'admin', last_name: 'user', email: 'admin@example.com', type: 'AdminUser')
unless admin
  User.create(first_name: 'admin', last_name: 'user', email: 'admin@example.com', password: '123456', password_confirmation: '123456',
              type: 'AdminUser', confirmed_at: Time.now)
end
UserProfile.find_or_create_by!(address: 'Some country, Some address', phone_number: 1_234_567, user: AdminUser.last)

# Store.create(store_name: 'Test store', description: 'Its a test store', working_hours: )
