class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: "---" },
    { id: 2, name: "袷" },
    { id: 3, name: "単" },
    { id: 4, name: "その他" }
  ]

  include ActiveHash::Associations
  has_many :items

  end