`import DS from 'ember-data'`

Category = DS.Model.extend
  title: DS.attr 'string'
  description: DS.attr 'string'
  createdAt: DS.attr 'string'

  challanges: DS.hasMany 'challange'

`export default Category`
