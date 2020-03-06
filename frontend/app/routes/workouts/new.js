import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';

export default class WorkoutsNewRoute extends Route {
  @service store;
  model() {
    return this.get('store').createRecord('workout');
  }
}
