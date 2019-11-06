puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'canaille',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0123456789',
    category:     'french'
  },
  {
    name:         'mamamia',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0123456789',
    category:     'italian'
  },
    {
    name:         'dragon',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0123456789',
    category:    'chinese'
  },
    {
    name:         'mcdo',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0123456789',
    category:    'japanese'
  },
    {
    name:         'hole',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0123456789',
    category:    'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
