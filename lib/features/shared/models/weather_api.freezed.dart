// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherFocusResult _$WeatherFocusResultFromJson(Map<String, dynamic> json) {
  return _WeatherFocusResult.fromJson(json);
}

/// @nodoc
class _$WeatherFocusResultTearOff {
  const _$WeatherFocusResultTearOff();

  _WeatherFocusResult call(
      {ThisLocation? location,
      ErrorMessage? error,
      CurrentWeahter? current,
      Forecast? forecast}) {
    return _WeatherFocusResult(
      location: location,
      error: error,
      current: current,
      forecast: forecast,
    );
  }

  WeatherFocusResult fromJson(Map<String, Object?> json) {
    return WeatherFocusResult.fromJson(json);
  }
}

/// @nodoc
const $WeatherFocusResult = _$WeatherFocusResultTearOff();

/// @nodoc
mixin _$WeatherFocusResult {
  ThisLocation? get location => throw _privateConstructorUsedError;
  ErrorMessage? get error => throw _privateConstructorUsedError;
  CurrentWeahter? get current => throw _privateConstructorUsedError;
  Forecast? get forecast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherFocusResultCopyWith<WeatherFocusResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherFocusResultCopyWith<$Res> {
  factory $WeatherFocusResultCopyWith(
          WeatherFocusResult value, $Res Function(WeatherFocusResult) then) =
      _$WeatherFocusResultCopyWithImpl<$Res>;
  $Res call(
      {ThisLocation? location,
      ErrorMessage? error,
      CurrentWeahter? current,
      Forecast? forecast});

  $ThisLocationCopyWith<$Res>? get location;
  $ErrorMessageCopyWith<$Res>? get error;
  $CurrentWeahterCopyWith<$Res>? get current;
  $ForecastCopyWith<$Res>? get forecast;
}

/// @nodoc
class _$WeatherFocusResultCopyWithImpl<$Res>
    implements $WeatherFocusResultCopyWith<$Res> {
  _$WeatherFocusResultCopyWithImpl(this._value, this._then);

  final WeatherFocusResult _value;
  // ignore: unused_field
  final $Res Function(WeatherFocusResult) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? error = freezed,
    Object? current = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ThisLocation?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorMessage?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeahter?,
      forecast: forecast == freezed
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast?,
    ));
  }

  @override
  $ThisLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $ThisLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $ErrorMessageCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorMessageCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }

  @override
  $CurrentWeahterCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentWeahterCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value));
    });
  }

  @override
  $ForecastCopyWith<$Res>? get forecast {
    if (_value.forecast == null) {
      return null;
    }

    return $ForecastCopyWith<$Res>(_value.forecast!, (value) {
      return _then(_value.copyWith(forecast: value));
    });
  }
}

/// @nodoc
abstract class _$WeatherFocusResultCopyWith<$Res>
    implements $WeatherFocusResultCopyWith<$Res> {
  factory _$WeatherFocusResultCopyWith(
          _WeatherFocusResult value, $Res Function(_WeatherFocusResult) then) =
      __$WeatherFocusResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {ThisLocation? location,
      ErrorMessage? error,
      CurrentWeahter? current,
      Forecast? forecast});

  @override
  $ThisLocationCopyWith<$Res>? get location;
  @override
  $ErrorMessageCopyWith<$Res>? get error;
  @override
  $CurrentWeahterCopyWith<$Res>? get current;
  @override
  $ForecastCopyWith<$Res>? get forecast;
}

/// @nodoc
class __$WeatherFocusResultCopyWithImpl<$Res>
    extends _$WeatherFocusResultCopyWithImpl<$Res>
    implements _$WeatherFocusResultCopyWith<$Res> {
  __$WeatherFocusResultCopyWithImpl(
      _WeatherFocusResult _value, $Res Function(_WeatherFocusResult) _then)
      : super(_value, (v) => _then(v as _WeatherFocusResult));

  @override
  _WeatherFocusResult get _value => super._value as _WeatherFocusResult;

  @override
  $Res call({
    Object? location = freezed,
    Object? error = freezed,
    Object? current = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_WeatherFocusResult(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ThisLocation?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorMessage?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeahter?,
      forecast: forecast == freezed
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WeatherFocusResult extends _WeatherFocusResult {
  const _$_WeatherFocusResult(
      {this.location, this.error, this.current, this.forecast})
      : super._();

  factory _$_WeatherFocusResult.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFocusResultFromJson(json);

  @override
  final ThisLocation? location;
  @override
  final ErrorMessage? error;
  @override
  final CurrentWeahter? current;
  @override
  final Forecast? forecast;

  @override
  String toString() {
    return 'WeatherFocusResult(location: $location, error: $error, current: $current, forecast: $forecast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherFocusResult &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other.forecast, forecast));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(forecast));

  @JsonKey(ignore: true)
  @override
  _$WeatherFocusResultCopyWith<_WeatherFocusResult> get copyWith =>
      __$WeatherFocusResultCopyWithImpl<_WeatherFocusResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherFocusResultToJson(this);
  }
}

abstract class _WeatherFocusResult extends WeatherFocusResult {
  const factory _WeatherFocusResult(
      {ThisLocation? location,
      ErrorMessage? error,
      CurrentWeahter? current,
      Forecast? forecast}) = _$_WeatherFocusResult;
  const _WeatherFocusResult._() : super._();

  factory _WeatherFocusResult.fromJson(Map<String, dynamic> json) =
      _$_WeatherFocusResult.fromJson;

  @override
  ThisLocation? get location;
  @override
  ErrorMessage? get error;
  @override
  CurrentWeahter? get current;
  @override
  Forecast? get forecast;
  @override
  @JsonKey(ignore: true)
  _$WeatherFocusResultCopyWith<_WeatherFocusResult> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorMessage _$ErrorMessageFromJson(Map<String, dynamic> json) {
  return _ErrorMessage.fromJson(json);
}

/// @nodoc
class _$ErrorMessageTearOff {
  const _$ErrorMessageTearOff();

  _ErrorMessage call({required String message}) {
    return _ErrorMessage(
      message: message,
    );
  }

  ErrorMessage fromJson(Map<String, Object?> json) {
    return ErrorMessage.fromJson(json);
  }
}

/// @nodoc
const $ErrorMessage = _$ErrorMessageTearOff();

/// @nodoc
mixin _$ErrorMessage {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorMessageCopyWith<ErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorMessageCopyWith<$Res> {
  factory $ErrorMessageCopyWith(
          ErrorMessage value, $Res Function(ErrorMessage) then) =
      _$ErrorMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorMessageCopyWithImpl<$Res> implements $ErrorMessageCopyWith<$Res> {
  _$ErrorMessageCopyWithImpl(this._value, this._then);

  final ErrorMessage _value;
  // ignore: unused_field
  final $Res Function(ErrorMessage) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ErrorMessageCopyWith<$Res>
    implements $ErrorMessageCopyWith<$Res> {
  factory _$ErrorMessageCopyWith(
          _ErrorMessage value, $Res Function(_ErrorMessage) then) =
      __$ErrorMessageCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ErrorMessageCopyWithImpl<$Res> extends _$ErrorMessageCopyWithImpl<$Res>
    implements _$ErrorMessageCopyWith<$Res> {
  __$ErrorMessageCopyWithImpl(
      _ErrorMessage _value, $Res Function(_ErrorMessage) _then)
      : super(_value, (v) => _then(v as _ErrorMessage));

  @override
  _ErrorMessage get _value => super._value as _ErrorMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorMessage extends _ErrorMessage {
  const _$_ErrorMessage({required this.message}) : super._();

  factory _$_ErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorMessageFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'ErrorMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorMessageCopyWith<_ErrorMessage> get copyWith =>
      __$ErrorMessageCopyWithImpl<_ErrorMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorMessageToJson(this);
  }
}

abstract class _ErrorMessage extends ErrorMessage {
  const factory _ErrorMessage({required String message}) = _$_ErrorMessage;
  const _ErrorMessage._() : super._();

  factory _ErrorMessage.fromJson(Map<String, dynamic> json) =
      _$_ErrorMessage.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$ErrorMessageCopyWith<_ErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

ThisLocation _$ThisLocationFromJson(Map<String, dynamic> json) {
  return _ThisLocation.fromJson(json);
}

/// @nodoc
class _$ThisLocationTearOff {
  const _$ThisLocationTearOff();

  _ThisLocation call(
      {required String name, required String region, required String country}) {
    return _ThisLocation(
      name: name,
      region: region,
      country: country,
    );
  }

  ThisLocation fromJson(Map<String, Object?> json) {
    return ThisLocation.fromJson(json);
  }
}

/// @nodoc
const $ThisLocation = _$ThisLocationTearOff();

/// @nodoc
mixin _$ThisLocation {
  String get name => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThisLocationCopyWith<ThisLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThisLocationCopyWith<$Res> {
  factory $ThisLocationCopyWith(
          ThisLocation value, $Res Function(ThisLocation) then) =
      _$ThisLocationCopyWithImpl<$Res>;
  $Res call({String name, String region, String country});
}

/// @nodoc
class _$ThisLocationCopyWithImpl<$Res> implements $ThisLocationCopyWith<$Res> {
  _$ThisLocationCopyWithImpl(this._value, this._then);

  final ThisLocation _value;
  // ignore: unused_field
  final $Res Function(ThisLocation) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? region = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ThisLocationCopyWith<$Res>
    implements $ThisLocationCopyWith<$Res> {
  factory _$ThisLocationCopyWith(
          _ThisLocation value, $Res Function(_ThisLocation) then) =
      __$ThisLocationCopyWithImpl<$Res>;
  @override
  $Res call({String name, String region, String country});
}

/// @nodoc
class __$ThisLocationCopyWithImpl<$Res> extends _$ThisLocationCopyWithImpl<$Res>
    implements _$ThisLocationCopyWith<$Res> {
  __$ThisLocationCopyWithImpl(
      _ThisLocation _value, $Res Function(_ThisLocation) _then)
      : super(_value, (v) => _then(v as _ThisLocation));

  @override
  _ThisLocation get _value => super._value as _ThisLocation;

  @override
  $Res call({
    Object? name = freezed,
    Object? region = freezed,
    Object? country = freezed,
  }) {
    return _then(_ThisLocation(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ThisLocation extends _ThisLocation {
  const _$_ThisLocation(
      {required this.name, required this.region, required this.country})
      : super._();

  factory _$_ThisLocation.fromJson(Map<String, dynamic> json) =>
      _$$_ThisLocationFromJson(json);

  @override
  final String name;
  @override
  final String region;
  @override
  final String country;

  @override
  String toString() {
    return 'ThisLocation(name: $name, region: $region, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThisLocation &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.region, region) &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(region),
      const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  _$ThisLocationCopyWith<_ThisLocation> get copyWith =>
      __$ThisLocationCopyWithImpl<_ThisLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThisLocationToJson(this);
  }
}

abstract class _ThisLocation extends ThisLocation {
  const factory _ThisLocation(
      {required String name,
      required String region,
      required String country}) = _$_ThisLocation;
  const _ThisLocation._() : super._();

  factory _ThisLocation.fromJson(Map<String, dynamic> json) =
      _$_ThisLocation.fromJson;

  @override
  String get name;
  @override
  String get region;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$ThisLocationCopyWith<_ThisLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherCondition _$WeatherConditionFromJson(Map<String, dynamic> json) {
  return _WeatherCondition.fromJson(json);
}

/// @nodoc
class _$WeatherConditionTearOff {
  const _$WeatherConditionTearOff();

  _WeatherCondition call(
      {required String text,
      @IconUrlConverter() @JsonKey(name: 'icon') required String iconUrl,
      required int code}) {
    return _WeatherCondition(
      text: text,
      iconUrl: iconUrl,
      code: code,
    );
  }

  WeatherCondition fromJson(Map<String, Object?> json) {
    return WeatherCondition.fromJson(json);
  }
}

/// @nodoc
const $WeatherCondition = _$WeatherConditionTearOff();

/// @nodoc
mixin _$WeatherCondition {
  String get text => throw _privateConstructorUsedError;
  @IconUrlConverter()
  @JsonKey(name: 'icon')
  String get iconUrl => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherConditionCopyWith<WeatherCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionCopyWith<$Res> {
  factory $WeatherConditionCopyWith(
          WeatherCondition value, $Res Function(WeatherCondition) then) =
      _$WeatherConditionCopyWithImpl<$Res>;
  $Res call(
      {String text,
      @IconUrlConverter() @JsonKey(name: 'icon') String iconUrl,
      int code});
}

/// @nodoc
class _$WeatherConditionCopyWithImpl<$Res>
    implements $WeatherConditionCopyWith<$Res> {
  _$WeatherConditionCopyWithImpl(this._value, this._then);

  final WeatherCondition _value;
  // ignore: unused_field
  final $Res Function(WeatherCondition) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? iconUrl = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WeatherConditionCopyWith<$Res>
    implements $WeatherConditionCopyWith<$Res> {
  factory _$WeatherConditionCopyWith(
          _WeatherCondition value, $Res Function(_WeatherCondition) then) =
      __$WeatherConditionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String text,
      @IconUrlConverter() @JsonKey(name: 'icon') String iconUrl,
      int code});
}

/// @nodoc
class __$WeatherConditionCopyWithImpl<$Res>
    extends _$WeatherConditionCopyWithImpl<$Res>
    implements _$WeatherConditionCopyWith<$Res> {
  __$WeatherConditionCopyWithImpl(
      _WeatherCondition _value, $Res Function(_WeatherCondition) _then)
      : super(_value, (v) => _then(v as _WeatherCondition));

  @override
  _WeatherCondition get _value => super._value as _WeatherCondition;

  @override
  $Res call({
    Object? text = freezed,
    Object? iconUrl = freezed,
    Object? code = freezed,
  }) {
    return _then(_WeatherCondition(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherCondition extends _WeatherCondition {
  const _$_WeatherCondition(
      {required this.text,
      @IconUrlConverter() @JsonKey(name: 'icon') required this.iconUrl,
      required this.code})
      : super._();

  factory _$_WeatherCondition.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherConditionFromJson(json);

  @override
  final String text;
  @override
  @IconUrlConverter()
  @JsonKey(name: 'icon')
  final String iconUrl;
  @override
  final int code;

  @override
  String toString() {
    return 'WeatherCondition(text: $text, iconUrl: $iconUrl, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherCondition &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.iconUrl, iconUrl) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(iconUrl),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$WeatherConditionCopyWith<_WeatherCondition> get copyWith =>
      __$WeatherConditionCopyWithImpl<_WeatherCondition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherConditionToJson(this);
  }
}

abstract class _WeatherCondition extends WeatherCondition {
  const factory _WeatherCondition(
      {required String text,
      @IconUrlConverter() @JsonKey(name: 'icon') required String iconUrl,
      required int code}) = _$_WeatherCondition;
  const _WeatherCondition._() : super._();

  factory _WeatherCondition.fromJson(Map<String, dynamic> json) =
      _$_WeatherCondition.fromJson;

  @override
  String get text;
  @override
  @IconUrlConverter()
  @JsonKey(name: 'icon')
  String get iconUrl;
  @override
  int get code;
  @override
  @JsonKey(ignore: true)
  _$WeatherConditionCopyWith<_WeatherCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWeahter _$CurrentWeahterFromJson(Map<String, dynamic> json) {
  return _CurrentWeahter.fromJson(json);
}

/// @nodoc
class _$CurrentWeahterTearOff {
  const _$CurrentWeahterTearOff();

  _CurrentWeahter call(
      {@JsonKey(name: 'temp_c') required double temptInCelsius,
      required WeatherCondition condition,
      required int humidity,
      @JsonKey(name: 'feelslike_c') required double feelsLikeInCelsius}) {
    return _CurrentWeahter(
      temptInCelsius: temptInCelsius,
      condition: condition,
      humidity: humidity,
      feelsLikeInCelsius: feelsLikeInCelsius,
    );
  }

  CurrentWeahter fromJson(Map<String, Object?> json) {
    return CurrentWeahter.fromJson(json);
  }
}

/// @nodoc
const $CurrentWeahter = _$CurrentWeahterTearOff();

/// @nodoc
mixin _$CurrentWeahter {
  @JsonKey(name: 'temp_c')
  double get temptInCelsius => throw _privateConstructorUsedError;
  WeatherCondition get condition => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_c')
  double get feelsLikeInCelsius => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeahterCopyWith<CurrentWeahter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeahterCopyWith<$Res> {
  factory $CurrentWeahterCopyWith(
          CurrentWeahter value, $Res Function(CurrentWeahter) then) =
      _$CurrentWeahterCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'temp_c') double temptInCelsius,
      WeatherCondition condition,
      int humidity,
      @JsonKey(name: 'feelslike_c') double feelsLikeInCelsius});

  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$CurrentWeahterCopyWithImpl<$Res>
    implements $CurrentWeahterCopyWith<$Res> {
  _$CurrentWeahterCopyWithImpl(this._value, this._then);

  final CurrentWeahter _value;
  // ignore: unused_field
  final $Res Function(CurrentWeahter) _then;

  @override
  $Res call({
    Object? temptInCelsius = freezed,
    Object? condition = freezed,
    Object? humidity = freezed,
    Object? feelsLikeInCelsius = freezed,
  }) {
    return _then(_value.copyWith(
      temptInCelsius: temptInCelsius == freezed
          ? _value.temptInCelsius
          : temptInCelsius // ignore: cast_nullable_to_non_nullable
              as double,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      feelsLikeInCelsius: feelsLikeInCelsius == freezed
          ? _value.feelsLikeInCelsius
          : feelsLikeInCelsius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $WeatherConditionCopyWith<$Res> get condition {
    return $WeatherConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value));
    });
  }
}

/// @nodoc
abstract class _$CurrentWeahterCopyWith<$Res>
    implements $CurrentWeahterCopyWith<$Res> {
  factory _$CurrentWeahterCopyWith(
          _CurrentWeahter value, $Res Function(_CurrentWeahter) then) =
      __$CurrentWeahterCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'temp_c') double temptInCelsius,
      WeatherCondition condition,
      int humidity,
      @JsonKey(name: 'feelslike_c') double feelsLikeInCelsius});

  @override
  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$CurrentWeahterCopyWithImpl<$Res>
    extends _$CurrentWeahterCopyWithImpl<$Res>
    implements _$CurrentWeahterCopyWith<$Res> {
  __$CurrentWeahterCopyWithImpl(
      _CurrentWeahter _value, $Res Function(_CurrentWeahter) _then)
      : super(_value, (v) => _then(v as _CurrentWeahter));

  @override
  _CurrentWeahter get _value => super._value as _CurrentWeahter;

  @override
  $Res call({
    Object? temptInCelsius = freezed,
    Object? condition = freezed,
    Object? humidity = freezed,
    Object? feelsLikeInCelsius = freezed,
  }) {
    return _then(_CurrentWeahter(
      temptInCelsius: temptInCelsius == freezed
          ? _value.temptInCelsius
          : temptInCelsius // ignore: cast_nullable_to_non_nullable
              as double,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      feelsLikeInCelsius: feelsLikeInCelsius == freezed
          ? _value.feelsLikeInCelsius
          : feelsLikeInCelsius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentWeahter extends _CurrentWeahter {
  const _$_CurrentWeahter(
      {@JsonKey(name: 'temp_c') required this.temptInCelsius,
      required this.condition,
      required this.humidity,
      @JsonKey(name: 'feelslike_c') required this.feelsLikeInCelsius})
      : super._();

  factory _$_CurrentWeahter.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWeahterFromJson(json);

  @override
  @JsonKey(name: 'temp_c')
  final double temptInCelsius;
  @override
  final WeatherCondition condition;
  @override
  final int humidity;
  @override
  @JsonKey(name: 'feelslike_c')
  final double feelsLikeInCelsius;

  @override
  String toString() {
    return 'CurrentWeahter(temptInCelsius: $temptInCelsius, condition: $condition, humidity: $humidity, feelsLikeInCelsius: $feelsLikeInCelsius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentWeahter &&
            const DeepCollectionEquality()
                .equals(other.temptInCelsius, temptInCelsius) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality()
                .equals(other.feelsLikeInCelsius, feelsLikeInCelsius));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temptInCelsius),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(feelsLikeInCelsius));

  @JsonKey(ignore: true)
  @override
  _$CurrentWeahterCopyWith<_CurrentWeahter> get copyWith =>
      __$CurrentWeahterCopyWithImpl<_CurrentWeahter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWeahterToJson(this);
  }
}

abstract class _CurrentWeahter extends CurrentWeahter {
  const factory _CurrentWeahter(
          {@JsonKey(name: 'temp_c') required double temptInCelsius,
          required WeatherCondition condition,
          required int humidity,
          @JsonKey(name: 'feelslike_c') required double feelsLikeInCelsius}) =
      _$_CurrentWeahter;
  const _CurrentWeahter._() : super._();

  factory _CurrentWeahter.fromJson(Map<String, dynamic> json) =
      _$_CurrentWeahter.fromJson;

  @override
  @JsonKey(name: 'temp_c')
  double get temptInCelsius;
  @override
  WeatherCondition get condition;
  @override
  int get humidity;
  @override
  @JsonKey(name: 'feelslike_c')
  double get feelsLikeInCelsius;
  @override
  @JsonKey(ignore: true)
  _$CurrentWeahterCopyWith<_CurrentWeahter> get copyWith =>
      throw _privateConstructorUsedError;
}

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return _Forecast.fromJson(json);
}

/// @nodoc
class _$ForecastTearOff {
  const _$ForecastTearOff();

  _Forecast call(
      {@JsonKey(name: 'forecastday') required List<ForecastDay> focusList}) {
    return _Forecast(
      focusList: focusList,
    );
  }

  Forecast fromJson(Map<String, Object?> json) {
    return Forecast.fromJson(json);
  }
}

/// @nodoc
const $Forecast = _$ForecastTearOff();

/// @nodoc
mixin _$Forecast {
  @JsonKey(name: 'forecastday')
  List<ForecastDay> get focusList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastCopyWith<Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) then) =
      _$ForecastCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'forecastday') List<ForecastDay> focusList});
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res> implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._value, this._then);

  final Forecast _value;
  // ignore: unused_field
  final $Res Function(Forecast) _then;

  @override
  $Res call({
    Object? focusList = freezed,
  }) {
    return _then(_value.copyWith(
      focusList: focusList == freezed
          ? _value.focusList
          : focusList // ignore: cast_nullable_to_non_nullable
              as List<ForecastDay>,
    ));
  }
}

/// @nodoc
abstract class _$ForecastCopyWith<$Res> implements $ForecastCopyWith<$Res> {
  factory _$ForecastCopyWith(_Forecast value, $Res Function(_Forecast) then) =
      __$ForecastCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'forecastday') List<ForecastDay> focusList});
}

/// @nodoc
class __$ForecastCopyWithImpl<$Res> extends _$ForecastCopyWithImpl<$Res>
    implements _$ForecastCopyWith<$Res> {
  __$ForecastCopyWithImpl(_Forecast _value, $Res Function(_Forecast) _then)
      : super(_value, (v) => _then(v as _Forecast));

  @override
  _Forecast get _value => super._value as _Forecast;

  @override
  $Res call({
    Object? focusList = freezed,
  }) {
    return _then(_Forecast(
      focusList: focusList == freezed
          ? _value.focusList
          : focusList // ignore: cast_nullable_to_non_nullable
              as List<ForecastDay>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Forecast extends _Forecast {
  const _$_Forecast({@JsonKey(name: 'forecastday') required this.focusList})
      : super._();

  factory _$_Forecast.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastFromJson(json);

  @override
  @JsonKey(name: 'forecastday')
  final List<ForecastDay> focusList;

  @override
  String toString() {
    return 'Forecast(focusList: $focusList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Forecast &&
            const DeepCollectionEquality().equals(other.focusList, focusList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(focusList));

  @JsonKey(ignore: true)
  @override
  _$ForecastCopyWith<_Forecast> get copyWith =>
      __$ForecastCopyWithImpl<_Forecast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastToJson(this);
  }
}

abstract class _Forecast extends Forecast {
  const factory _Forecast(
      {@JsonKey(name: 'forecastday')
          required List<ForecastDay> focusList}) = _$_Forecast;
  const _Forecast._() : super._();

  factory _Forecast.fromJson(Map<String, dynamic> json) = _$_Forecast.fromJson;

  @override
  @JsonKey(name: 'forecastday')
  List<ForecastDay> get focusList;
  @override
  @JsonKey(ignore: true)
  _$ForecastCopyWith<_Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastDay _$ForecastDayFromJson(Map<String, dynamic> json) {
  return _ForecastDay.fromJson(json);
}

/// @nodoc
class _$ForecastDayTearOff {
  const _$ForecastDayTearOff();

  _ForecastDay call(
      {required String date,
      @JsonKey(name: 'day') required ForecastWeather forecast}) {
    return _ForecastDay(
      date: date,
      forecast: forecast,
    );
  }

  ForecastDay fromJson(Map<String, Object?> json) {
    return ForecastDay.fromJson(json);
  }
}

/// @nodoc
const $ForecastDay = _$ForecastDayTearOff();

/// @nodoc
mixin _$ForecastDay {
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'day')
  ForecastWeather get forecast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDayCopyWith<ForecastDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayCopyWith<$Res> {
  factory $ForecastDayCopyWith(
          ForecastDay value, $Res Function(ForecastDay) then) =
      _$ForecastDayCopyWithImpl<$Res>;
  $Res call({String date, @JsonKey(name: 'day') ForecastWeather forecast});

  $ForecastWeatherCopyWith<$Res> get forecast;
}

/// @nodoc
class _$ForecastDayCopyWithImpl<$Res> implements $ForecastDayCopyWith<$Res> {
  _$ForecastDayCopyWithImpl(this._value, this._then);

  final ForecastDay _value;
  // ignore: unused_field
  final $Res Function(ForecastDay) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      forecast: forecast == freezed
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastWeather,
    ));
  }

  @override
  $ForecastWeatherCopyWith<$Res> get forecast {
    return $ForecastWeatherCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value));
    });
  }
}

/// @nodoc
abstract class _$ForecastDayCopyWith<$Res>
    implements $ForecastDayCopyWith<$Res> {
  factory _$ForecastDayCopyWith(
          _ForecastDay value, $Res Function(_ForecastDay) then) =
      __$ForecastDayCopyWithImpl<$Res>;
  @override
  $Res call({String date, @JsonKey(name: 'day') ForecastWeather forecast});

  @override
  $ForecastWeatherCopyWith<$Res> get forecast;
}

/// @nodoc
class __$ForecastDayCopyWithImpl<$Res> extends _$ForecastDayCopyWithImpl<$Res>
    implements _$ForecastDayCopyWith<$Res> {
  __$ForecastDayCopyWithImpl(
      _ForecastDay _value, $Res Function(_ForecastDay) _then)
      : super(_value, (v) => _then(v as _ForecastDay));

  @override
  _ForecastDay get _value => super._value as _ForecastDay;

  @override
  $Res call({
    Object? date = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_ForecastDay(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      forecast: forecast == freezed
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastWeather,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastDay extends _ForecastDay {
  const _$_ForecastDay(
      {required this.date, @JsonKey(name: 'day') required this.forecast})
      : super._();

  factory _$_ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastDayFromJson(json);

  @override
  final String date;
  @override
  @JsonKey(name: 'day')
  final ForecastWeather forecast;

  @override
  String toString() {
    return 'ForecastDay(date: $date, forecast: $forecast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForecastDay &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.forecast, forecast));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(forecast));

  @JsonKey(ignore: true)
  @override
  _$ForecastDayCopyWith<_ForecastDay> get copyWith =>
      __$ForecastDayCopyWithImpl<_ForecastDay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastDayToJson(this);
  }
}

abstract class _ForecastDay extends ForecastDay {
  const factory _ForecastDay(
          {required String date,
          @JsonKey(name: 'day') required ForecastWeather forecast}) =
      _$_ForecastDay;
  const _ForecastDay._() : super._();

  factory _ForecastDay.fromJson(Map<String, dynamic> json) =
      _$_ForecastDay.fromJson;

  @override
  String get date;
  @override
  @JsonKey(name: 'day')
  ForecastWeather get forecast;
  @override
  @JsonKey(ignore: true)
  _$ForecastDayCopyWith<_ForecastDay> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastWeather _$ForecastWeatherFromJson(Map<String, dynamic> json) {
  return _ForecastWeather.fromJson(json);
}

/// @nodoc
class _$ForecastWeatherTearOff {
  const _$ForecastWeatherTearOff();

  _ForecastWeather call(
      {@JsonKey(name: 'maxtemp_c') required double maxTempInCelsius,
      @JsonKey(name: 'mintemp_c') required double minTempInCelsius,
      @JsonKey(name: 'daily_chance_of_rain') required int rainChanceInPercent,
      @JsonKey(name: 'daily_chance_of_snow') required int snowChanceInPercent,
      @JsonKey(name: 'avghumidity') required int avgHumidity,
      required WeatherCondition condition}) {
    return _ForecastWeather(
      maxTempInCelsius: maxTempInCelsius,
      minTempInCelsius: minTempInCelsius,
      rainChanceInPercent: rainChanceInPercent,
      snowChanceInPercent: snowChanceInPercent,
      avgHumidity: avgHumidity,
      condition: condition,
    );
  }

  ForecastWeather fromJson(Map<String, Object?> json) {
    return ForecastWeather.fromJson(json);
  }
}

/// @nodoc
const $ForecastWeather = _$ForecastWeatherTearOff();

/// @nodoc
mixin _$ForecastWeather {
  @JsonKey(name: 'maxtemp_c')
  double get maxTempInCelsius => throw _privateConstructorUsedError;
  @JsonKey(name: 'mintemp_c')
  double get minTempInCelsius => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_chance_of_rain')
  int get rainChanceInPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_chance_of_snow')
  int get snowChanceInPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'avghumidity')
  int get avgHumidity => throw _privateConstructorUsedError;
  WeatherCondition get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherCopyWith<ForecastWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherCopyWith<$Res> {
  factory $ForecastWeatherCopyWith(
          ForecastWeather value, $Res Function(ForecastWeather) then) =
      _$ForecastWeatherCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'maxtemp_c') double maxTempInCelsius,
      @JsonKey(name: 'mintemp_c') double minTempInCelsius,
      @JsonKey(name: 'daily_chance_of_rain') int rainChanceInPercent,
      @JsonKey(name: 'daily_chance_of_snow') int snowChanceInPercent,
      @JsonKey(name: 'avghumidity') int avgHumidity,
      WeatherCondition condition});

  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$ForecastWeatherCopyWithImpl<$Res>
    implements $ForecastWeatherCopyWith<$Res> {
  _$ForecastWeatherCopyWithImpl(this._value, this._then);

  final ForecastWeather _value;
  // ignore: unused_field
  final $Res Function(ForecastWeather) _then;

  @override
  $Res call({
    Object? maxTempInCelsius = freezed,
    Object? minTempInCelsius = freezed,
    Object? rainChanceInPercent = freezed,
    Object? snowChanceInPercent = freezed,
    Object? avgHumidity = freezed,
    Object? condition = freezed,
  }) {
    return _then(_value.copyWith(
      maxTempInCelsius: maxTempInCelsius == freezed
          ? _value.maxTempInCelsius
          : maxTempInCelsius // ignore: cast_nullable_to_non_nullable
              as double,
      minTempInCelsius: minTempInCelsius == freezed
          ? _value.minTempInCelsius
          : minTempInCelsius // ignore: cast_nullable_to_non_nullable
              as double,
      rainChanceInPercent: rainChanceInPercent == freezed
          ? _value.rainChanceInPercent
          : rainChanceInPercent // ignore: cast_nullable_to_non_nullable
              as int,
      snowChanceInPercent: snowChanceInPercent == freezed
          ? _value.snowChanceInPercent
          : snowChanceInPercent // ignore: cast_nullable_to_non_nullable
              as int,
      avgHumidity: avgHumidity == freezed
          ? _value.avgHumidity
          : avgHumidity // ignore: cast_nullable_to_non_nullable
              as int,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
    ));
  }

  @override
  $WeatherConditionCopyWith<$Res> get condition {
    return $WeatherConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value));
    });
  }
}

/// @nodoc
abstract class _$ForecastWeatherCopyWith<$Res>
    implements $ForecastWeatherCopyWith<$Res> {
  factory _$ForecastWeatherCopyWith(
          _ForecastWeather value, $Res Function(_ForecastWeather) then) =
      __$ForecastWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'maxtemp_c') double maxTempInCelsius,
      @JsonKey(name: 'mintemp_c') double minTempInCelsius,
      @JsonKey(name: 'daily_chance_of_rain') int rainChanceInPercent,
      @JsonKey(name: 'daily_chance_of_snow') int snowChanceInPercent,
      @JsonKey(name: 'avghumidity') int avgHumidity,
      WeatherCondition condition});

  @override
  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$ForecastWeatherCopyWithImpl<$Res>
    extends _$ForecastWeatherCopyWithImpl<$Res>
    implements _$ForecastWeatherCopyWith<$Res> {
  __$ForecastWeatherCopyWithImpl(
      _ForecastWeather _value, $Res Function(_ForecastWeather) _then)
      : super(_value, (v) => _then(v as _ForecastWeather));

  @override
  _ForecastWeather get _value => super._value as _ForecastWeather;

  @override
  $Res call({
    Object? maxTempInCelsius = freezed,
    Object? minTempInCelsius = freezed,
    Object? rainChanceInPercent = freezed,
    Object? snowChanceInPercent = freezed,
    Object? avgHumidity = freezed,
    Object? condition = freezed,
  }) {
    return _then(_ForecastWeather(
      maxTempInCelsius: maxTempInCelsius == freezed
          ? _value.maxTempInCelsius
          : maxTempInCelsius // ignore: cast_nullable_to_non_nullable
              as double,
      minTempInCelsius: minTempInCelsius == freezed
          ? _value.minTempInCelsius
          : minTempInCelsius // ignore: cast_nullable_to_non_nullable
              as double,
      rainChanceInPercent: rainChanceInPercent == freezed
          ? _value.rainChanceInPercent
          : rainChanceInPercent // ignore: cast_nullable_to_non_nullable
              as int,
      snowChanceInPercent: snowChanceInPercent == freezed
          ? _value.snowChanceInPercent
          : snowChanceInPercent // ignore: cast_nullable_to_non_nullable
              as int,
      avgHumidity: avgHumidity == freezed
          ? _value.avgHumidity
          : avgHumidity // ignore: cast_nullable_to_non_nullable
              as int,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastWeather extends _ForecastWeather {
  const _$_ForecastWeather(
      {@JsonKey(name: 'maxtemp_c') required this.maxTempInCelsius,
      @JsonKey(name: 'mintemp_c') required this.minTempInCelsius,
      @JsonKey(name: 'daily_chance_of_rain') required this.rainChanceInPercent,
      @JsonKey(name: 'daily_chance_of_snow') required this.snowChanceInPercent,
      @JsonKey(name: 'avghumidity') required this.avgHumidity,
      required this.condition})
      : super._();

  factory _$_ForecastWeather.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastWeatherFromJson(json);

  @override
  @JsonKey(name: 'maxtemp_c')
  final double maxTempInCelsius;
  @override
  @JsonKey(name: 'mintemp_c')
  final double minTempInCelsius;
  @override
  @JsonKey(name: 'daily_chance_of_rain')
  final int rainChanceInPercent;
  @override
  @JsonKey(name: 'daily_chance_of_snow')
  final int snowChanceInPercent;
  @override
  @JsonKey(name: 'avghumidity')
  final int avgHumidity;
  @override
  final WeatherCondition condition;

  @override
  String toString() {
    return 'ForecastWeather(maxTempInCelsius: $maxTempInCelsius, minTempInCelsius: $minTempInCelsius, rainChanceInPercent: $rainChanceInPercent, snowChanceInPercent: $snowChanceInPercent, avgHumidity: $avgHumidity, condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForecastWeather &&
            const DeepCollectionEquality()
                .equals(other.maxTempInCelsius, maxTempInCelsius) &&
            const DeepCollectionEquality()
                .equals(other.minTempInCelsius, minTempInCelsius) &&
            const DeepCollectionEquality()
                .equals(other.rainChanceInPercent, rainChanceInPercent) &&
            const DeepCollectionEquality()
                .equals(other.snowChanceInPercent, snowChanceInPercent) &&
            const DeepCollectionEquality()
                .equals(other.avgHumidity, avgHumidity) &&
            const DeepCollectionEquality().equals(other.condition, condition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maxTempInCelsius),
      const DeepCollectionEquality().hash(minTempInCelsius),
      const DeepCollectionEquality().hash(rainChanceInPercent),
      const DeepCollectionEquality().hash(snowChanceInPercent),
      const DeepCollectionEquality().hash(avgHumidity),
      const DeepCollectionEquality().hash(condition));

  @JsonKey(ignore: true)
  @override
  _$ForecastWeatherCopyWith<_ForecastWeather> get copyWith =>
      __$ForecastWeatherCopyWithImpl<_ForecastWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastWeatherToJson(this);
  }
}

abstract class _ForecastWeather extends ForecastWeather {
  const factory _ForecastWeather(
      {@JsonKey(name: 'maxtemp_c') required double maxTempInCelsius,
      @JsonKey(name: 'mintemp_c') required double minTempInCelsius,
      @JsonKey(name: 'daily_chance_of_rain') required int rainChanceInPercent,
      @JsonKey(name: 'daily_chance_of_snow') required int snowChanceInPercent,
      @JsonKey(name: 'avghumidity') required int avgHumidity,
      required WeatherCondition condition}) = _$_ForecastWeather;
  const _ForecastWeather._() : super._();

  factory _ForecastWeather.fromJson(Map<String, dynamic> json) =
      _$_ForecastWeather.fromJson;

  @override
  @JsonKey(name: 'maxtemp_c')
  double get maxTempInCelsius;
  @override
  @JsonKey(name: 'mintemp_c')
  double get minTempInCelsius;
  @override
  @JsonKey(name: 'daily_chance_of_rain')
  int get rainChanceInPercent;
  @override
  @JsonKey(name: 'daily_chance_of_snow')
  int get snowChanceInPercent;
  @override
  @JsonKey(name: 'avghumidity')
  int get avgHumidity;
  @override
  WeatherCondition get condition;
  @override
  @JsonKey(ignore: true)
  _$ForecastWeatherCopyWith<_ForecastWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

PossibleLocation _$PossibleLocationFromJson(Map<String, dynamic> json) {
  return _PossibleLocation.fromJson(json);
}

/// @nodoc
class _$PossibleLocationTearOff {
  const _$PossibleLocationTearOff();

  _PossibleLocation call(
      {required String name, required double lat, required double lon}) {
    return _PossibleLocation(
      name: name,
      lat: lat,
      lon: lon,
    );
  }

  PossibleLocation fromJson(Map<String, Object?> json) {
    return PossibleLocation.fromJson(json);
  }
}

/// @nodoc
const $PossibleLocation = _$PossibleLocationTearOff();

/// @nodoc
mixin _$PossibleLocation {
  String get name => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PossibleLocationCopyWith<PossibleLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PossibleLocationCopyWith<$Res> {
  factory $PossibleLocationCopyWith(
          PossibleLocation value, $Res Function(PossibleLocation) then) =
      _$PossibleLocationCopyWithImpl<$Res>;
  $Res call({String name, double lat, double lon});
}

/// @nodoc
class _$PossibleLocationCopyWithImpl<$Res>
    implements $PossibleLocationCopyWith<$Res> {
  _$PossibleLocationCopyWithImpl(this._value, this._then);

  final PossibleLocation _value;
  // ignore: unused_field
  final $Res Function(PossibleLocation) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$PossibleLocationCopyWith<$Res>
    implements $PossibleLocationCopyWith<$Res> {
  factory _$PossibleLocationCopyWith(
          _PossibleLocation value, $Res Function(_PossibleLocation) then) =
      __$PossibleLocationCopyWithImpl<$Res>;
  @override
  $Res call({String name, double lat, double lon});
}

/// @nodoc
class __$PossibleLocationCopyWithImpl<$Res>
    extends _$PossibleLocationCopyWithImpl<$Res>
    implements _$PossibleLocationCopyWith<$Res> {
  __$PossibleLocationCopyWithImpl(
      _PossibleLocation _value, $Res Function(_PossibleLocation) _then)
      : super(_value, (v) => _then(v as _PossibleLocation));

  @override
  _PossibleLocation get _value => super._value as _PossibleLocation;

  @override
  $Res call({
    Object? name = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_PossibleLocation(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PossibleLocation extends _PossibleLocation {
  const _$_PossibleLocation(
      {required this.name, required this.lat, required this.lon})
      : super._();

  factory _$_PossibleLocation.fromJson(Map<String, dynamic> json) =>
      _$$_PossibleLocationFromJson(json);

  @override
  final String name;
  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'PossibleLocation(name: $name, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PossibleLocation &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon));

  @JsonKey(ignore: true)
  @override
  _$PossibleLocationCopyWith<_PossibleLocation> get copyWith =>
      __$PossibleLocationCopyWithImpl<_PossibleLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PossibleLocationToJson(this);
  }
}

abstract class _PossibleLocation extends PossibleLocation {
  const factory _PossibleLocation(
      {required String name,
      required double lat,
      required double lon}) = _$_PossibleLocation;
  const _PossibleLocation._() : super._();

  factory _PossibleLocation.fromJson(Map<String, dynamic> json) =
      _$_PossibleLocation.fromJson;

  @override
  String get name;
  @override
  double get lat;
  @override
  double get lon;
  @override
  @JsonKey(ignore: true)
  _$PossibleLocationCopyWith<_PossibleLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
