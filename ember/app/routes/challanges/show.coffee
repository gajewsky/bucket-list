`import Ember from 'ember'`

ChallangesShowRoute = Ember.Route.extend
  model: -> @store.findRecord('challange', params.challange_id)

`export default ChallangesShowRoute`
