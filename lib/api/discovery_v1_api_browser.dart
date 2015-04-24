library discovery_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'src/browser_client.dart';
import "discovery_v1_api_client.dart";

/** Client to access the discovery v1 API */
class Discovery extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Discovery([oauth.OAuth2 this.auth]);
}
