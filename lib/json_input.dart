
import 'dart:html';

import 'package:polymer/polymer.dart';
import 'api/discovery_v1_api_client.dart';
import 'package:http/http.dart' as http;
import 'package:http/browser_client.dart';

@CustomTag('json-input')
class JsonInputElement extends PolymerElement {

  @published
  JsonSchema schema;

  @published
  dynamic value;

  @published
  RestDescription service;


  JsonInputElement.created() : super.created();

  addProperty(Event e) {
    var prop = e.currentTarget.value;
    if (prop=="-- add a property --") return;
    e.currentTarget.value = "-- add a property --";
    if (value==null) value = toObservable({});
    value[prop] = null;
    print(prop);
    print("add property $e $value ${value.runtimeType}");
  }

  removeProperty(Event e) {
    var prop = (e.currentTarget as HtmlElement).dataset["property"];
    if (value==null) return;
    (value as Map).remove(prop);
  }

  schemaChanged() {
    if (schema.$ref !=null) {
      schema = service.schemas[schema.$ref];
    }
  }
}
