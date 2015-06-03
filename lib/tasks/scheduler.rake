desc "This task recreates our job objects every five days"
task :recreate_jobs => :environment do
  puts "Running recreate_jobs rake task..."
  d = Date.today.mday # day of the month
  if (d % 5) == 0 # every 5th day
  	puts "Recreating jobs..."
  	Job.recreate_jobs
  	puts "done."
  end
end