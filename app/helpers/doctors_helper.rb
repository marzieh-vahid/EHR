module DoctorsHelper
	def gravatar_for(doctor, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(doctor.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: doctor.pid, class: "gravatar")
  end
end
