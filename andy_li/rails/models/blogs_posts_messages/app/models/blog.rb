class Blog < ActiveRecord::Base
  has_many :posts, dependent: :delete_all
  validates :name, :desc,  presence: true

end
