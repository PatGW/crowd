# == Schema Information
#
# Table name: playlists
#
#  id          :integer          not null, primary key
#  artist_id   :string(255)
#  artist_name :string(255)
#  title       :string(255)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PlaylistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "gets a song from users playlist" do
    
  end
end
