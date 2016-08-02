`import Ember from 'ember'`

ChallangesEditRoute = Ember.Route.extend
  model: -> @store.findRecord('challange', params.challange_id)

  deactivate: -> @get('controller.model').rollbackAttributes()

`export default ChallangesEditRoute`
