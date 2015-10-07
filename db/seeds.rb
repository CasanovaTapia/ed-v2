# Create Industries
Industry.delete_all
Industry.create!(title: "fine arts")
Industry.create!(title: "film")
Industry.create!(title: "photography")
Industry.create!(title: "pr/marketing")
Industry.create!(title: "fashion")
Industry.create!(title: "digital media")
Industry.create!(title: "interior design")
Industry.create!(title: "music")
industries = Industry.all
