part of discovery_v1_api;

class ApisResource_ {

  final Client _client;


  ApisResource_(Client client) :
      _client = client;

  /**
   * Retrieve the description of a particular version of an api.
   *
   * [api] - Path parameter: 'api'.
   *
   * [version] - Path parameter: 'version'.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RestDescription> getRest(core.String api, core.String version, {core.Map optParams}) {
    var url = "apis/{api}/{version}/rest";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (api == null) paramErrors.add("api is required");
    if (api != null) urlParams["api"] = api;
    if (version == null) paramErrors.add("version is required");
    if (version != null) urlParams["version"] = version;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RestDescription.fromJson(data));
  }

  /**
   * Retrieve the list of APIs supported at this endpoint.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DirectoryList> list({core.Map optParams}) {
    var url = "apis";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DirectoryList.fromJson(data));
  }
}

