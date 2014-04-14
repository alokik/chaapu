ThinkingSphinx::Index.define :food, :with => :active_record do
  indexes :name, :sortable => true
  indexes description
  indexes vegnonveg
  indexes cuisine(:name), :as => :cuisine_name
  indexes outlet(:name), :as => :outlet_name


  has price, vegnonveg created_at, updated_at
  has outlet(:name), :as => :outlet_name
  has cuisine(:name), :as => :cuisine_name
  has user(:name), :as =>:user_name

end