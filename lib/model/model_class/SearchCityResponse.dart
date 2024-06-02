import 'dart:convert';
/// predictions : [{"description":"Kochi, Kerala, India","matched_substrings":[{"length":5,"offset":0}],"place_id":"ChIJv8a-SlENCDsRkkGEpcqC1Qs","reference":"ChIJv8a-SlENCDsRkkGEpcqC1Qs","structured_formatting":{"main_text":"Kochi","main_text_matched_substrings":[{"length":5,"offset":0}],"secondary_text":"Kerala, India"},"terms":[{"offset":0,"value":"Kochi"},{"offset":7,"value":"Kerala"},{"offset":15,"value":"India"}],"types":["locality","political","geocode"]},{"description":"Kochi, Japan","matched_substrings":[{"length":5,"offset":0}],"place_id":"ChIJa2Hq0TSpSDURow2-nqQtVKA","reference":"ChIJa2Hq0TSpSDURow2-nqQtVKA","structured_formatting":{"main_text":"Kochi","main_text_matched_substrings":[{"length":5,"offset":0}],"secondary_text":"Japan"},"terms":[{"offset":0,"value":"Kochi"},{"offset":7,"value":"Japan"}],"types":["administrative_area_level_1","political","geocode"]},{"description":"Kochi, Maharashtra, India","matched_substrings":[{"length":5,"offset":0}],"place_id":"ChIJhe10tuC60zsRVRspAfeL88M","reference":"ChIJhe10tuC60zsRVRspAfeL88M","structured_formatting":{"main_text":"Kochi","main_text_matched_substrings":[{"length":5,"offset":0}],"secondary_text":"Maharashtra, India"},"terms":[{"offset":0,"value":"Kochi"},{"offset":7,"value":"Maharashtra"},{"offset":20,"value":"India"}],"types":["locality","political","geocode"]},{"description":"Şereflikoçhisar, Ankara, Türkiye","matched_substrings":[{"length":5,"offset":7}],"place_id":"ChIJu5rLfxBH1BQRbKeZ1DUyHhw","reference":"ChIJu5rLfxBH1BQRbKeZ1DUyHhw","structured_formatting":{"main_text":"Şereflikoçhisar","main_text_matched_substrings":[{"length":5,"offset":7}],"secondary_text":"Ankara, Türkiye"},"terms":[{"offset":0,"value":"Şereflikoçhisar"},{"offset":17,"value":"Ankara"},{"offset":25,"value":"Türkiye"}],"types":["locality","political","geocode"]},{"description":"Kochinda, Odisha, India","matched_substrings":[{"length":5,"offset":0}],"place_id":"ChIJS0hjK1mrIToRaAicb9HHOZY","reference":"ChIJS0hjK1mrIToRaAicb9HHOZY","structured_formatting":{"main_text":"Kochinda","main_text_matched_substrings":[{"length":5,"offset":0}],"secondary_text":"Odisha, India"},"terms":[{"offset":0,"value":"Kochinda"},{"offset":10,"value":"Odisha"},{"offset":18,"value":"India"}],"types":["locality","political","geocode"]}]
/// status : "OK"

SearchCityResponse searchCityResponseFromJson(String str) => SearchCityResponse.fromJson(json.decode(str));
String searchCityResponseToJson(SearchCityResponse data) => json.encode(data.toJson());
class SearchCityResponse {
  SearchCityResponse({
      List<Predictions>? predictions, 
      String? status,}){
    _predictions = predictions;
    _status = status;
}

  SearchCityResponse.fromJson(dynamic json) {
    if (json['predictions'] != null) {
      _predictions = [];
      json['predictions'].forEach((v) {
        _predictions?.add(Predictions.fromJson(v));
      });
    }
    _status = json['status'];
  }
  List<Predictions>? _predictions;
  String? _status;
SearchCityResponse copyWith({  List<Predictions>? predictions,
  String? status,
}) => SearchCityResponse(  predictions: predictions ?? _predictions,
  status: status ?? _status,
);
  List<Predictions>? get predictions => _predictions;
  String? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_predictions != null) {
      map['predictions'] = _predictions?.map((v) => v.toJson()).toList();
    }
    map['status'] = _status;
    return map;
  }

}

/// description : "Kochi, Kerala, India"
/// matched_substrings : [{"length":5,"offset":0}]
/// place_id : "ChIJv8a-SlENCDsRkkGEpcqC1Qs"
/// reference : "ChIJv8a-SlENCDsRkkGEpcqC1Qs"
/// structured_formatting : {"main_text":"Kochi","main_text_matched_substrings":[{"length":5,"offset":0}],"secondary_text":"Kerala, India"}
/// terms : [{"offset":0,"value":"Kochi"},{"offset":7,"value":"Kerala"},{"offset":15,"value":"India"}]
/// types : ["locality","political","geocode"]

Predictions predictionsFromJson(String str) => Predictions.fromJson(json.decode(str));
String predictionsToJson(Predictions data) => json.encode(data.toJson());
class Predictions {
  Predictions({
      String? description, 
      List<MatchedSubstrings>? matchedSubstrings, 
      String? placeId, 
      String? reference, 
      StructuredFormatting? structuredFormatting, 
      List<Terms>? terms, 
      List<String>? types,}){
    _description = description;
    _matchedSubstrings = matchedSubstrings;
    _placeId = placeId;
    _reference = reference;
    _structuredFormatting = structuredFormatting;
    _terms = terms;
    _types = types;
}

  Predictions.fromJson(dynamic json) {
    _description = json['description'];
    if (json['matched_substrings'] != null) {
      _matchedSubstrings = [];
      json['matched_substrings'].forEach((v) {
        _matchedSubstrings?.add(MatchedSubstrings.fromJson(v));
      });
    }
    _placeId = json['place_id'];
    _reference = json['reference'];
    _structuredFormatting = json['structured_formatting'] != null ? StructuredFormatting.fromJson(json['structured_formatting']) : null;
    if (json['terms'] != null) {
      _terms = [];
      json['terms'].forEach((v) {
        _terms?.add(Terms.fromJson(v));
      });
    }
    _types = json['types'] != null ? json['types'].cast<String>() : [];
  }
  String? _description;
  List<MatchedSubstrings>? _matchedSubstrings;
  String? _placeId;
  String? _reference;
  StructuredFormatting? _structuredFormatting;
  List<Terms>? _terms;
  List<String>? _types;
Predictions copyWith({  String? description,
  List<MatchedSubstrings>? matchedSubstrings,
  String? placeId,
  String? reference,
  StructuredFormatting? structuredFormatting,
  List<Terms>? terms,
  List<String>? types,
}) => Predictions(  description: description ?? _description,
  matchedSubstrings: matchedSubstrings ?? _matchedSubstrings,
  placeId: placeId ?? _placeId,
  reference: reference ?? _reference,
  structuredFormatting: structuredFormatting ?? _structuredFormatting,
  terms: terms ?? _terms,
  types: types ?? _types,
);
  String? get description => _description;
  List<MatchedSubstrings>? get matchedSubstrings => _matchedSubstrings;
  String? get placeId => _placeId;
  String? get reference => _reference;
  StructuredFormatting? get structuredFormatting => _structuredFormatting;
  List<Terms>? get terms => _terms;
  List<String>? get types => _types;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['description'] = _description;
    if (_matchedSubstrings != null) {
      map['matched_substrings'] = _matchedSubstrings?.map((v) => v.toJson()).toList();
    }
    map['place_id'] = _placeId;
    map['reference'] = _reference;
    if (_structuredFormatting != null) {
      map['structured_formatting'] = _structuredFormatting?.toJson();
    }
    if (_terms != null) {
      map['terms'] = _terms?.map((v) => v.toJson()).toList();
    }
    map['types'] = _types;
    return map;
  }

}

/// offset : 0
/// value : "Kochi"

Terms termsFromJson(String str) => Terms.fromJson(json.decode(str));
String termsToJson(Terms data) => json.encode(data.toJson());
class Terms {
  Terms({
      num? offset, 
      String? value,}){
    _offset = offset;
    _value = value;
}

  Terms.fromJson(dynamic json) {
    _offset = json['offset'];
    _value = json['value'];
  }
  num? _offset;
  String? _value;
Terms copyWith({  num? offset,
  String? value,
}) => Terms(  offset: offset ?? _offset,
  value: value ?? _value,
);
  num? get offset => _offset;
  String? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['offset'] = _offset;
    map['value'] = _value;
    return map;
  }

}

/// main_text : "Kochi"
/// main_text_matched_substrings : [{"length":5,"offset":0}]
/// secondary_text : "Kerala, India"

StructuredFormatting structuredFormattingFromJson(String str) => StructuredFormatting.fromJson(json.decode(str));
String structuredFormattingToJson(StructuredFormatting data) => json.encode(data.toJson());
class StructuredFormatting {
  StructuredFormatting({
      String? mainText, 
      List<MainTextMatchedSubstrings>? mainTextMatchedSubstrings, 
      String? secondaryText,}){
    _mainText = mainText;
    _mainTextMatchedSubstrings = mainTextMatchedSubstrings;
    _secondaryText = secondaryText;
}

  StructuredFormatting.fromJson(dynamic json) {
    _mainText = json['main_text'];
    if (json['main_text_matched_substrings'] != null) {
      _mainTextMatchedSubstrings = [];
      json['main_text_matched_substrings'].forEach((v) {
        _mainTextMatchedSubstrings?.add(MainTextMatchedSubstrings.fromJson(v));
      });
    }
    _secondaryText = json['secondary_text'];
  }
  String? _mainText;
  List<MainTextMatchedSubstrings>? _mainTextMatchedSubstrings;
  String? _secondaryText;
StructuredFormatting copyWith({  String? mainText,
  List<MainTextMatchedSubstrings>? mainTextMatchedSubstrings,
  String? secondaryText,
}) => StructuredFormatting(  mainText: mainText ?? _mainText,
  mainTextMatchedSubstrings: mainTextMatchedSubstrings ?? _mainTextMatchedSubstrings,
  secondaryText: secondaryText ?? _secondaryText,
);
  String? get mainText => _mainText;
  List<MainTextMatchedSubstrings>? get mainTextMatchedSubstrings => _mainTextMatchedSubstrings;
  String? get secondaryText => _secondaryText;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['main_text'] = _mainText;
    if (_mainTextMatchedSubstrings != null) {
      map['main_text_matched_substrings'] = _mainTextMatchedSubstrings?.map((v) => v.toJson()).toList();
    }
    map['secondary_text'] = _secondaryText;
    return map;
  }

}

/// length : 5
/// offset : 0

MainTextMatchedSubstrings mainTextMatchedSubstringsFromJson(String str) => MainTextMatchedSubstrings.fromJson(json.decode(str));
String mainTextMatchedSubstringsToJson(MainTextMatchedSubstrings data) => json.encode(data.toJson());
class MainTextMatchedSubstrings {
  MainTextMatchedSubstrings({
      num? length, 
      num? offset,}){
    _length = length;
    _offset = offset;
}

  MainTextMatchedSubstrings.fromJson(dynamic json) {
    _length = json['length'];
    _offset = json['offset'];
  }
  num? _length;
  num? _offset;
MainTextMatchedSubstrings copyWith({  num? length,
  num? offset,
}) => MainTextMatchedSubstrings(  length: length ?? _length,
  offset: offset ?? _offset,
);
  num? get length => _length;
  num? get offset => _offset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['length'] = _length;
    map['offset'] = _offset;
    return map;
  }

}

/// length : 5
/// offset : 0

MatchedSubstrings matchedSubstringsFromJson(String str) => MatchedSubstrings.fromJson(json.decode(str));
String matchedSubstringsToJson(MatchedSubstrings data) => json.encode(data.toJson());
class MatchedSubstrings {
  MatchedSubstrings({
      num? length, 
      num? offset,}){
    _length = length;
    _offset = offset;
}

  MatchedSubstrings.fromJson(dynamic json) {
    _length = json['length'];
    _offset = json['offset'];
  }
  num? _length;
  num? _offset;
MatchedSubstrings copyWith({  num? length,
  num? offset,
}) => MatchedSubstrings(  length: length ?? _length,
  offset: offset ?? _offset,
);
  num? get length => _length;
  num? get offset => _offset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['length'] = _length;
    map['offset'] = _offset;
    return map;
  }

}