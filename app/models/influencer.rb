class Influencer < ApplicationRecord
  belongs_to :user
  belongs_to :category
  def image_tag(file_name, args)
    image_tag file_name, args
  end
end
