import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('challanges', function () {
    this.route('index', { path: '/' });
  });

  this.route('categories', function () {
    this.route('index', { path: '/' });
  });
});

export default Router;
