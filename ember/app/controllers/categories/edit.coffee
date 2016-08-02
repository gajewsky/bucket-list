`import Ember from 'ember'`

CategoriesEditController = Ember.Controller.extend
  actions:
    save: ->
      @get('model').save().then =>
        @transitionToRoute 'categories.show', @get('model')

    cancel: -> @transitionToRoute 'categories.show', @get('model')

`export default CategoriesEditController`
