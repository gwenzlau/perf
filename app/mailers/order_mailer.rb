class OrderMailer < ActionMailer::Base
  default from: "from@example.com"

  def thanks_email(order)
  	@order = order
  	@url = 'http://localhost:3000/orders'
  	mail(to: @order.email, subject: 'Your Nosy Parker sample is on the way!')
  end
end
