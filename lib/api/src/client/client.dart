part of discovery_v1_api;

abstract class Client extends ClientBase {
  core.String basePath = "/api/discovery/v1/";
  core.String rootUrl = "http://localhost:8080/";

  //
  // Resources
  //

  ApisResource_ get apis => new ApisResource_(this);

  //
  // Parameters
  //

  //
  // Methods
  //
}
