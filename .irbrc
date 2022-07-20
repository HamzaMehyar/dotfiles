require 'irb/completion'
IRB.conf[:SAVE_HISTORY] = 9000
IRB.conf[:AUTO_INDENT] = true
$: << '/home/hamza/.rbenv/versions/2.6.9/lib/ruby/gems/2.6.0/gems/awesome_print-1.9.2/lib'
$: << '/home/hamza/.rbenv/versions/2.6.9/lib/ruby/gems/2.6.0/gems/awesome_print-1.9.2/lib'
$: << '/home/hamza/.rbenv/versions/2.6.9/lib/ruby/gems/2.6.0/gems/rmagick-4.2.5/lib'

require 'awesome_print'
AwesomePrint.irb!
