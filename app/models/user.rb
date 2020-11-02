# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :dialogues, dependent: :destroy
  has_many :partners, through: :dialogues, source: :partner

  has_many :reverse_dialogues, dependent: :destroy
  has_many :reverse_partners, through: :reverse_dialogues, source: :user
end
