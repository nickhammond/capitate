namespace :install do
  
  task :default do
    # Choose profile, and load capistrano settings
    fetch(:profile)
        
    # These run after install task and install all the apps
    install_tasks.each do |task_name|
      after "install", task_name
    end
  end
  
end