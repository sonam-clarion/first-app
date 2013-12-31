class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      # tracker = Mixpanel::Tracker.new('a90816c00c4facfe1a513e9b2d89a9d1')
      # tracker.track('Contact User', {'Messages Sent' => 1})
      flash.now[:error] = nil
      flash.now[:notice] = 'Your message was successfully delivered.'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
