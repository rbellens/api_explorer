part of discovery_v1_api;

class RestDescription {

  core.String kind;

  core.String etag;

  core.String discoveryVersion;

  core.String id;

  core.String name;

  core.String canonicalName;

  core.String version;

  core.String revision;

  core.String title;

  core.String description;

  core.String ownerDomain;

  core.String ownerName;

  core.String packagePath;

  RestDescriptionIcons icons;

  core.String documentationLink;

  core.List<core.String> labels;

  core.String protocol;

  core.String baseUrl;

  core.String basePath;

  core.String rootUrl;

  core.String servicePath;

  core.String batchPath;

  core.Map<core.String, JsonSchema> parameters;

  RestDescriptionAuth auth;

  core.List<core.String> features;

  core.Map<core.String, JsonSchema> schemas;

  core.Map<core.String, RestMethod> methods;

  core.Map<core.String, RestResource> resources;

  /** Create new RestDescription from JSON data */
  RestDescription.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("discoveryVersion")) {
      discoveryVersion = json["discoveryVersion"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("canonicalName")) {
      canonicalName = json["canonicalName"];
    }
    if (json.containsKey("version")) {
      version = json["version"];
    }
    if (json.containsKey("revision")) {
      revision = json["revision"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("ownerDomain")) {
      ownerDomain = json["ownerDomain"];
    }
    if (json.containsKey("ownerName")) {
      ownerName = json["ownerName"];
    }
    if (json.containsKey("packagePath")) {
      packagePath = json["packagePath"];
    }
    if (json.containsKey("icons")) {
      icons = new RestDescriptionIcons.fromJson(json["icons"]);
    }
    if (json.containsKey("documentationLink")) {
      documentationLink = json["documentationLink"];
    }
    if (json.containsKey("labels")) {
      labels = json["labels"].toList();
    }
    if (json.containsKey("protocol")) {
      protocol = json["protocol"];
    }
    if (json.containsKey("baseUrl")) {
      baseUrl = json["baseUrl"];
    }
    if (json.containsKey("basePath")) {
      basePath = json["basePath"];
    }
    if (json.containsKey("rootUrl")) {
      rootUrl = json["rootUrl"];
    }
    if (json.containsKey("servicePath")) {
      servicePath = json["servicePath"];
    }
    if (json.containsKey("batchPath")) {
      batchPath = json["batchPath"];
    }
    if (json.containsKey("parameters")) {
      parameters = _mapMap(json["parameters"], (parametersItem) => new JsonSchema.fromJson(parametersItem));
    }
    if (json.containsKey("auth")) {
      auth = new RestDescriptionAuth.fromJson(json["auth"]);
    }
    if (json.containsKey("features")) {
      features = json["features"].toList();
    }
    if (json.containsKey("schemas")) {
      schemas = _mapMap(json["schemas"], (schemasItem) => new JsonSchema.fromJson(schemasItem));
    }
    if (json.containsKey("methods")) {
      methods = _mapMap(json["methods"], (methodsItem) => new RestMethod.fromJson(methodsItem));
    }
    if (json.containsKey("resources")) {
      resources = _mapMap(json["resources"], (resourcesItem) => new RestResource.fromJson(resourcesItem));
    }
  }

  /** Create JSON Object for RestDescription */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (discoveryVersion != null) {
      output["discoveryVersion"] = discoveryVersion;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (canonicalName != null) {
      output["canonicalName"] = canonicalName;
    }
    if (version != null) {
      output["version"] = version;
    }
    if (revision != null) {
      output["revision"] = revision;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (ownerDomain != null) {
      output["ownerDomain"] = ownerDomain;
    }
    if (ownerName != null) {
      output["ownerName"] = ownerName;
    }
    if (packagePath != null) {
      output["packagePath"] = packagePath;
    }
    if (icons != null) {
      output["icons"] = icons.toJson();
    }
    if (documentationLink != null) {
      output["documentationLink"] = documentationLink;
    }
    if (labels != null) {
      output["labels"] = labels.toList();
    }
    if (protocol != null) {
      output["protocol"] = protocol;
    }
    if (baseUrl != null) {
      output["baseUrl"] = baseUrl;
    }
    if (basePath != null) {
      output["basePath"] = basePath;
    }
    if (rootUrl != null) {
      output["rootUrl"] = rootUrl;
    }
    if (servicePath != null) {
      output["servicePath"] = servicePath;
    }
    if (batchPath != null) {
      output["batchPath"] = batchPath;
    }
    if (parameters != null) {
      output["parameters"] = _mapMap(parameters, (parametersItem) => parametersItem.toJson());
    }
    if (auth != null) {
      output["auth"] = auth.toJson();
    }
    if (features != null) {
      output["features"] = features.toList();
    }
    if (schemas != null) {
      output["schemas"] = _mapMap(schemas, (schemasItem) => schemasItem.toJson());
    }
    if (methods != null) {
      output["methods"] = _mapMap(methods, (methodsItem) => methodsItem.toJson());
    }
    if (resources != null) {
      output["resources"] = _mapMap(resources, (resourcesItem) => resourcesItem.toJson());
    }

    return output;
  }

  /** Return String representation of RestDescription */
  core.String toString() => JSON.encode(this.toJson());

}

class RestDescriptionIcons {

  core.String x16;

  core.String x32;

  /** Create new RestDescriptionIcons from JSON data */
  RestDescriptionIcons.fromJson(core.Map json) {
    if (json.containsKey("x16")) {
      x16 = json["x16"];
    }
    if (json.containsKey("x32")) {
      x32 = json["x32"];
    }
  }

  /** Create JSON Object for RestDescriptionIcons */
  core.Map toJson() {
    var output = new core.Map();

    if (x16 != null) {
      output["x16"] = x16;
    }
    if (x32 != null) {
      output["x32"] = x32;
    }

    return output;
  }

  /** Return String representation of RestDescriptionIcons */
  core.String toString() => JSON.encode(this.toJson());

}

class JsonSchema {

  core.String id;

  core.String type;

  core.String $ref;

  core.String description;

  core.String defaultProperty;

  core.bool required;

  core.String format;

  core.String pattern;

  core.String minimum;

  core.String maximum;

  core.List<core.String> enumProperty;

  core.List<core.String> enumDescriptions;

  JsonSchemaVariant variant;

  core.bool repeated;

  core.String location;

  core.Map<core.String, JsonSchema> properties;

  JsonSchema additionalProperties;

  JsonSchema items;

  JsonSchemaAnnotations annotations;

  /** Create new JsonSchema from JSON data */
  JsonSchema.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("\$ref")) {
      $ref = json["\$ref"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("default")) {
      defaultProperty = json["default"];
    }
    if (json.containsKey("required")) {
      required = json["required"];
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("pattern")) {
      pattern = json["pattern"];
    }
    if (json.containsKey("minimum")) {
      minimum = json["minimum"];
    }
    if (json.containsKey("maximum")) {
      maximum = json["maximum"];
    }
    if (json.containsKey("enum")) {
      enumProperty = json["enum"].toList();
    }
    if (json.containsKey("enumDescriptions")) {
      enumDescriptions = json["enumDescriptions"].toList();
    }
    if (json.containsKey("variant")) {
      variant = new JsonSchemaVariant.fromJson(json["variant"]);
    }
    if (json.containsKey("repeated")) {
      repeated = json["repeated"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("properties")) {
      properties = _mapMap(json["properties"], (propertiesItem) => new JsonSchema.fromJson(propertiesItem));
    }
    if (json.containsKey("additionalProperties")) {
      additionalProperties = new JsonSchema.fromJson(json["additionalProperties"]);
    }
    if (json.containsKey("items")) {
      items = new JsonSchema.fromJson(json["items"]);
    }
    if (json.containsKey("annotations")) {
      annotations = new JsonSchemaAnnotations.fromJson(json["annotations"]);
    }
  }

  /** Create JSON Object for JsonSchema */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (type != null) {
      output["type"] = type;
    }
    if ($ref != null) {
      output["\$ref"] = $ref;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (defaultProperty != null) {
      output["default"] = defaultProperty;
    }
    if (required != null) {
      output["required"] = required;
    }
    if (format != null) {
      output["format"] = format;
    }
    if (pattern != null) {
      output["pattern"] = pattern;
    }
    if (minimum != null) {
      output["minimum"] = minimum;
    }
    if (maximum != null) {
      output["maximum"] = maximum;
    }
    if (enumProperty != null) {
      output["enum"] = enumProperty.toList();
    }
    if (enumDescriptions != null) {
      output["enumDescriptions"] = enumDescriptions.toList();
    }
    if (variant != null) {
      output["variant"] = variant.toJson();
    }
    if (repeated != null) {
      output["repeated"] = repeated;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (properties != null) {
      output["properties"] = _mapMap(properties, (propertiesItem) => propertiesItem.toJson());
    }
    if (additionalProperties != null) {
      output["additionalProperties"] = additionalProperties.toJson();
    }
    if (items != null) {
      output["items"] = items.toJson();
    }
    if (annotations != null) {
      output["annotations"] = annotations.toJson();
    }

    return output;
  }

  /** Return String representation of JsonSchema */
  core.String toString() => JSON.encode(this.toJson());

}

class JsonSchemaVariant {

  core.String discriminant;

  core.List<JsonSchemaVariantMap> map;

  /** Create new JsonSchemaVariant from JSON data */
  JsonSchemaVariant.fromJson(core.Map json) {
    if (json.containsKey("discriminant")) {
      discriminant = json["discriminant"];
    }
    if (json.containsKey("map")) {
      map = json["map"].map((mapItem) => new JsonSchemaVariantMap.fromJson(mapItem)).toList();
    }
  }

  /** Create JSON Object for JsonSchemaVariant */
  core.Map toJson() {
    var output = new core.Map();

    if (discriminant != null) {
      output["discriminant"] = discriminant;
    }
    if (map != null) {
      output["map"] = map.map((mapItem) => mapItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of JsonSchemaVariant */
  core.String toString() => JSON.encode(this.toJson());

}

class JsonSchemaVariantMap {

  core.String $ref;

  core.String typeValue;

  /** Create new JsonSchemaVariantMap from JSON data */
  JsonSchemaVariantMap.fromJson(core.Map json) {
    if (json.containsKey("\$ref")) {
      $ref = json["\$ref"];
    }
    if (json.containsKey("typeValue")) {
      typeValue = json["typeValue"];
    }
  }

  /** Create JSON Object for JsonSchemaVariantMap */
  core.Map toJson() {
    var output = new core.Map();

    if ($ref != null) {
      output["\$ref"] = $ref;
    }
    if (typeValue != null) {
      output["typeValue"] = typeValue;
    }

    return output;
  }

  /** Return String representation of JsonSchemaVariantMap */
  core.String toString() => JSON.encode(this.toJson());

}

class JsonSchemaAnnotations {

  core.List<core.String> required;

  /** Create new JsonSchemaAnnotations from JSON data */
  JsonSchemaAnnotations.fromJson(core.Map json) {
    if (json.containsKey("required")) {
      required = json["required"].toList();
    }
  }

  /** Create JSON Object for JsonSchemaAnnotations */
  core.Map toJson() {
    var output = new core.Map();

    if (required != null) {
      output["required"] = required.toList();
    }

    return output;
  }

  /** Return String representation of JsonSchemaAnnotations */
  core.String toString() => JSON.encode(this.toJson());

}

class RestDescriptionAuth {

  RestDescriptionAuthOauth2 oauth2;

  /** Create new RestDescriptionAuth from JSON data */
  RestDescriptionAuth.fromJson(core.Map json) {
    if (json.containsKey("oauth2")) {
      oauth2 = new RestDescriptionAuthOauth2.fromJson(json["oauth2"]);
    }
  }

  /** Create JSON Object for RestDescriptionAuth */
  core.Map toJson() {
    var output = new core.Map();

    if (oauth2 != null) {
      output["oauth2"] = oauth2.toJson();
    }

    return output;
  }

  /** Return String representation of RestDescriptionAuth */
  core.String toString() => JSON.encode(this.toJson());

}

class RestDescriptionAuthOauth2 {

  core.Map<core.String, RestDescriptionAuthOauth2ScopesValue> scopes;

  /** Create new RestDescriptionAuthOauth2 from JSON data */
  RestDescriptionAuthOauth2.fromJson(core.Map json) {
    if (json.containsKey("scopes")) {
      scopes = _mapMap(json["scopes"], (scopesItem) => new RestDescriptionAuthOauth2ScopesValue.fromJson(scopesItem));
    }
  }

  /** Create JSON Object for RestDescriptionAuthOauth2 */
  core.Map toJson() {
    var output = new core.Map();

    if (scopes != null) {
      output["scopes"] = _mapMap(scopes, (scopesItem) => scopesItem.toJson());
    }

    return output;
  }

  /** Return String representation of RestDescriptionAuthOauth2 */
  core.String toString() => JSON.encode(this.toJson());

}

class RestDescriptionAuthOauth2ScopesValue {

  core.String description;

  /** Create new RestDescriptionAuthOauth2ScopesValue from JSON data */
  RestDescriptionAuthOauth2ScopesValue.fromJson(core.Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
  }

  /** Create JSON Object for RestDescriptionAuthOauth2ScopesValue */
  core.Map toJson() {
    var output = new core.Map();

    if (description != null) {
      output["description"] = description;
    }

    return output;
  }

  /** Return String representation of RestDescriptionAuthOauth2ScopesValue */
  core.String toString() => JSON.encode(this.toJson());

}

class RestMethod {

  core.String id;

  core.bool etagRequired;

  core.String path;

  core.String httpMethod;

  core.String description;

  core.Map<core.String, JsonSchema> parameters;

  core.List<core.String> parameterOrder;

  RestMethodRequest request;

  RestMethodResponse response;

  core.List<core.String> scopes;

  core.bool supportsMediaDownload;

  core.bool supportsMediaUpload;

  RestMethodMediaUpload mediaUpload;

  core.bool supportsSubscription;

  /** Create new RestMethod from JSON data */
  RestMethod.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("etagRequired")) {
      etagRequired = json["etagRequired"];
    }
    if (json.containsKey("path")) {
      path = json["path"];
    }
    if (json.containsKey("httpMethod")) {
      httpMethod = json["httpMethod"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("parameters")) {
      parameters = _mapMap(json["parameters"], (parametersItem) => new JsonSchema.fromJson(parametersItem));
    }
    if (json.containsKey("parameterOrder")) {
      parameterOrder = json["parameterOrder"].toList();
    }
    if (json.containsKey("request")) {
      request = new RestMethodRequest.fromJson(json["request"]);
    }
    if (json.containsKey("response")) {
      response = new RestMethodResponse.fromJson(json["response"]);
    }
    if (json.containsKey("scopes")) {
      scopes = json["scopes"].toList();
    }
    if (json.containsKey("supportsMediaDownload")) {
      supportsMediaDownload = json["supportsMediaDownload"];
    }
    if (json.containsKey("supportsMediaUpload")) {
      supportsMediaUpload = json["supportsMediaUpload"];
    }
    if (json.containsKey("mediaUpload")) {
      mediaUpload = new RestMethodMediaUpload.fromJson(json["mediaUpload"]);
    }
    if (json.containsKey("supportsSubscription")) {
      supportsSubscription = json["supportsSubscription"];
    }
  }

  /** Create JSON Object for RestMethod */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (etagRequired != null) {
      output["etagRequired"] = etagRequired;
    }
    if (path != null) {
      output["path"] = path;
    }
    if (httpMethod != null) {
      output["httpMethod"] = httpMethod;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (parameters != null) {
      output["parameters"] = _mapMap(parameters, (parametersItem) => parametersItem.toJson());
    }
    if (parameterOrder != null) {
      output["parameterOrder"] = parameterOrder.toList();
    }
    if (request != null) {
      output["request"] = request.toJson();
    }
    if (response != null) {
      output["response"] = response.toJson();
    }
    if (scopes != null) {
      output["scopes"] = scopes.toList();
    }
    if (supportsMediaDownload != null) {
      output["supportsMediaDownload"] = supportsMediaDownload;
    }
    if (supportsMediaUpload != null) {
      output["supportsMediaUpload"] = supportsMediaUpload;
    }
    if (mediaUpload != null) {
      output["mediaUpload"] = mediaUpload.toJson();
    }
    if (supportsSubscription != null) {
      output["supportsSubscription"] = supportsSubscription;
    }

    return output;
  }

  /** Return String representation of RestMethod */
  core.String toString() => JSON.encode(this.toJson());

}

class RestMethodRequest {

  core.String $ref;

  core.String parameterName;

  /** Create new RestMethodRequest from JSON data */
  RestMethodRequest.fromJson(core.Map json) {
    if (json.containsKey("\$ref")) {
      $ref = json["\$ref"];
    }
    if (json.containsKey("parameterName")) {
      parameterName = json["parameterName"];
    }
  }

  /** Create JSON Object for RestMethodRequest */
  core.Map toJson() {
    var output = new core.Map();

    if ($ref != null) {
      output["\$ref"] = $ref;
    }
    if (parameterName != null) {
      output["parameterName"] = parameterName;
    }

    return output;
  }

  /** Return String representation of RestMethodRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class RestMethodResponse {

  core.String $ref;

  /** Create new RestMethodResponse from JSON data */
  RestMethodResponse.fromJson(core.Map json) {
    if (json.containsKey("\$ref")) {
      $ref = json["\$ref"];
    }
  }

  /** Create JSON Object for RestMethodResponse */
  core.Map toJson() {
    var output = new core.Map();

    if ($ref != null) {
      output["\$ref"] = $ref;
    }

    return output;
  }

  /** Return String representation of RestMethodResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class RestMethodMediaUpload {

  core.List<core.String> accept;

  core.String maxSize;

  RestMethodMediaUploadProtocols protocols;

  /** Create new RestMethodMediaUpload from JSON data */
  RestMethodMediaUpload.fromJson(core.Map json) {
    if (json.containsKey("accept")) {
      accept = json["accept"].toList();
    }
    if (json.containsKey("maxSize")) {
      maxSize = json["maxSize"];
    }
    if (json.containsKey("protocols")) {
      protocols = new RestMethodMediaUploadProtocols.fromJson(json["protocols"]);
    }
  }

  /** Create JSON Object for RestMethodMediaUpload */
  core.Map toJson() {
    var output = new core.Map();

    if (accept != null) {
      output["accept"] = accept.toList();
    }
    if (maxSize != null) {
      output["maxSize"] = maxSize;
    }
    if (protocols != null) {
      output["protocols"] = protocols.toJson();
    }

    return output;
  }

  /** Return String representation of RestMethodMediaUpload */
  core.String toString() => JSON.encode(this.toJson());

}

class RestMethodMediaUploadProtocols {

  RestMethodMediaUploadProtocolsResumable resumable;

  RestMethodMediaUploadProtocolsSimple simple;

  /** Create new RestMethodMediaUploadProtocols from JSON data */
  RestMethodMediaUploadProtocols.fromJson(core.Map json) {
    if (json.containsKey("resumable")) {
      resumable = new RestMethodMediaUploadProtocolsResumable.fromJson(json["resumable"]);
    }
    if (json.containsKey("simple")) {
      simple = new RestMethodMediaUploadProtocolsSimple.fromJson(json["simple"]);
    }
  }

  /** Create JSON Object for RestMethodMediaUploadProtocols */
  core.Map toJson() {
    var output = new core.Map();

    if (resumable != null) {
      output["resumable"] = resumable.toJson();
    }
    if (simple != null) {
      output["simple"] = simple.toJson();
    }

    return output;
  }

  /** Return String representation of RestMethodMediaUploadProtocols */
  core.String toString() => JSON.encode(this.toJson());

}

class RestMethodMediaUploadProtocolsResumable {

  core.bool multipart;

  core.String path;

  /** Create new RestMethodMediaUploadProtocolsResumable from JSON data */
  RestMethodMediaUploadProtocolsResumable.fromJson(core.Map json) {
    if (json.containsKey("multipart")) {
      multipart = json["multipart"];
    }
    if (json.containsKey("path")) {
      path = json["path"];
    }
  }

  /** Create JSON Object for RestMethodMediaUploadProtocolsResumable */
  core.Map toJson() {
    var output = new core.Map();

    if (multipart != null) {
      output["multipart"] = multipart;
    }
    if (path != null) {
      output["path"] = path;
    }

    return output;
  }

  /** Return String representation of RestMethodMediaUploadProtocolsResumable */
  core.String toString() => JSON.encode(this.toJson());

}

class RestMethodMediaUploadProtocolsSimple {

  core.bool multipart;

  core.String path;

  /** Create new RestMethodMediaUploadProtocolsSimple from JSON data */
  RestMethodMediaUploadProtocolsSimple.fromJson(core.Map json) {
    if (json.containsKey("multipart")) {
      multipart = json["multipart"];
    }
    if (json.containsKey("path")) {
      path = json["path"];
    }
  }

  /** Create JSON Object for RestMethodMediaUploadProtocolsSimple */
  core.Map toJson() {
    var output = new core.Map();

    if (multipart != null) {
      output["multipart"] = multipart;
    }
    if (path != null) {
      output["path"] = path;
    }

    return output;
  }

  /** Return String representation of RestMethodMediaUploadProtocolsSimple */
  core.String toString() => JSON.encode(this.toJson());

}

class RestResource {

  core.Map<core.String, RestMethod> methods;

  core.Map<core.String, RestResource> resources;

  /** Create new RestResource from JSON data */
  RestResource.fromJson(core.Map json) {
    if (json.containsKey("methods")) {
      methods = _mapMap(json["methods"], (methodsItem) => new RestMethod.fromJson(methodsItem));
    }
    if (json.containsKey("resources")) {
      resources = _mapMap(json["resources"], (resourcesItem) => new RestResource.fromJson(resourcesItem));
    }
  }

  /** Create JSON Object for RestResource */
  core.Map toJson() {
    var output = new core.Map();

    if (methods != null) {
      output["methods"] = _mapMap(methods, (methodsItem) => methodsItem.toJson());
    }
    if (resources != null) {
      output["resources"] = _mapMap(resources, (resourcesItem) => resourcesItem.toJson());
    }

    return output;
  }

  /** Return String representation of RestResource */
  core.String toString() => JSON.encode(this.toJson());

}

class DirectoryList {

  core.String kind;

  core.String discoveryVersion;

  core.List<DirectoryListItems> items;

  /** Create new DirectoryList from JSON data */
  DirectoryList.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("discoveryVersion")) {
      discoveryVersion = json["discoveryVersion"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new DirectoryListItems.fromJson(itemsItem)).toList();
    }
  }

  /** Create JSON Object for DirectoryList */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (discoveryVersion != null) {
      output["discoveryVersion"] = discoveryVersion;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of DirectoryList */
  core.String toString() => JSON.encode(this.toJson());

}

class DirectoryListItems {

  core.String kind;

  core.String id;

  core.String name;

  core.String version;

  core.String title;

  core.String description;

  core.String discoveryRestUrl;

  core.String discoveryLink;

  DirectoryListItemsIcons icons;

  core.String documentationLink;

  core.List<core.String> labels;

  core.bool preferred;

  /** Create new DirectoryListItems from JSON data */
  DirectoryListItems.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("version")) {
      version = json["version"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("discoveryRestUrl")) {
      discoveryRestUrl = json["discoveryRestUrl"];
    }
    if (json.containsKey("discoveryLink")) {
      discoveryLink = json["discoveryLink"];
    }
    if (json.containsKey("icons")) {
      icons = new DirectoryListItemsIcons.fromJson(json["icons"]);
    }
    if (json.containsKey("documentationLink")) {
      documentationLink = json["documentationLink"];
    }
    if (json.containsKey("labels")) {
      labels = json["labels"].toList();
    }
    if (json.containsKey("preferred")) {
      preferred = json["preferred"];
    }
  }

  /** Create JSON Object for DirectoryListItems */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (version != null) {
      output["version"] = version;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (discoveryRestUrl != null) {
      output["discoveryRestUrl"] = discoveryRestUrl;
    }
    if (discoveryLink != null) {
      output["discoveryLink"] = discoveryLink;
    }
    if (icons != null) {
      output["icons"] = icons.toJson();
    }
    if (documentationLink != null) {
      output["documentationLink"] = documentationLink;
    }
    if (labels != null) {
      output["labels"] = labels.toList();
    }
    if (preferred != null) {
      output["preferred"] = preferred;
    }

    return output;
  }

  /** Return String representation of DirectoryListItems */
  core.String toString() => JSON.encode(this.toJson());

}

class DirectoryListItemsIcons {

  core.String x16;

  core.String x32;

  /** Create new DirectoryListItemsIcons from JSON data */
  DirectoryListItemsIcons.fromJson(core.Map json) {
    if (json.containsKey("x16")) {
      x16 = json["x16"];
    }
    if (json.containsKey("x32")) {
      x32 = json["x32"];
    }
  }

  /** Create JSON Object for DirectoryListItemsIcons */
  core.Map toJson() {
    var output = new core.Map();

    if (x16 != null) {
      output["x16"] = x16;
    }
    if (x32 != null) {
      output["x32"] = x32;
    }

    return output;
  }

  /** Return String representation of DirectoryListItemsIcons */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
