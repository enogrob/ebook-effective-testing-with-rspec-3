#---
# Excerpted from "Effective Testing with RSpec 3",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rspec3 for more book information.
#---
require 'email_sender'

class DailySummary
  def initialize(email_sender: EmailSender.new)
    @email_sender = email_sender
  end

  def send_daily_summary(user_email, todays_messages)
    message_count = todays_messages.count
    thread_count  = todays_messages.map { |m| m[:thread_id] }.uniq.count
    subject       = 'Your daily message summary'
    body          = "You missed #{message_count} messages " \
                    "in #{thread_count} threads today"

    @email_sender.deliver(email: user_email, subject: subject, body: body)
  end
end
