
import 'dart:html';

import 'package:paper_elements/paper_input.dart';
import 'package:polymer/polymer.dart';
import 'api/discovery_v1_api_browser.dart';
import 'api/discovery_v1_api_client.dart';
import 'package:http/http.dart' as http;
import 'package:http/browser_client.dart';
import 'dart:convert';
import 'dart:js' as js;

@CustomTag('method-form')
class MethodFormElement extends PolymerElement {

  @published
  RestMethod method;

  @published
  RestDescription service;

  @observable
  http.Response response;

  @observable
  http.Request request;

  @observable
  Map queryParameters = toObservable({});

  @observable
  String prettyJson;

  @observable
  dynamic bodyRequest;

  Discovery discoveryClient = new Discovery();

  MethodFormElement.created() : super.created();

  methodChanged() {
    response = null;
    request = null;
    queryParameters = toObservable({});
    prettyJson = null;
    bodyRequest = null;
  }

  execute() {
    request = null;
    response = null;
    prettyJson = null;

    Map parameters = new Map.from(queryParameters);

    List<String> pathSegments = method.path.split("/");
    pathSegments = pathSegments.map((s) {
      if (s.startsWith("{")&&s.endsWith("}")) {
        s = parameters.remove(s.substring(1,s.length-1));
      }
      return s;
    }).toList();
    Uri url = Uri.parse(service.baseUrl.endsWith("/") ? service.baseUrl.substring(0,service.baseUrl.length-1) : service.baseUrl);
    print(url.pathSegments);
    print(pathSegments);
    url = new Uri(scheme: url.scheme, host: url.host, port: url.port, pathSegments: []..addAll(url.pathSegments)..addAll(pathSegments), queryParameters: parameters);

    var client = new BrowserClient();
    request = new http.Request(method.httpMethod, url);
    if (bodyRequest!=null) {
      request.body = JSON.encode(bodyRequest);
    }
    client.send(request)
    .then((r) {
      return http.Response.fromStream(r);
    })
    .then((r) {
      response = r;
    });
  }

  responseChanged() {

    prettyJson = response==null||response.body==null||response.body.isEmpty ? null : new JsonEncoder.withIndent(" ").convert(JSON.decode(response.body));
  }


}
