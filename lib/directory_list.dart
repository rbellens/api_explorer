
import 'dart:html';

import 'package:polymer/polymer.dart';
import 'api/discovery_v1_api_client.dart';

@CustomTag('directory-list')
class DirectoryListElement extends PolymerElement {
  @published
  DirectoryList directoryList;

  DirectoryListElement.created() : super.created();




  gotoService(Event e) {
    window.location.assign(e.currentTarget.dataset["href"]);
  }
}
