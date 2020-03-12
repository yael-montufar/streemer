module ApplicationHelper
  def qr_code_url(url)
    "https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=#{url}"
  end
end
