if Rails.env === 'production' 
  Rails.application.config.session_store :cookie_store, key: '_meals-prepped-nola-api', domain: 'meals-prepped-nola-api-json-api'
else
  Rails.application.config.session_store :cookie_store, key: '_meals-prepped-nola-api'
end