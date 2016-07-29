`import DS from 'ember-data'`

Challange = DS.Model.extend
  title: DS.attr 'string'
  description: DS.attr 'string'
  completedAt: DS.attr 'string'
  createdAt: DS.attr 'string'

  milestones: DS.hasMany 'milestone'
  category: DS.belongsTo 'category'

`export default Challange`
