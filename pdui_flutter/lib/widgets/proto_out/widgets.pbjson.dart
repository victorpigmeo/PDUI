// This is a generated file - do not edit.
//
// Generated from widgets.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

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
  ],
};

/// Descriptor for `PBElevatedButton`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBElevatedButtonDescriptor = $convert.base64Decode(
    'ChBQQkVsZXZhdGVkQnV0dG9uEigKBWNoaWxkGAEgASgLMhIuUERVSS5QQkV4cHJlc3Npb25SBW'
    'NoaWxk');

@$core.Deprecated('Use pBExpressionDescriptor instead')
const PBExpression$json = {
  '1': 'PBExpression',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '9': 1, '10': 'key', '17': true},
    {'1': 'identity', '3': 2, '4': 1, '5': 9, '10': 'identity'},
    {
      '1': 'scaffold',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBScaffold',
      '9': 0,
      '10': 'scaffold'
    },
    {
      '1': 'center',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBCenter',
      '9': 0,
      '10': 'center'
    },
    {
      '1': 'text',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBText',
      '9': 0,
      '10': 'text'
    },
    {
      '1': 'appBar',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBAppBar',
      '9': 0,
      '10': 'appBar'
    },
    {
      '1': 'column',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBColumn',
      '9': 0,
      '10': 'column'
    },
    {
      '1': 'elevatedButton',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.PDUI.PBElevatedButton',
      '9': 0,
      '10': 'elevatedButton'
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
    'IIaWRlbnRpdHkSLgoIc2NhZmZvbGQYAyABKAsyEC5QRFVJLlBCU2NhZmZvbGRIAFIIc2NhZmZv'
    'bGQSKAoGY2VudGVyGAQgASgLMg4uUERVSS5QQkNlbnRlckgAUgZjZW50ZXISIgoEdGV4dBgFIA'
    'EoCzIMLlBEVUkuUEJUZXh0SABSBHRleHQSKAoGYXBwQmFyGAYgASgLMg4uUERVSS5QQkFwcEJh'
    'ckgAUgZhcHBCYXISKAoGY29sdW1uGAcgASgLMg4uUERVSS5QQkNvbHVtbkgAUgZjb2x1bW4SQA'
    'oOZWxldmF0ZWRCdXR0b24YCCABKAsyFi5QRFVJLlBCRWxldmF0ZWRCdXR0b25IAFIOZWxldmF0'
    'ZWRCdXR0b25CCQoHcGF5bG9hZEIGCgRfa2V5');
