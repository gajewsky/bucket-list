`import DS from 'ember-data'`

Milestone = DS.Model.extend
  title: DS.attr 'string'
  description: DS.attr 'string'
  completedAt: DS.attr 'string'
  createdAt: DS.attr 'string'

  challange: DS.belongsTo 'challange'

`export default Milestone`
