`import Ember from 'ember'`

ChallangesEditController = Ember.Controller.extend
  actions:
    save: ->
      @get('model').save().then =>
        @transitionToRoute 'challanges.show', @get('model')

    cancel: -> @transitionToRoute 'challanges.show', @get('model')

`export default ChallangesEditController`
