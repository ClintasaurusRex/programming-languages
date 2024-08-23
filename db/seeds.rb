# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing data
ProgrammingLanguage.destroy_all

# Create seed data
programming_languages = [
  {
    title: 'Ruby',
    description: 'A dynamic, open source programming language with a focus on simplicity and productivity.',
    link: 'https://www.ruby-lang.org/'
  },
  {
    title: 'Python',
    description: 'An interpreted, high-level and general-purpose programming language.',
    link: 'https://www.python.org/'
  },
  {
    title: 'JavaScript',
    description: 'A lightweight, interpreted, or just-in-time compiled programming language with first-class functions.',
    link: 'https://developer.mozilla.org/en-US/docs/Web/JavaScript'
  },
  {
    title: 'Go',
    description: 'An open source programming language that makes it easy to build simple, reliable, and efficient software.',
    link: 'https://golang.org/'
  },
  {
    title: 'Rust',
    description: 'A language empowering everyone to build reliable and efficient software.',
    link: 'https://www.rust-lang.org/'
  }
]

ProgrammingLanguage.create!(programming_languages)

puts "Created #{ProgrammingLanguage.count} programming languages"
