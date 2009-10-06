namespace :fake do
  desc "Create 10 fake students"
  task :students => :environment do
    10.times do
      Student.create( :first_name => Faker::Name.first_name,
                      :last_name => Faker::Name.last_name,
                      :gender => ['male', 'female'].rand)
      puts " * student created"
    end
  end
end