import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {

  this.resource('challanges', function () {
    this.route('index', { path: '/' });
    this.route('show', { path: ':challange_id' });
    this.route('edit', { path: ':challange_id/edit' });
    this.route('new');
  });

  this.resource('categories', function () {
    this.route('index', { path: '/' });
    this.route('show', { path: ':categoty_id' });
    this.route('edit', { path: ':categoty_id/edit' });
    this.route('new');
  });
});

export default Router;
