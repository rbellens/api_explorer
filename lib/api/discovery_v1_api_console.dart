library discovery_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'src/console_client.dart';

import "discovery_v1_api_client.dart";

/** Client to access the discovery v1 API */
class Discovery extends Client with ConsoleClient {

  final oauth2.OAuth2Console auth;

  Discovery([oauth2.OAuth2Console this.auth]);
}
