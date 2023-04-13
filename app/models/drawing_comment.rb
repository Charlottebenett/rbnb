class DrawingComment < ApplicationRecord
  belongs_to :user
  belongs_to :draw
end
