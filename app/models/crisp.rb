class Crisp < ApplicationRecord
    belongs_to :user
    has_many :reviews

    validates :name, :crisp_img, presence: true
    validates :name, uniqueness: true

    has_attached_file :crisp_img, styles: { crisp_index: "250x350>", crisp_show: "325x475>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :crisp_img, content_type: /\Aimage\/.*\z/
end

  