module ApplicationHelper
  def qr_code_url(url)
    "https://api.qrserver.com/v1/create-qr-code/?size=250x250&data=#{url}"
  end
end
