`import Ember from 'ember'`

CategoriesShowRoute = Ember.Route.extend
  model: -> @store.findRecord('category', params.category_id)

`export default CategoriesShowRoute`
