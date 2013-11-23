require "resque/tasks"

task "resque:setup" => :environment

desc "requeue resque failed jobs"
task "resque:requeue_failed" do
  (Resque::Failure.count-1).downto(0).each do |i|
    Resque::Failure.requeue(i)
    Resque::Failure.remove(i)
  end
end