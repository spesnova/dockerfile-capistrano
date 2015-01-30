desc "hostname"
task :hostname do
  on roles(:all) do
    puts capture("hostname")
  end
end
