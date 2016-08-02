`import Ember from 'ember'`

CategoriesEditRoute = Ember.Route.extend
  model: -> @store.findRecord('category', params.category_id)

  deactivate: -> @get('controller.model').rollbackAttributes()

`export default CategoriesEditRoute`
