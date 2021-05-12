# == Schema Information
#
# Table name: venues
#
#  id           :integer          not null, primary key
#  address      :string
#  name         :string
#  neighborhood :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Venue < ApplicationRecord

  def comments
    my_id = self.id
    matching_comments = Comment.where({ :venue_id => my_id })
    return matching_comments
  end

  def address
    my id = self.id
    matching_address = Venue.where({ :venue_id => my_id})

    venue_address = matching_address.at(0).address
    return venue_address
  end
end
