puts 'Running seeds'
User.create_or_find_by!(first_name: 'admin', last_name: 'user', password: '123456', email: 'admin@example.com',
                        type: 'AdminUser', confirmed_at: Time.now)
