`import Ember from 'ember'`

CategoriesIndexRoute = Ember.Route.extend
  model: -> @store.findAll('category')

`export default CategoriesIndexRoute`
