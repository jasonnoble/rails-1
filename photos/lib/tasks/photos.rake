namespace :photos do
  desc "Ponownie zainicjalizowanie srodowiska aplikacji"
  task :reset => :environment do
    Rake::Task["db:migrate:reset"].invoke
    Rake::Task["db:fixtures:load"].invoke
  end
end
