# conditionals8.rb

status = ['awake', 'tired'].sample

sleep_alert = if status == 'awake'
                "Be productive!"
              else
                "Go to sleep!"
              end

puts sleep_alert
