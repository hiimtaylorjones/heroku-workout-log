import Model, { attr, hasMany } from '@ember-data/model';
export default class WorkoutModel extends Model {
  @attr('string') classification;
  @attr('string') condition;
  @attr('string') notes;

  @hasMany('units') units;
}
