Spree::Order.class_eval do
  belongs_to :store
  attr_accessible :store_id
  scope :by_store, lambda { |store| where(:store_id => store.id) }
end
