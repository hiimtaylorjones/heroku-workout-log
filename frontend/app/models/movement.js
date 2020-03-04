import Model, { attr, hasMany } from '@ember-data/model';

export default class MovementModel extends Model {
  @hasMany('unit') units;
  
  @attr('string') title;
  @attr('string') description;
}
