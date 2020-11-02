# frozen_string_literal: true

class Dialogue < ApplicationRecord
  belongs_to :user
  belongs_to :partner
end
