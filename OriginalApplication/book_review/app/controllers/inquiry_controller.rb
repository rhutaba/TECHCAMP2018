class InquiryController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end
end
