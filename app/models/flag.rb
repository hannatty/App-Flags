class Flag < ApplicationRecord
    belongs_to :region #, optional:true
    validates :state, :acronym, :capital, presence: true
    validates :state, format: { with: /[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+/,
        message: "only allows letters" }
end
