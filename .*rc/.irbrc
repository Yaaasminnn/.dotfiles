#!/bin/ruby3.0

require 'irb/completion'

puts "#{`echo $(irb -v)`}"

IRB.conf[:SAVE_HISTORY] = 1000 # stores the last 1000 commands
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

IRB.conf[:PROMPT][:MY_PROMPT] = {
  :AUTO_INDENT => true,
  :PROMPT_I => "\033[31;1mruby:%02n>\033[0m ",   # normal prompt 
  :PROMPT_S => "ruby:%02n>\033[0m ",   # prompt used for continuated strings
  :PROMPT_C => "ruby:%02n-->\03[0m ", # prompt for a continuated statement
  :RETURN => "=>%s\n"           # format for the return value
}
IRB.conf[:PROMPT_MODE] = :MY_PROMPT # sets the prompt
