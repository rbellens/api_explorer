// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'package:polymer/polymer.dart';
import 'package:route_hierarchical/client.dart';
import 'api/discovery_v1_api_browser.dart';
import 'api/discovery_v1_api_client.dart';

/// A Polymer `<main-app>` element.
@CustomTag('main-app')
class MainApp extends PolymerElement {
  Discovery discoveryClient = new Discovery();

  @observable
  Route route;

  @observable
  DirectoryList directoryList;

  @observable
  RestDescription restDescription;

  @observable
  Map<String, RestMethod> methods;

  @observable
  RestMethod method;

  /// Constructor used to create instance of MainApp.
  MainApp.created() : super.created() {
    var router = new Router(useFragment: true);
    router.root
      ..addRoute(name: 'directory', path: '', enter: enterRoute, defaultRoute: true)
      ..addRoute(name: 'service', path: 'p/:name/:version', enter: enterRoute, mount: (router) {
      router..addRoute(name: 'method', path: '/:method', enter: enterRoute, leave: leaveRoute);
    })
    ..addRoute(name: 'allother', path: new RegExp(".*"), enter: enterRoute);

    router.listen();
  }

  enterRoute(RouteEvent e) {
    route = null;
    print("enter route ${e.route}");
    route = e.route;
  }

  leaveRoute(RouteEvent e) {
    route = e.route.parent;
  }

  routeChanged() {
    print("route changed $route");
    print(route.queryParameters);
    switch (route.name) {
      case "service":
        loadRest();
        break;
      case "method":
        loadMethod();
    }
  }
  ready() {
    super.ready();
    loadServices();
  }
  loadServices() async {
    directoryList = await discoveryClient.apis.list();
  }
  loadRest() async {
    restDescription = null;
    methods = null;
    method = null;
    var route = this.route;
    if (route.name=="method") route = route.parent;
    restDescription = await discoveryClient.apis.getRest(route.parameters["name"], route.parameters["version"]);
    methods = {}..addAll(new Map.fromIterable(restDescription.methods.values, key: (m)=>m.id));
    for (var r in restDescription.resources.values) {
      methods.addAll(new Map.fromIterable(r.methods.values, key: (m)=>m.id));
    }
  }
  loadMethod() async {
    method = null;
    if (methods==null) await loadRest();
    method = methods[route.parameters["method"]];
  }

}
