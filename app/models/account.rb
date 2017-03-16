# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  subdomain  :string
#  owner_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Account < ApplicationRecord
	
	RESTRICTED_SUBDOMAINS = %w(www)

	validates :subdomain, presence: true, 
												uniqueness: { case_sensitive: false },
												format: { with: /\A[\w\-]+\Z/i, message: "contains invalid characters" },
												exclusion: { in: RESTRICTED_SUBDOMAINS, message: 'restricted' }

	before_validation :downcase_subdomain

private 

	def downcase_subdomain
		self.subdomain = subdomain.try(:downcase)
	end

end
