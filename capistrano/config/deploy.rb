lock "3.0.1"

set :format, :pretty
set :pty, true

#
# Log Level
#
set :log_level, case ENV["LOG_LEVEL"]
                when "trace" then :trace
                when "debug" then :debug
                when "info"  then :info
                when "warn"  then :warn
                when "error" then :error
                when "fatal" then :fatal
                else :info
                end
