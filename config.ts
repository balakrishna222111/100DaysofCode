// Imports
import convict = require('convict');
import convict_format_with_validator = require('convict-format-with-validator');

// Add a validations
convict.addFormat(convict_format_with_validator.ipaddress); // for ip address

// Define a config schema
const config = convict({
  env: {
    doc: 'The application environment.',
    format: ['prod', 'dev', 'test', 'dockerEnvironment'],
    default: 'dev',
    env: 'NODE_ENV',
    arg: 'env'
  },
  ip: {
    doc: 'The IP address to bind.',
    format: 'ipaddress',
    default: '127.0.0.1',
    env: 'IP',
    arg: 'ip'
  },
  port: {
    doc: 'The port to bind.',
    format: 'port',
    default: 80,
    env: 'PORT',
    arg: 'port'
  },
  domain: {
    doc: 'The domain route for the SSO',
    format: String,
    default: 'localhost',
    env: 'DOMAIN',
    arg: 'domain'
  },
  kafka: {
    doc: 'Enable/disable the use of kafka messages and config for responses',
    format: Boolean,
    default: true,
    env: 'EN_KAFKA',
    arg: 'en-kafka'
  },
  providers: {
    tozny: {
      provider: {
        doc: 'Authentication provider for the MS',
        format: ['mock', 'tozny'],
        default: 'mock',
        env: 'AUTH_PROV',
        arg: 'auth-prov'
      },
      api_endpoint: {
        doc: 'API url of the auth provider',
        format: String,
        default: null,
        env: 'AUTH_API_URL',
        arg: 'auth-apiUrl'
      },
      realm: {
        doc: 'The realm set up in the auth provider admin dashboard',
        format: String,
        default: null,
        env: 'AUTH_PROV_REALM',
        arg: 'auth-realm'
      },
      registrationToken: {
        doc: 'Registration token from tozny admin dashboard',
        format: String,
        default: null,
        env: 'AUTH_TOKEN',
        arg: 'auth-token'
      }
    },
    host: {
      doc: 'The IP address to bind the REDIS server',
      format: String,  // needed to set the route to redis cache by the DNS instead of ip (ip causes error on connection and needs to be found set each deploy)
      default: '127.0.0.1',
      env: 'CACHE_HOST',
      arg: 'cache-host'
    },
    port: {
      doc: 'The port to bind.',
      format: 'port',
      default: 6379,
      env: 'CACHE_PORT',
      arg: 'cache-port'
    }
  },
  db: {
    provider: {
      doc: 'DB provider for the MS',
      format: ['mock', 'pg'],
      default: 'mock',
      env: 'DB_PROV',
      arg: 'db-prov'
    },
    host: {
      doc: 'Location of the DB',
      format: String,
      default: '127.0.0.1',
      env: 'DB_HOST',
      arg: 'db-host'
    },
    port: {
      doc: 'Port to bind to the DB',
      format: 'port',
      default: 5432,
      env: 'DB_PORT',
      arg: 'db-port'
    },
    user: {
      doc: 'User to access the DB',
      format: String,
      default: 'user',
      env: 'DB_USER',
      arg: 'db-user'
    },
    password: {
      doc: 'Password of the DB to be used',
      format: String,
      default: 'pass',
      env: 'DB_PASS',
      arg: 'db-pass',
      sensitive: true
    },
    database: {
      doc: 'Name of the DB to be used',
      format: String,
      default: 'usp',
      env: 'DB_DATABASE',
      arg: 'db-database'
    },
    ssl: {
      doc: 'Use SSL or Not',
      format: Object,
      default: {},
      env: 'DB_SSL',
      arg: 'db-ssl'
    }
  }
}
);

// Load environment dependent configuration from file
const env = config.get('env');
console.log('ENVIRONMENT IS ', env);
console.log('Config IS ', './config/' + env + '.json');

try {
  config.loadFile('./config/' + env + '.json');
} catch (e) {
  config.loadFile('../config/' + env + '.json');
}

// Perform environment variables validation
config.validate({ allowed: 'strict' });

// export the config module
export { config };
