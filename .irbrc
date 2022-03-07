require 'irb/completion'
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:AUTO_INDENT] = true
$: << '/home/hamza/.rbenv/versions/2.6.9/lib/ruby/gems/2.6.0/gems/awesome_print-1.9.2/lib'

require 'awesome_print'
AwesomePrint.irb!
