class Bin < ApplicationRecord
  before_create :generate_key

  validates_presence_of :text

  private

  def generate_key
    self.key = Digest::MD5.hexdigest([Time.now, rand].join)
  end
end