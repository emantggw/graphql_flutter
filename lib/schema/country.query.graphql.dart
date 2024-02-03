import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$getAllCountries {
  Query$getAllCountries({
    this.countries,
    this.$__typename = 'Query',
  });

  factory Query$getAllCountries.fromJson(Map<String, dynamic> json) {
    final l$countries = json['countries'];
    final l$$__typename = json['__typename'];
    return Query$getAllCountries(
      countries: (l$countries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getAllCountries$countries.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getAllCountries$countries?>? countries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countries = countries;
    _resultData['countries'] = l$countries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countries = countries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$countries == null ? null : Object.hashAll(l$countries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAllCountries) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$countries = countries;
    final lOther$countries = other.countries;
    if (l$countries != null && lOther$countries != null) {
      if (l$countries.length != lOther$countries.length) {
        return false;
      }
      for (int i = 0; i < l$countries.length; i++) {
        final l$countries$entry = l$countries[i];
        final lOther$countries$entry = lOther$countries[i];
        if (l$countries$entry != lOther$countries$entry) {
          return false;
        }
      }
    } else if (l$countries != lOther$countries) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getAllCountries on Query$getAllCountries {
  CopyWith$Query$getAllCountries<Query$getAllCountries> get copyWith =>
      CopyWith$Query$getAllCountries(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getAllCountries<TRes> {
  factory CopyWith$Query$getAllCountries(
    Query$getAllCountries instance,
    TRes Function(Query$getAllCountries) then,
  ) = _CopyWithImpl$Query$getAllCountries;

  factory CopyWith$Query$getAllCountries.stub(TRes res) =
      _CopyWithStubImpl$Query$getAllCountries;

  TRes call({
    List<Query$getAllCountries$countries?>? countries,
    String? $__typename,
  });
  TRes countries(
      Iterable<Query$getAllCountries$countries?>? Function(
              Iterable<
                  CopyWith$Query$getAllCountries$countries<
                      Query$getAllCountries$countries>?>?)
          _fn);
}

class _CopyWithImpl$Query$getAllCountries<TRes>
    implements CopyWith$Query$getAllCountries<TRes> {
  _CopyWithImpl$Query$getAllCountries(
    this._instance,
    this._then,
  );

  final Query$getAllCountries _instance;

  final TRes Function(Query$getAllCountries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAllCountries(
        countries: countries == _undefined
            ? _instance.countries
            : (countries as List<Query$getAllCountries$countries?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes countries(
          Iterable<Query$getAllCountries$countries?>? Function(
                  Iterable<
                      CopyWith$Query$getAllCountries$countries<
                          Query$getAllCountries$countries>?>?)
              _fn) =>
      call(
          countries: _fn(_instance.countries?.map((e) => e == null
              ? null
              : CopyWith$Query$getAllCountries$countries(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$getAllCountries<TRes>
    implements CopyWith$Query$getAllCountries<TRes> {
  _CopyWithStubImpl$Query$getAllCountries(this._res);

  TRes _res;

  call({
    List<Query$getAllCountries$countries?>? countries,
    String? $__typename,
  }) =>
      _res;

  countries(_fn) => _res;
}

const documentNodeQuerygetAllCountries = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getAllCountries'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'countries'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'capital'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$getAllCountries _parserFn$Query$getAllCountries(
        Map<String, dynamic> data) =>
    Query$getAllCountries.fromJson(data);
typedef OnQueryComplete$Query$getAllCountries = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getAllCountries?,
);

class Options$Query$getAllCountries
    extends graphql.QueryOptions<Query$getAllCountries> {
  Options$Query$getAllCountries({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getAllCountries? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getAllCountries? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$getAllCountries(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetAllCountries,
          parserFn: _parserFn$Query$getAllCountries,
        );

  final OnQueryComplete$Query$getAllCountries? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getAllCountries
    extends graphql.WatchQueryOptions<Query$getAllCountries> {
  WatchOptions$Query$getAllCountries({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getAllCountries? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetAllCountries,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getAllCountries,
        );
}

class FetchMoreOptions$Query$getAllCountries extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getAllCountries(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerygetAllCountries,
        );
}

extension ClientExtension$Query$getAllCountries on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getAllCountries>> query$getAllCountries(
          [Options$Query$getAllCountries? options]) async =>
      await this.query(options ?? Options$Query$getAllCountries());
  graphql.ObservableQuery<Query$getAllCountries> watchQuery$getAllCountries(
          [WatchOptions$Query$getAllCountries? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getAllCountries());
  void writeQuery$getAllCountries({
    required Query$getAllCountries data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerygetAllCountries)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getAllCountries? readQuery$getAllCountries({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetAllCountries)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getAllCountries.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getAllCountries> useQuery$getAllCountries(
        [Options$Query$getAllCountries? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$getAllCountries());
graphql.ObservableQuery<Query$getAllCountries> useWatchQuery$getAllCountries(
        [WatchOptions$Query$getAllCountries? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$getAllCountries());

class Query$getAllCountries$Widget
    extends graphql_flutter.Query<Query$getAllCountries> {
  Query$getAllCountries$Widget({
    widgets.Key? key,
    Options$Query$getAllCountries? options,
    required graphql_flutter.QueryBuilder<Query$getAllCountries> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$getAllCountries(),
          builder: builder,
        );
}

class Query$getAllCountries$countries {
  Query$getAllCountries$countries({
    this.name,
    this.capital,
    this.$__typename = 'Country',
  });

  factory Query$getAllCountries$countries.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$capital = json['capital'];
    final l$$__typename = json['__typename'];
    return Query$getAllCountries$countries(
      name: (l$name as String?),
      capital: (l$capital as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? capital;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$capital = capital;
    _resultData['capital'] = l$capital;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$capital = capital;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$capital,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAllCountries$countries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$capital = capital;
    final lOther$capital = other.capital;
    if (l$capital != lOther$capital) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getAllCountries$countries
    on Query$getAllCountries$countries {
  CopyWith$Query$getAllCountries$countries<Query$getAllCountries$countries>
      get copyWith => CopyWith$Query$getAllCountries$countries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getAllCountries$countries<TRes> {
  factory CopyWith$Query$getAllCountries$countries(
    Query$getAllCountries$countries instance,
    TRes Function(Query$getAllCountries$countries) then,
  ) = _CopyWithImpl$Query$getAllCountries$countries;

  factory CopyWith$Query$getAllCountries$countries.stub(TRes res) =
      _CopyWithStubImpl$Query$getAllCountries$countries;

  TRes call({
    String? name,
    String? capital,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getAllCountries$countries<TRes>
    implements CopyWith$Query$getAllCountries$countries<TRes> {
  _CopyWithImpl$Query$getAllCountries$countries(
    this._instance,
    this._then,
  );

  final Query$getAllCountries$countries _instance;

  final TRes Function(Query$getAllCountries$countries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? capital = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAllCountries$countries(
        name: name == _undefined ? _instance.name : (name as String?),
        capital:
            capital == _undefined ? _instance.capital : (capital as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getAllCountries$countries<TRes>
    implements CopyWith$Query$getAllCountries$countries<TRes> {
  _CopyWithStubImpl$Query$getAllCountries$countries(this._res);

  TRes _res;

  call({
    String? name,
    String? capital,
    String? $__typename,
  }) =>
      _res;
}

class Query$getUZCountry {
  Query$getUZCountry({
    this.country,
    this.$__typename = 'Query',
  });

  factory Query$getUZCountry.fromJson(Map<String, dynamic> json) {
    final l$country = json['country'];
    final l$$__typename = json['__typename'];
    return Query$getUZCountry(
      country: l$country == null
          ? null
          : Query$getUZCountry$country.fromJson(
              (l$country as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getUZCountry$country? country;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$country = country;
    _resultData['country'] = l$country?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$country = country;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$country,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getUZCountry) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getUZCountry on Query$getUZCountry {
  CopyWith$Query$getUZCountry<Query$getUZCountry> get copyWith =>
      CopyWith$Query$getUZCountry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getUZCountry<TRes> {
  factory CopyWith$Query$getUZCountry(
    Query$getUZCountry instance,
    TRes Function(Query$getUZCountry) then,
  ) = _CopyWithImpl$Query$getUZCountry;

  factory CopyWith$Query$getUZCountry.stub(TRes res) =
      _CopyWithStubImpl$Query$getUZCountry;

  TRes call({
    Query$getUZCountry$country? country,
    String? $__typename,
  });
  CopyWith$Query$getUZCountry$country<TRes> get country;
}

class _CopyWithImpl$Query$getUZCountry<TRes>
    implements CopyWith$Query$getUZCountry<TRes> {
  _CopyWithImpl$Query$getUZCountry(
    this._instance,
    this._then,
  );

  final Query$getUZCountry _instance;

  final TRes Function(Query$getUZCountry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? country = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getUZCountry(
        country: country == _undefined
            ? _instance.country
            : (country as Query$getUZCountry$country?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getUZCountry$country<TRes> get country {
    final local$country = _instance.country;
    return local$country == null
        ? CopyWith$Query$getUZCountry$country.stub(_then(_instance))
        : CopyWith$Query$getUZCountry$country(
            local$country, (e) => call(country: e));
  }
}

class _CopyWithStubImpl$Query$getUZCountry<TRes>
    implements CopyWith$Query$getUZCountry<TRes> {
  _CopyWithStubImpl$Query$getUZCountry(this._res);

  TRes _res;

  call({
    Query$getUZCountry$country? country,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getUZCountry$country<TRes> get country =>
      CopyWith$Query$getUZCountry$country.stub(_res);
}

const documentNodeQuerygetUZCountry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getUZCountry'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'country'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: StringValueNode(
              value: 'UZ',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$getUZCountry _parserFn$Query$getUZCountry(Map<String, dynamic> data) =>
    Query$getUZCountry.fromJson(data);
typedef OnQueryComplete$Query$getUZCountry = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getUZCountry?,
);

class Options$Query$getUZCountry
    extends graphql.QueryOptions<Query$getUZCountry> {
  Options$Query$getUZCountry({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getUZCountry? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getUZCountry? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$getUZCountry(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetUZCountry,
          parserFn: _parserFn$Query$getUZCountry,
        );

  final OnQueryComplete$Query$getUZCountry? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getUZCountry
    extends graphql.WatchQueryOptions<Query$getUZCountry> {
  WatchOptions$Query$getUZCountry({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getUZCountry? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetUZCountry,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getUZCountry,
        );
}

class FetchMoreOptions$Query$getUZCountry extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getUZCountry(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerygetUZCountry,
        );
}

extension ClientExtension$Query$getUZCountry on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getUZCountry>> query$getUZCountry(
          [Options$Query$getUZCountry? options]) async =>
      await this.query(options ?? Options$Query$getUZCountry());
  graphql.ObservableQuery<Query$getUZCountry> watchQuery$getUZCountry(
          [WatchOptions$Query$getUZCountry? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getUZCountry());
  void writeQuery$getUZCountry({
    required Query$getUZCountry data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerygetUZCountry)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getUZCountry? readQuery$getUZCountry({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetUZCountry)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getUZCountry.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getUZCountry> useQuery$getUZCountry(
        [Options$Query$getUZCountry? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$getUZCountry());
graphql.ObservableQuery<Query$getUZCountry> useWatchQuery$getUZCountry(
        [WatchOptions$Query$getUZCountry? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$getUZCountry());

class Query$getUZCountry$Widget
    extends graphql_flutter.Query<Query$getUZCountry> {
  Query$getUZCountry$Widget({
    widgets.Key? key,
    Options$Query$getUZCountry? options,
    required graphql_flutter.QueryBuilder<Query$getUZCountry> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$getUZCountry(),
          builder: builder,
        );
}

class Query$getUZCountry$country {
  Query$getUZCountry$country({
    this.name,
    this.$__typename = 'Country',
  });

  factory Query$getUZCountry$country.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getUZCountry$country(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getUZCountry$country) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getUZCountry$country
    on Query$getUZCountry$country {
  CopyWith$Query$getUZCountry$country<Query$getUZCountry$country>
      get copyWith => CopyWith$Query$getUZCountry$country(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getUZCountry$country<TRes> {
  factory CopyWith$Query$getUZCountry$country(
    Query$getUZCountry$country instance,
    TRes Function(Query$getUZCountry$country) then,
  ) = _CopyWithImpl$Query$getUZCountry$country;

  factory CopyWith$Query$getUZCountry$country.stub(TRes res) =
      _CopyWithStubImpl$Query$getUZCountry$country;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getUZCountry$country<TRes>
    implements CopyWith$Query$getUZCountry$country<TRes> {
  _CopyWithImpl$Query$getUZCountry$country(
    this._instance,
    this._then,
  );

  final Query$getUZCountry$country _instance;

  final TRes Function(Query$getUZCountry$country) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getUZCountry$country(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getUZCountry$country<TRes>
    implements CopyWith$Query$getUZCountry$country<TRes> {
  _CopyWithStubImpl$Query$getUZCountry$country(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$getTNCountry {
  Query$getTNCountry({
    this.country,
    this.$__typename = 'Query',
  });

  factory Query$getTNCountry.fromJson(Map<String, dynamic> json) {
    final l$country = json['country'];
    final l$$__typename = json['__typename'];
    return Query$getTNCountry(
      country: l$country == null
          ? null
          : Query$getTNCountry$country.fromJson(
              (l$country as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getTNCountry$country? country;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$country = country;
    _resultData['country'] = l$country?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$country = country;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$country,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getTNCountry) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getTNCountry on Query$getTNCountry {
  CopyWith$Query$getTNCountry<Query$getTNCountry> get copyWith =>
      CopyWith$Query$getTNCountry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getTNCountry<TRes> {
  factory CopyWith$Query$getTNCountry(
    Query$getTNCountry instance,
    TRes Function(Query$getTNCountry) then,
  ) = _CopyWithImpl$Query$getTNCountry;

  factory CopyWith$Query$getTNCountry.stub(TRes res) =
      _CopyWithStubImpl$Query$getTNCountry;

  TRes call({
    Query$getTNCountry$country? country,
    String? $__typename,
  });
  CopyWith$Query$getTNCountry$country<TRes> get country;
}

class _CopyWithImpl$Query$getTNCountry<TRes>
    implements CopyWith$Query$getTNCountry<TRes> {
  _CopyWithImpl$Query$getTNCountry(
    this._instance,
    this._then,
  );

  final Query$getTNCountry _instance;

  final TRes Function(Query$getTNCountry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? country = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getTNCountry(
        country: country == _undefined
            ? _instance.country
            : (country as Query$getTNCountry$country?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getTNCountry$country<TRes> get country {
    final local$country = _instance.country;
    return local$country == null
        ? CopyWith$Query$getTNCountry$country.stub(_then(_instance))
        : CopyWith$Query$getTNCountry$country(
            local$country, (e) => call(country: e));
  }
}

class _CopyWithStubImpl$Query$getTNCountry<TRes>
    implements CopyWith$Query$getTNCountry<TRes> {
  _CopyWithStubImpl$Query$getTNCountry(this._res);

  TRes _res;

  call({
    Query$getTNCountry$country? country,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getTNCountry$country<TRes> get country =>
      CopyWith$Query$getTNCountry$country.stub(_res);
}

const documentNodeQuerygetTNCountry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getTNCountry'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'country'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: StringValueNode(
              value: 'TN',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$getTNCountry _parserFn$Query$getTNCountry(Map<String, dynamic> data) =>
    Query$getTNCountry.fromJson(data);
typedef OnQueryComplete$Query$getTNCountry = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getTNCountry?,
);

class Options$Query$getTNCountry
    extends graphql.QueryOptions<Query$getTNCountry> {
  Options$Query$getTNCountry({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getTNCountry? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getTNCountry? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$getTNCountry(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetTNCountry,
          parserFn: _parserFn$Query$getTNCountry,
        );

  final OnQueryComplete$Query$getTNCountry? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getTNCountry
    extends graphql.WatchQueryOptions<Query$getTNCountry> {
  WatchOptions$Query$getTNCountry({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getTNCountry? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetTNCountry,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getTNCountry,
        );
}

class FetchMoreOptions$Query$getTNCountry extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getTNCountry(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerygetTNCountry,
        );
}

extension ClientExtension$Query$getTNCountry on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getTNCountry>> query$getTNCountry(
          [Options$Query$getTNCountry? options]) async =>
      await this.query(options ?? Options$Query$getTNCountry());
  graphql.ObservableQuery<Query$getTNCountry> watchQuery$getTNCountry(
          [WatchOptions$Query$getTNCountry? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getTNCountry());
  void writeQuery$getTNCountry({
    required Query$getTNCountry data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerygetTNCountry)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getTNCountry? readQuery$getTNCountry({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetTNCountry)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getTNCountry.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getTNCountry> useQuery$getTNCountry(
        [Options$Query$getTNCountry? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$getTNCountry());
graphql.ObservableQuery<Query$getTNCountry> useWatchQuery$getTNCountry(
        [WatchOptions$Query$getTNCountry? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$getTNCountry());

class Query$getTNCountry$Widget
    extends graphql_flutter.Query<Query$getTNCountry> {
  Query$getTNCountry$Widget({
    widgets.Key? key,
    Options$Query$getTNCountry? options,
    required graphql_flutter.QueryBuilder<Query$getTNCountry> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$getTNCountry(),
          builder: builder,
        );
}

class Query$getTNCountry$country {
  Query$getTNCountry$country({
    this.name,
    this.$__typename = 'Country',
  });

  factory Query$getTNCountry$country.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getTNCountry$country(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getTNCountry$country) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getTNCountry$country
    on Query$getTNCountry$country {
  CopyWith$Query$getTNCountry$country<Query$getTNCountry$country>
      get copyWith => CopyWith$Query$getTNCountry$country(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getTNCountry$country<TRes> {
  factory CopyWith$Query$getTNCountry$country(
    Query$getTNCountry$country instance,
    TRes Function(Query$getTNCountry$country) then,
  ) = _CopyWithImpl$Query$getTNCountry$country;

  factory CopyWith$Query$getTNCountry$country.stub(TRes res) =
      _CopyWithStubImpl$Query$getTNCountry$country;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getTNCountry$country<TRes>
    implements CopyWith$Query$getTNCountry$country<TRes> {
  _CopyWithImpl$Query$getTNCountry$country(
    this._instance,
    this._then,
  );

  final Query$getTNCountry$country _instance;

  final TRes Function(Query$getTNCountry$country) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getTNCountry$country(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getTNCountry$country<TRes>
    implements CopyWith$Query$getTNCountry$country<TRes> {
  _CopyWithStubImpl$Query$getTNCountry$country(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
