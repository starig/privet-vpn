// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerItemImpl _$$ServerItemImplFromJson(Map<String, dynamic> json) =>
    _$ServerItemImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      country: json['country'] as String,
      flag: json['flag'] as String,
      stress: (json['stress'] as num).toDouble(),
    );

Map<String, dynamic> _$$ServerItemImplToJson(_$ServerItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'flag': instance.flag,
      'stress': instance.stress,
    };
