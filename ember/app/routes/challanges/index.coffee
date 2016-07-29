`import Ember from 'ember'`

ChallangesIndexRoute = Ember.Route.extend
  model: -> @store.findAll('challange')

`export default ChallangesIndexRoute`
