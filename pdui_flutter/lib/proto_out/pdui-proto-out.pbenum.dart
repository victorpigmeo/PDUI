// This is a generated file - do not edit.
//
// Generated from pdui-proto-out.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PBDataType extends $pb.ProtobufEnum {
  static const PBDataType STRING =
      PBDataType._(0, _omitEnumNames ? '' : 'STRING');
  static const PBDataType INT = PBDataType._(1, _omitEnumNames ? '' : 'INT');
  static const PBDataType FLOAT =
      PBDataType._(2, _omitEnumNames ? '' : 'FLOAT');
  static const PBDataType BOOLEAN =
      PBDataType._(3, _omitEnumNames ? '' : 'BOOLEAN');

  static const $core.List<PBDataType> values = <PBDataType>[
    STRING,
    INT,
    FLOAT,
    BOOLEAN,
  ];

  static final $core.List<PBDataType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static PBDataType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PBDataType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
