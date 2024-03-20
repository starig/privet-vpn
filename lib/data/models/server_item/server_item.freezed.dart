// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServerItem _$ServerItemFromJson(Map<String, dynamic> json) {
  return _ServerItem.fromJson(json);
}

/// @nodoc
mixin _$ServerItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;
  double get stress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerItemCopyWith<ServerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerItemCopyWith<$Res> {
  factory $ServerItemCopyWith(
          ServerItem value, $Res Function(ServerItem) then) =
      _$ServerItemCopyWithImpl<$Res, ServerItem>;
  @useResult
  $Res call({int id, String name, String country, String flag, double stress});
}

/// @nodoc
class _$ServerItemCopyWithImpl<$Res, $Val extends ServerItem>
    implements $ServerItemCopyWith<$Res> {
  _$ServerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? flag = null,
    Object? stress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      stress: null == stress
          ? _value.stress
          : stress // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerItemImplCopyWith<$Res>
    implements $ServerItemCopyWith<$Res> {
  factory _$$ServerItemImplCopyWith(
          _$ServerItemImpl value, $Res Function(_$ServerItemImpl) then) =
      __$$ServerItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String country, String flag, double stress});
}

/// @nodoc
class __$$ServerItemImplCopyWithImpl<$Res>
    extends _$ServerItemCopyWithImpl<$Res, _$ServerItemImpl>
    implements _$$ServerItemImplCopyWith<$Res> {
  __$$ServerItemImplCopyWithImpl(
      _$ServerItemImpl _value, $Res Function(_$ServerItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? flag = null,
    Object? stress = null,
  }) {
    return _then(_$ServerItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      stress: null == stress
          ? _value.stress
          : stress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerItemImpl implements _ServerItem {
  const _$ServerItemImpl(
      {required this.id,
      required this.name,
      required this.country,
      required this.flag,
      required this.stress});

  factory _$ServerItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerItemImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String country;
  @override
  final String flag;
  @override
  final double stress;

  @override
  String toString() {
    return 'ServerItem(id: $id, name: $name, country: $country, flag: $flag, stress: $stress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.stress, stress) || other.stress == stress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, country, flag, stress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerItemImplCopyWith<_$ServerItemImpl> get copyWith =>
      __$$ServerItemImplCopyWithImpl<_$ServerItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerItemImplToJson(
      this,
    );
  }
}

abstract class _ServerItem implements ServerItem {
  const factory _ServerItem(
      {required final int id,
      required final String name,
      required final String country,
      required final String flag,
      required final double stress}) = _$ServerItemImpl;

  factory _ServerItem.fromJson(Map<String, dynamic> json) =
      _$ServerItemImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get country;
  @override
  String get flag;
  @override
  double get stress;
  @override
  @JsonKey(ignore: true)
  _$$ServerItemImplCopyWith<_$ServerItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
