// This is a generated file - do not edit.
//
// Generated from pdui-proto-out.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pBKeyboardTypeDescriptor instead')
const PBKeyboardType$json = {
  '1': 'PBKeyboardType',
  '2': [
    {'1': 'TEXT', '2': 0},
    {'1': 'EMAIL_ADDRESS', '2': 1},
    {'1': 'NUMBER', '2': 2},
    {'1': 'MULTILINE', '2': 3},
    {'1': 'DATE_TIME', '2': 4},
  ],
};

/// Descriptor for `PBKeyboardType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pBKeyboardTypeDescriptor = $convert.base64Decode(
    'Cg5QQktleWJvYXJkVHlwZRIICgRURVhUEAASEQoNRU1BSUxfQUREUkVTUxABEgoKBk5VTUJFUh'
    'ACEg0KCU1VTFRJTElORRADEg0KCURBVEVfVElNRRAE');

@$core.Deprecated('Use pBDataTypeDescriptor instead')
const PBDataType$json = {
  '1': 'PBDataType',
  '2': [
    {'1': 'STRING', '2': 0},
    {'1': 'INT', '2': 1},
    {'1': 'FLOAT', '2': 2},
    {'1': 'BOOLEAN', '2': 3},
  ],
};

/// Descriptor for `PBDataType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pBDataTypeDescriptor = $convert.base64Decode(
    'CgpQQkRhdGFUeXBlEgoKBlNUUklORxAAEgcKA0lOVBABEgkKBUZMT0FUEAISCwoHQk9PTEVBTh'
    'AD');

@$core.Deprecated('Use pBScaffoldDescriptor instead')
const PBScaffold$json = {
  '1': 'PBScaffold',
  '2': [
    {
      '1': 'appBar',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBExpression',
      '10': 'appBar'
    },
    {
      '1': 'body',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBExpression',
      '10': 'body'
    },
  ],
};

/// Descriptor for `PBScaffold`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBScaffoldDescriptor = $convert.base64Decode(
    'CgpQQlNjYWZmb2xkEioKBmFwcEJhchgBIAEoCzISLlBEVUkuUEJFeHByZXNzaW9uUgZhcHBCYX'
    'ISJgoEYm9keRgCIAEoCzISLlBEVUkuUEJFeHByZXNzaW9uUgRib2R5');

@$core.Deprecated('Use pBAppBarDescriptor instead')
const PBAppBar$json = {
  '1': 'PBAppBar',
  '2': [
    {'1': 'backgroundColor', '3': 1, '4': 1, '5': 9, '10': 'backgroundColor'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `PBAppBar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBAppBarDescriptor = $convert.base64Decode(
    'CghQQkFwcEJhchIoCg9iYWNrZ3JvdW5kQ29sb3IYASABKAlSD2JhY2tncm91bmRDb2xvchIUCg'
    'V0aXRsZRgCIAEoCVIFdGl0bGU=');

@$core.Deprecated('Use pBCenterDescriptor instead')
const PBCenter$json = {
  '1': 'PBCenter',
  '2': [
    {
      '1': 'child',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBExpression',
      '10': 'child'
    },
  ],
};

/// Descriptor for `PBCenter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBCenterDescriptor = $convert.base64Decode(
    'CghQQkNlbnRlchIoCgVjaGlsZBgBIAEoCzISLlBEVUkuUEJFeHByZXNzaW9uUgVjaGlsZA==');

@$core.Deprecated('Use pBTextDescriptor instead')
const PBText$json = {
  '1': 'PBText',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `PBText`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBTextDescriptor =
    $convert.base64Decode('CgZQQlRleHQSEgoEZGF0YRgBIAEoCVIEZGF0YQ==');

@$core.Deprecated('Use pBColumnDescriptor instead')
const PBColumn$json = {
  '1': 'PBColumn',
  '2': [
    {
      '1': 'children',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.PDUI.PBExpression',
      '10': 'children'
    },
  ],
};

/// Descriptor for `PBColumn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBColumnDescriptor = $convert.base64Decode(
    'CghQQkNvbHVtbhIuCghjaGlsZHJlbhgBIAMoCzISLlBEVUkuUEJFeHByZXNzaW9uUghjaGlsZH'
    'Jlbg==');

@$core.Deprecated('Use pBElevatedButtonDescriptor instead')
const PBElevatedButton$json = {
  '1': 'PBElevatedButton',
  '2': [
    {
      '1': 'child',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBExpression',
      '10': 'child'
    },
    {
      '1': 'onPressed',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBFnExpression',
      '10': 'onPressed'
    },
  ],
};

/// Descriptor for `PBElevatedButton`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBElevatedButtonDescriptor = $convert.base64Decode(
    'ChBQQkVsZXZhdGVkQnV0dG9uEigKBWNoaWxkGAEgASgLMhIuUERVSS5QQkV4cHJlc3Npb25SBW'
    'NoaWxkEjIKCW9uUHJlc3NlZBgCIAEoCzIULlBEVUkuUEJGbkV4cHJlc3Npb25SCW9uUHJlc3Nl'
    'ZA==');

@$core.Deprecated('Use pBFormDescriptor instead')
const PBForm$json = {
  '1': 'PBForm',
  '2': [
    {
      '1': 'child',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBExpression',
      '10': 'child'
    },
  ],
};

/// Descriptor for `PBForm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBFormDescriptor = $convert.base64Decode(
    'CgZQQkZvcm0SKAoFY2hpbGQYASABKAsyEi5QRFVJLlBCRXhwcmVzc2lvblIFY2hpbGQ=');

@$core.Deprecated('Use pBTextFormFieldDecorationDescriptor instead')
const PBTextFormFieldDecoration$json = {
  '1': 'PBTextFormFieldDecoration',
  '2': [
    {
      '1': 'labelText',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'labelText',
      '17': true
    },
  ],
  '8': [
    {'1': '_labelText'},
  ],
};

/// Descriptor for `PBTextFormFieldDecoration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBTextFormFieldDecorationDescriptor =
    $convert.base64Decode(
        'ChlQQlRleHRGb3JtRmllbGREZWNvcmF0aW9uEiEKCWxhYmVsVGV4dBgBIAEoCUgAUglsYWJlbF'
        'RleHSIAQFCDAoKX2xhYmVsVGV4dA==');

@$core.Deprecated('Use pBTextFormFieldDescriptor instead')
const PBTextFormField$json = {
  '1': 'PBTextFormField',
  '2': [
    {'1': 'formKey', '3': 1, '4': 1, '5': 9, '10': 'formKey'},
    {
      '1': 'keyboardType',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.PDUI.PBKeyboardType',
      '9': 0,
      '10': 'keyboardType',
      '17': true
    },
    {
      '1': 'decoration',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBTextFormFieldDecoration',
      '9': 1,
      '10': 'decoration',
      '17': true
    },
    {
      '1': 'obscureText',
      '3': 4,
      '4': 1,
      '5': 8,
      '9': 2,
      '10': 'obscureText',
      '17': true
    },
    {
      '1': 'notEmpty',
      '3': 5,
      '4': 1,
      '5': 8,
      '9': 3,
      '10': 'notEmpty',
      '17': true
    },
    {
      '1': 'minLength',
      '3': 6,
      '4': 1,
      '5': 5,
      '9': 4,
      '10': 'minLength',
      '17': true
    },
    {
      '1': 'maxLength',
      '3': 7,
      '4': 1,
      '5': 5,
      '9': 5,
      '10': 'maxLength',
      '17': true
    },
    {
      '1': 'maxLines',
      '3': 8,
      '4': 1,
      '5': 5,
      '9': 6,
      '10': 'maxLines',
      '17': true
    },
  ],
  '8': [
    {'1': '_keyboardType'},
    {'1': '_decoration'},
    {'1': '_obscureText'},
    {'1': '_notEmpty'},
    {'1': '_minLength'},
    {'1': '_maxLength'},
    {'1': '_maxLines'},
  ],
};

/// Descriptor for `PBTextFormField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBTextFormFieldDescriptor = $convert.base64Decode(
    'Cg9QQlRleHRGb3JtRmllbGQSGAoHZm9ybUtleRgBIAEoCVIHZm9ybUtleRI9CgxrZXlib2FyZF'
    'R5cGUYAiABKA4yFC5QRFVJLlBCS2V5Ym9hcmRUeXBlSABSDGtleWJvYXJkVHlwZYgBARJECgpk'
    'ZWNvcmF0aW9uGAMgASgLMh8uUERVSS5QQlRleHRGb3JtRmllbGREZWNvcmF0aW9uSAFSCmRlY2'
    '9yYXRpb26IAQESJQoLb2JzY3VyZVRleHQYBCABKAhIAlILb2JzY3VyZVRleHSIAQESHwoIbm90'
    'RW1wdHkYBSABKAhIA1IIbm90RW1wdHmIAQESIQoJbWluTGVuZ3RoGAYgASgFSARSCW1pbkxlbm'
    'd0aIgBARIhCgltYXhMZW5ndGgYByABKAVIBVIJbWF4TGVuZ3RoiAEBEh8KCG1heExpbmVzGAgg'
    'ASgFSAZSCG1heExpbmVziAEBQg8KDV9rZXlib2FyZFR5cGVCDQoLX2RlY29yYXRpb25CDgoMX2'
    '9ic2N1cmVUZXh0QgsKCV9ub3RFbXB0eUIMCgpfbWluTGVuZ3RoQgwKCl9tYXhMZW5ndGhCCwoJ'
    'X21heExpbmVz');

@$core.Deprecated('Use pBFnParameterDescriptor instead')
const PBFnParameter$json = {
  '1': 'PBFnParameter',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.PDUI.PBDataType',
      '10': 'type'
    },
    {'1': 'stringValue', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    {'1': 'intValue', '3': 4, '4': 1, '5': 5, '9': 0, '10': 'intValue'},
    {'1': 'floatValue', '3': 5, '4': 1, '5': 2, '9': 0, '10': 'floatValue'},
    {'1': 'booleanValue', '3': 6, '4': 1, '5': 8, '9': 0, '10': 'booleanValue'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `PBFnParameter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBFnParameterDescriptor = $convert.base64Decode(
    'Cg1QQkZuUGFyYW1ldGVyEhIKBG5hbWUYASABKAlSBG5hbWUSJAoEdHlwZRgCIAEoDjIQLlBEVU'
    'kuUEJEYXRhVHlwZVIEdHlwZRIiCgtzdHJpbmdWYWx1ZRgDIAEoCUgAUgtzdHJpbmdWYWx1ZRIc'
    'CghpbnRWYWx1ZRgEIAEoBUgAUghpbnRWYWx1ZRIgCgpmbG9hdFZhbHVlGAUgASgCSABSCmZsb2'
    'F0VmFsdWUSJAoMYm9vbGVhblZhbHVlGAYgASgISABSDGJvb2xlYW5WYWx1ZUIHCgV2YWx1ZQ==');

@$core.Deprecated('Use pBFnDescriptor instead')
const PBFn$json = {
  '1': 'PBFn',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {
      '1': 'params',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.PDUI.PBFn.ParamsEntry',
      '10': 'params'
    },
    {
      '1': 'body',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.PDUI.PBFn.BodyEntry',
      '10': 'body'
    },
  ],
  '3': [PBFn_ParamsEntry$json, PBFn_BodyEntry$json],
  '8': [
    {'1': '_name'},
  ],
};

@$core.Deprecated('Use pBFnDescriptor instead')
const PBFn_ParamsEntry$json = {
  '1': 'ParamsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBFnParameter',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use pBFnDescriptor instead')
const PBFn_BodyEntry$json = {
  '1': 'BodyEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBFnExpression',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `PBFn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBFnDescriptor = $convert.base64Decode(
    'CgRQQkZuEhcKBG5hbWUYASABKAlIAFIEbmFtZYgBARIuCgZwYXJhbXMYAiADKAsyFi5QRFVJLl'
    'BCRm4uUGFyYW1zRW50cnlSBnBhcmFtcxIoCgRib2R5GAMgAygLMhQuUERVSS5QQkZuLkJvZHlF'
    'bnRyeVIEYm9keRpOCgtQYXJhbXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIpCgV2YWx1ZRgCIA'
    'EoCzITLlBEVUkuUEJGblBhcmFtZXRlclIFdmFsdWU6AjgBGk0KCUJvZHlFbnRyeRIQCgNrZXkY'
    'ASABKAlSA2tleRIqCgV2YWx1ZRgCIAEoCzIULlBEVUkuUEJGbkV4cHJlc3Npb25SBXZhbHVlOg'
    'I4AUIHCgVfbmFtZQ==');

@$core.Deprecated('Use pBDebugPrintDescriptor instead')
const PBDebugPrint$json = {
  '1': 'PBDebugPrint',
  '2': [
    {
      '1': 'expression',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBExpression',
      '9': 0,
      '10': 'expression',
      '17': true
    },
    {
      '1': 'fnExpression',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBFnExpression',
      '9': 1,
      '10': 'fnExpression',
      '17': true
    },
  ],
  '8': [
    {'1': '_expression'},
    {'1': '_fnExpression'},
  ],
};

/// Descriptor for `PBDebugPrint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBDebugPrintDescriptor = $convert.base64Decode(
    'CgxQQkRlYnVnUHJpbnQSNwoKZXhwcmVzc2lvbhgBIAEoCzISLlBEVUkuUEJFeHByZXNzaW9uSA'
    'BSCmV4cHJlc3Npb26IAQESPQoMZm5FeHByZXNzaW9uGAIgASgLMhQuUERVSS5QQkZuRXhwcmVz'
    'c2lvbkgBUgxmbkV4cHJlc3Npb26IAQFCDQoLX2V4cHJlc3Npb25CDwoNX2ZuRXhwcmVzc2lvbg'
    '==');

@$core.Deprecated('Use pBNavigationDescriptor instead')
const PBNavigation$json = {
  '1': 'PBNavigation',
  '2': [
    {'1': 'expressionId', '3': 1, '4': 1, '5': 9, '10': 'expressionId'},
  ],
};

/// Descriptor for `PBNavigation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBNavigationDescriptor = $convert.base64Decode(
    'CgxQQk5hdmlnYXRpb24SIgoMZXhwcmVzc2lvbklkGAEgASgJUgxleHByZXNzaW9uSWQ=');

@$core.Deprecated('Use pBPopNavigationDescriptor instead')
const PBPopNavigation$json = {
  '1': 'PBPopNavigation',
};

/// Descriptor for `PBPopNavigation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBPopNavigationDescriptor =
    $convert.base64Decode('Cg9QQlBvcE5hdmlnYXRpb24=');

@$core.Deprecated('Use pBGetFormDataDescriptor instead')
const PBGetFormData$json = {
  '1': 'PBGetFormData',
  '2': [
    {'1': 'formKey', '3': 1, '4': 1, '5': 9, '10': 'formKey'},
  ],
};

/// Descriptor for `PBGetFormData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBGetFormDataDescriptor = $convert
    .base64Decode('Cg1QQkdldEZvcm1EYXRhEhgKB2Zvcm1LZXkYASABKAlSB2Zvcm1LZXk=');

@$core.Deprecated('Use pBValidateFormDescriptor instead')
const PBValidateForm$json = {
  '1': 'PBValidateForm',
  '2': [
    {'1': 'formKey', '3': 1, '4': 1, '5': 9, '10': 'formKey'},
  ],
};

/// Descriptor for `PBValidateForm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBValidateFormDescriptor = $convert
    .base64Decode('Cg5QQlZhbGlkYXRlRm9ybRIYCgdmb3JtS2V5GAEgASgJUgdmb3JtS2V5');

@$core.Deprecated('Use pBFnExpressionDescriptor instead')
const PBFnExpression$json = {
  '1': 'PBFnExpression',
  '2': [
    {'1': 'identity', '3': 1, '4': 1, '5': 9, '10': 'identity'},
    {
      '1': 'genericFn',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBFn',
      '9': 0,
      '10': 'genericFn'
    },
    {
      '1': 'debugPrint',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBDebugPrint',
      '9': 0,
      '10': 'debugPrint'
    },
    {
      '1': 'navigation',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBNavigation',
      '9': 0,
      '10': 'navigation'
    },
    {
      '1': 'popNavigation',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBPopNavigation',
      '9': 0,
      '10': 'popNavigation'
    },
    {
      '1': 'getFormData',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBGetFormData',
      '9': 0,
      '10': 'getFormData'
    },
    {
      '1': 'validateForm',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBValidateForm',
      '9': 0,
      '10': 'validateForm'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `PBFnExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBFnExpressionDescriptor = $convert.base64Decode(
    'Cg5QQkZuRXhwcmVzc2lvbhIaCghpZGVudGl0eRgBIAEoCVIIaWRlbnRpdHkSKgoJZ2VuZXJpY0'
    'ZuGAIgASgLMgouUERVSS5QQkZuSABSCWdlbmVyaWNGbhI0CgpkZWJ1Z1ByaW50GAMgASgLMhIu'
    'UERVSS5QQkRlYnVnUHJpbnRIAFIKZGVidWdQcmludBI0CgpuYXZpZ2F0aW9uGAQgASgLMhIuUE'
    'RVSS5QQk5hdmlnYXRpb25IAFIKbmF2aWdhdGlvbhI9Cg1wb3BOYXZpZ2F0aW9uGAUgASgLMhUu'
    'UERVSS5QQlBvcE5hdmlnYXRpb25IAFINcG9wTmF2aWdhdGlvbhI3CgtnZXRGb3JtRGF0YRgGIA'
    'EoCzITLlBEVUkuUEJHZXRGb3JtRGF0YUgAUgtnZXRGb3JtRGF0YRI6Cgx2YWxpZGF0ZUZvcm0Y'
    'ByABKAsyFC5QRFVJLlBCVmFsaWRhdGVGb3JtSABSDHZhbGlkYXRlRm9ybUIJCgdwYXlsb2Fk');

@$core.Deprecated('Use pBExpressionDescriptor instead')
const PBExpression$json = {
  '1': 'PBExpression',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '9': 1, '10': 'key', '17': true},
    {'1': 'identity', '3': 2, '4': 1, '5': 9, '10': 'identity'},
    {'1': 'rawString', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'rawString'},
    {
      '1': 'scaffold',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBScaffold',
      '9': 0,
      '10': 'scaffold'
    },
    {
      '1': 'center',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBCenter',
      '9': 0,
      '10': 'center'
    },
    {
      '1': 'text',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBText',
      '9': 0,
      '10': 'text'
    },
    {
      '1': 'appBar',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBAppBar',
      '9': 0,
      '10': 'appBar'
    },
    {
      '1': 'column',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBColumn',
      '9': 0,
      '10': 'column'
    },
    {
      '1': 'elevatedButton',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBElevatedButton',
      '9': 0,
      '10': 'elevatedButton'
    },
    {
      '1': 'form',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBForm',
      '9': 0,
      '10': 'form'
    },
    {
      '1': 'textFormField',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBTextFormField',
      '9': 0,
      '10': 'textFormField'
    },
  ],
  '8': [
    {'1': 'payload'},
    {'1': '_key'},
  ],
};

/// Descriptor for `PBExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBExpressionDescriptor = $convert.base64Decode(
    'CgxQQkV4cHJlc3Npb24SFQoDa2V5GAEgASgJSAFSA2tleYgBARIaCghpZGVudGl0eRgCIAEoCV'
    'IIaWRlbnRpdHkSHgoJcmF3U3RyaW5nGAMgASgJSABSCXJhd1N0cmluZxIuCghzY2FmZm9sZBgE'
    'IAEoCzIQLlBEVUkuUEJTY2FmZm9sZEgAUghzY2FmZm9sZBIoCgZjZW50ZXIYBSABKAsyDi5QRF'
    'VJLlBCQ2VudGVySABSBmNlbnRlchIiCgR0ZXh0GAYgASgLMgwuUERVSS5QQlRleHRIAFIEdGV4'
    'dBIoCgZhcHBCYXIYByABKAsyDi5QRFVJLlBCQXBwQmFySABSBmFwcEJhchIoCgZjb2x1bW4YCC'
    'ABKAsyDi5QRFVJLlBCQ29sdW1uSABSBmNvbHVtbhJACg5lbGV2YXRlZEJ1dHRvbhgJIAEoCzIW'
    'LlBEVUkuUEJFbGV2YXRlZEJ1dHRvbkgAUg5lbGV2YXRlZEJ1dHRvbhIiCgRmb3JtGAogASgLMg'
    'wuUERVSS5QQkZvcm1IAFIEZm9ybRI9Cg10ZXh0Rm9ybUZpZWxkGAsgASgLMhUuUERVSS5QQlRl'
    'eHRGb3JtRmllbGRIAFINdGV4dEZvcm1GaWVsZEIJCgdwYXlsb2FkQgYKBF9rZXk=');
