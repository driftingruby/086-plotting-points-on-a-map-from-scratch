json.array! @stores do |store|
  json.lat store.latitude
  json.lng store.longitude
  json.title store.name
  json.content StoresController.render(partial: 'stores/store',
                                       locals: { store: store }, 
                                       format: :html).squish
end