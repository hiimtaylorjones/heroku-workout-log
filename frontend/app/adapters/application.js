import JSONAPIAdapter from '@ember-data/adapter/json-api';
import ENV from '../config/environment';

let options = {

}

if (ENV.apiHost) {
  options.host = ENV.apiHost;
}

export default JSONAPIAdapter(options);