
import 'dart:html';

import 'package:polymer/polymer.dart';
import 'api/discovery_v1_api_browser.dart';
import 'api/discovery_v1_api_client.dart';

@CustomTag('method-list')
class MethodListElement extends PolymerElement {


  @published
  List<RestMethod> methodList;

  Discovery discoveryClient = new Discovery();

  MethodListElement.created() : super.created();

  gotoMethod(Event e) {
    window.location.assign("${window.location.hash}/${e.currentTarget.dataset["href"]}");
  }
}
