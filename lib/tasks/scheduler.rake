desc "This task recreates our job objects every five days"
task :recreate_jobs => :environment do
  puts "Recreating jobs..."
  Job.recreate_jobs
  puts "done."
end