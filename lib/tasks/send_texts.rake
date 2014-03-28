task :send_texts => :environment do

  @events = Event.all
  
  @events.each do |event| 
    if Time.now > (event.due - 2.days)
      @user = User.find(event.user_id)
      @client = Twilio::REST::Client.new ENV["TWILIO_SID"], ENV["TWILIO_TOKEN"]
      @client.account.messages.create(
         :from => ENV["TWILIO_NUMBER"],
         :to => ("+1" + @user.phone),
        :body => "YOU SHOULD CHECK YOUR CHECK LIST..AND CALL YOUR MOTHER."
      )
    end
      
  end
  
end
