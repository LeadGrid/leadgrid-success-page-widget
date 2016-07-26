Spree::AppConfiguration.class_eval do
  preference :site_id, :string, default: ""
  preference :language, :string, default: ""
end
