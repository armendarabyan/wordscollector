require './activerecord/words'

task :default => :migrate

desc "Run migrations"
task :migrate do
  ActiveRecord::Migrator.migrate('./activerecord/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
end
