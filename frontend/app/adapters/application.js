import JSONAPIAdapter from '@ember-data/adapter/json-api';
import ENV from '../config/environment';

export default class ApplicationAdapter extends JSONAPIAdapter {
  namespace = 'api/v1';
  host = ENV.apiHost;
}