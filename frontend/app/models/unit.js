import Model, { attr, belongsTo } from '@ember-data/model';

export default class UnitModel extends Model {
  @belongsTo('workout') workout;
  @belongsTo('movement') movement;
  @attr('string') descriptor;
  @attr('number') amount;
}
