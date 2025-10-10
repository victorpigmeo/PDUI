// This is a generated file - do not edit.
//
// Generated from widgets.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'widgets.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'widgets.pbenum.dart';

class PBScaffold extends $pb.GeneratedMessage {
  factory PBScaffold({
    PBExpression? appBar,
    PBExpression? body,
  }) {
    final result = create();
    if (appBar != null) result.appBar = appBar;
    if (body != null) result.body = body;
    return result;
  }

  PBScaffold._();

  factory PBScaffold.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PBScaffold.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PBScaffold',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'PDUI'),
      createEmptyInstance: create)
    ..aOM<PBExpression>(1, _omitFieldNames ? '' : 'appBar',
        protoName: 'appBar', subBuilder: PBExpression.create)
    ..aOM<PBExpression>(2, _omitFieldNames ? '' : 'body',
        subBuilder: PBExpression.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBScaffold clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBScaffold copyWith(void Function(PBScaffold) updates) =>
      super.copyWith((message) => updates(message as PBScaffold)) as PBScaffold;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PBScaffold create() => PBScaffold._();
  @$core.override
  PBScaffold createEmptyInstance() => create();
  static $pb.PbList<PBScaffold> createRepeated() => $pb.PbList<PBScaffold>();
  @$core.pragma('dart2js:noInline')
  static PBScaffold getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PBScaffold>(create);
  static PBScaffold? _defaultInstance;

  @$pb.TagNumber(1)
  PBExpression get appBar => $_getN(0);
  @$pb.TagNumber(1)
  set appBar(PBExpression value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAppBar() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppBar() => $_clearField(1);
  @$pb.TagNumber(1)
  PBExpression ensureAppBar() => $_ensure(0);

  @$pb.TagNumber(2)
  PBExpression get body => $_getN(1);
  @$pb.TagNumber(2)
  set body(PBExpression value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => $_clearField(2);
  @$pb.TagNumber(2)
  PBExpression ensureBody() => $_ensure(1);
}

class PBAppBar extends $pb.GeneratedMessage {
  factory PBAppBar({
    $core.String? backgroundColor,
    $core.String? title,
  }) {
    final result = create();
    if (backgroundColor != null) result.backgroundColor = backgroundColor;
    if (title != null) result.title = title;
    return result;
  }

  PBAppBar._();

  factory PBAppBar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PBAppBar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PBAppBar',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'PDUI'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'backgroundColor',
        protoName: 'backgroundColor')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBAppBar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBAppBar copyWith(void Function(PBAppBar) updates) =>
      super.copyWith((message) => updates(message as PBAppBar)) as PBAppBar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PBAppBar create() => PBAppBar._();
  @$core.override
  PBAppBar createEmptyInstance() => create();
  static $pb.PbList<PBAppBar> createRepeated() => $pb.PbList<PBAppBar>();
  @$core.pragma('dart2js:noInline')
  static PBAppBar getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PBAppBar>(create);
  static PBAppBar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get backgroundColor => $_getSZ(0);
  @$pb.TagNumber(1)
  set backgroundColor($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBackgroundColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearBackgroundColor() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);
}

class PBCenter extends $pb.GeneratedMessage {
  factory PBCenter({
    PBExpression? child,
  }) {
    final result = create();
    if (child != null) result.child = child;
    return result;
  }

  PBCenter._();

  factory PBCenter.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PBCenter.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PBCenter',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'PDUI'),
      createEmptyInstance: create)
    ..aOM<PBExpression>(1, _omitFieldNames ? '' : 'child',
        subBuilder: PBExpression.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBCenter clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBCenter copyWith(void Function(PBCenter) updates) =>
      super.copyWith((message) => updates(message as PBCenter)) as PBCenter;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PBCenter create() => PBCenter._();
  @$core.override
  PBCenter createEmptyInstance() => create();
  static $pb.PbList<PBCenter> createRepeated() => $pb.PbList<PBCenter>();
  @$core.pragma('dart2js:noInline')
  static PBCenter getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PBCenter>(create);
  static PBCenter? _defaultInstance;

  @$pb.TagNumber(1)
  PBExpression get child => $_getN(0);
  @$pb.TagNumber(1)
  set child(PBExpression value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearChild() => $_clearField(1);
  @$pb.TagNumber(1)
  PBExpression ensureChild() => $_ensure(0);
}

class PBText extends $pb.GeneratedMessage {
  factory PBText({
    $core.String? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  PBText._();

  factory PBText.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PBText.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PBText',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'PDUI'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'data')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBText clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBText copyWith(void Function(PBText) updates) =>
      super.copyWith((message) => updates(message as PBText)) as PBText;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PBText create() => PBText._();
  @$core.override
  PBText createEmptyInstance() => create();
  static $pb.PbList<PBText> createRepeated() => $pb.PbList<PBText>();
  @$core.pragma('dart2js:noInline')
  static PBText getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PBText>(create);
  static PBText? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get data => $_getSZ(0);
  @$pb.TagNumber(1)
  set data($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
}

class PBColumn extends $pb.GeneratedMessage {
  factory PBColumn({
    $core.Iterable<PBExpression>? children,
  }) {
    final result = create();
    if (children != null) result.children.addAll(children);
    return result;
  }

  PBColumn._();

  factory PBColumn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PBColumn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PBColumn',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'PDUI'),
      createEmptyInstance: create)
    ..pPM<PBExpression>(1, _omitFieldNames ? '' : 'children',
        subBuilder: PBExpression.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBColumn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBColumn copyWith(void Function(PBColumn) updates) =>
      super.copyWith((message) => updates(message as PBColumn)) as PBColumn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PBColumn create() => PBColumn._();
  @$core.override
  PBColumn createEmptyInstance() => create();
  static $pb.PbList<PBColumn> createRepeated() => $pb.PbList<PBColumn>();
  @$core.pragma('dart2js:noInline')
  static PBColumn getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PBColumn>(create);
  static PBColumn? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PBExpression> get children => $_getList(0);
}

class PBElevatedButton extends $pb.GeneratedMessage {
  factory PBElevatedButton({
    PBExpression? child,
    PBFnExpression? onPressed,
  }) {
    final result = create();
    if (child != null) result.child = child;
    if (onPressed != null) result.onPressed = onPressed;
    return result;
  }

  PBElevatedButton._();

  factory PBElevatedButton.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PBElevatedButton.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PBElevatedButton',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'PDUI'),
      createEmptyInstance: create)
    ..aOM<PBExpression>(1, _omitFieldNames ? '' : 'child',
        subBuilder: PBExpression.create)
    ..aOM<PBFnExpression>(2, _omitFieldNames ? '' : 'onPressed',
        protoName: 'onPressed', subBuilder: PBFnExpression.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBElevatedButton clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBElevatedButton copyWith(void Function(PBElevatedButton) updates) =>
      super.copyWith((message) => updates(message as PBElevatedButton))
          as PBElevatedButton;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PBElevatedButton create() => PBElevatedButton._();
  @$core.override
  PBElevatedButton createEmptyInstance() => create();
  static $pb.PbList<PBElevatedButton> createRepeated() =>
      $pb.PbList<PBElevatedButton>();
  @$core.pragma('dart2js:noInline')
  static PBElevatedButton getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PBElevatedButton>(create);
  static PBElevatedButton? _defaultInstance;

  @$pb.TagNumber(1)
  PBExpression get child => $_getN(0);
  @$pb.TagNumber(1)
  set child(PBExpression value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearChild() => $_clearField(1);
  @$pb.TagNumber(1)
  PBExpression ensureChild() => $_ensure(0);

  @$pb.TagNumber(2)
  PBFnExpression get onPressed => $_getN(1);
  @$pb.TagNumber(2)
  set onPressed(PBFnExpression value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOnPressed() => $_has(1);
  @$pb.TagNumber(2)
  void clearOnPressed() => $_clearField(2);
  @$pb.TagNumber(2)
  PBFnExpression ensureOnPressed() => $_ensure(1);
}

enum PBFnParameter_Value {
  stringValue,
  intValue,
  floatValue,
  booleanValue,
  notSet
}

class PBFnParameter extends $pb.GeneratedMessage {
  factory PBFnParameter({
    $core.String? name,
    PBDataType? type,
    $core.String? stringValue,
    $core.int? intValue,
    $core.double? floatValue,
    $core.bool? booleanValue,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    if (stringValue != null) result.stringValue = stringValue;
    if (intValue != null) result.intValue = intValue;
    if (floatValue != null) result.floatValue = floatValue;
    if (booleanValue != null) result.booleanValue = booleanValue;
    return result;
  }

  PBFnParameter._();

  factory PBFnParameter.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PBFnParameter.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, PBFnParameter_Value>
      _PBFnParameter_ValueByTag = {
    3: PBFnParameter_Value.stringValue,
    4: PBFnParameter_Value.intValue,
    5: PBFnParameter_Value.floatValue,
    6: PBFnParameter_Value.booleanValue,
    0: PBFnParameter_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PBFnParameter',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'PDUI'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aE<PBDataType>(2, _omitFieldNames ? '' : 'type',
        enumValues: PBDataType.values)
    ..aOS(3, _omitFieldNames ? '' : 'stringValue', protoName: 'stringValue')
    ..aI(4, _omitFieldNames ? '' : 'intValue', protoName: 'intValue')
    ..aD(5, _omitFieldNames ? '' : 'floatValue',
        protoName: 'floatValue', fieldType: $pb.PbFieldType.OF)
    ..aOB(6, _omitFieldNames ? '' : 'booleanValue', protoName: 'booleanValue')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBFnParameter clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBFnParameter copyWith(void Function(PBFnParameter) updates) =>
      super.copyWith((message) => updates(message as PBFnParameter))
          as PBFnParameter;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PBFnParameter create() => PBFnParameter._();
  @$core.override
  PBFnParameter createEmptyInstance() => create();
  static $pb.PbList<PBFnParameter> createRepeated() =>
      $pb.PbList<PBFnParameter>();
  @$core.pragma('dart2js:noInline')
  static PBFnParameter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PBFnParameter>(create);
  static PBFnParameter? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  PBFnParameter_Value whichValue() =>
      _PBFnParameter_ValueByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearValue() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  PBDataType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(PBDataType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get stringValue => $_getSZ(2);
  @$pb.TagNumber(3)
  set stringValue($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStringValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearStringValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get intValue => $_getIZ(3);
  @$pb.TagNumber(4)
  set intValue($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIntValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearIntValue() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get floatValue => $_getN(4);
  @$pb.TagNumber(5)
  set floatValue($core.double value) => $_setFloat(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFloatValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearFloatValue() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get booleanValue => $_getBF(5);
  @$pb.TagNumber(6)
  set booleanValue($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBooleanValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearBooleanValue() => $_clearField(6);
}

class PBFn extends $pb.GeneratedMessage {
  factory PBFn({
    $core.String? name,
    $core.Iterable<$core.MapEntry<$core.String, PBFnParameter>>? params,
    $core.Iterable<$core.MapEntry<$core.String, PBFnExpression>>? body,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (params != null) result.params.addEntries(params);
    if (body != null) result.body.addEntries(body);
    return result;
  }

  PBFn._();

  factory PBFn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PBFn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PBFn',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'PDUI'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..m<$core.String, PBFnParameter>(2, _omitFieldNames ? '' : 'params',
        entryClassName: 'PBFn.ParamsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: PBFnParameter.create,
        valueDefaultOrMaker: PBFnParameter.getDefault,
        packageName: const $pb.PackageName('PDUI'))
    ..m<$core.String, PBFnExpression>(3, _omitFieldNames ? '' : 'body',
        entryClassName: 'PBFn.BodyEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: PBFnExpression.create,
        valueDefaultOrMaker: PBFnExpression.getDefault,
        packageName: const $pb.PackageName('PDUI'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBFn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBFn copyWith(void Function(PBFn) updates) =>
      super.copyWith((message) => updates(message as PBFn)) as PBFn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PBFn create() => PBFn._();
  @$core.override
  PBFn createEmptyInstance() => create();
  static $pb.PbList<PBFn> createRepeated() => $pb.PbList<PBFn>();
  @$core.pragma('dart2js:noInline')
  static PBFn getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PBFn>(create);
  static PBFn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, PBFnParameter> get params => $_getMap(1);

  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, PBFnExpression> get body => $_getMap(2);
}

class PBDebugPrint extends $pb.GeneratedMessage {
  factory PBDebugPrint({
    PBExpression? expression,
  }) {
    final result = create();
    if (expression != null) result.expression = expression;
    return result;
  }

  PBDebugPrint._();

  factory PBDebugPrint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PBDebugPrint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PBDebugPrint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'PDUI'),
      createEmptyInstance: create)
    ..aOM<PBExpression>(1, _omitFieldNames ? '' : 'expression',
        subBuilder: PBExpression.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBDebugPrint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBDebugPrint copyWith(void Function(PBDebugPrint) updates) =>
      super.copyWith((message) => updates(message as PBDebugPrint))
          as PBDebugPrint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PBDebugPrint create() => PBDebugPrint._();
  @$core.override
  PBDebugPrint createEmptyInstance() => create();
  static $pb.PbList<PBDebugPrint> createRepeated() =>
      $pb.PbList<PBDebugPrint>();
  @$core.pragma('dart2js:noInline')
  static PBDebugPrint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PBDebugPrint>(create);
  static PBDebugPrint? _defaultInstance;

  @$pb.TagNumber(1)
  PBExpression get expression => $_getN(0);
  @$pb.TagNumber(1)
  set expression(PBExpression value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasExpression() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpression() => $_clearField(1);
  @$pb.TagNumber(1)
  PBExpression ensureExpression() => $_ensure(0);
}

enum PBFnExpression_Payload { generic, debugPrint, notSet }

class PBFnExpression extends $pb.GeneratedMessage {
  factory PBFnExpression({
    $core.String? identity,
    PBFn? generic,
    PBDebugPrint? debugPrint,
  }) {
    final result = create();
    if (identity != null) result.identity = identity;
    if (generic != null) result.generic = generic;
    if (debugPrint != null) result.debugPrint = debugPrint;
    return result;
  }

  PBFnExpression._();

  factory PBFnExpression.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PBFnExpression.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, PBFnExpression_Payload>
      _PBFnExpression_PayloadByTag = {
    2: PBFnExpression_Payload.generic,
    3: PBFnExpression_Payload.debugPrint,
    0: PBFnExpression_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PBFnExpression',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'PDUI'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'identity')
    ..aOM<PBFn>(2, _omitFieldNames ? '' : 'generic', subBuilder: PBFn.create)
    ..aOM<PBDebugPrint>(3, _omitFieldNames ? '' : 'debugPrint',
        protoName: 'debugPrint', subBuilder: PBDebugPrint.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBFnExpression clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBFnExpression copyWith(void Function(PBFnExpression) updates) =>
      super.copyWith((message) => updates(message as PBFnExpression))
          as PBFnExpression;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PBFnExpression create() => PBFnExpression._();
  @$core.override
  PBFnExpression createEmptyInstance() => create();
  static $pb.PbList<PBFnExpression> createRepeated() =>
      $pb.PbList<PBFnExpression>();
  @$core.pragma('dart2js:noInline')
  static PBFnExpression getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PBFnExpression>(create);
  static PBFnExpression? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  PBFnExpression_Payload whichPayload() =>
      _PBFnExpression_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get identity => $_getSZ(0);
  @$pb.TagNumber(1)
  set identity($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentity() => $_clearField(1);

  @$pb.TagNumber(2)
  PBFn get generic => $_getN(1);
  @$pb.TagNumber(2)
  set generic(PBFn value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGeneric() => $_has(1);
  @$pb.TagNumber(2)
  void clearGeneric() => $_clearField(2);
  @$pb.TagNumber(2)
  PBFn ensureGeneric() => $_ensure(1);

  @$pb.TagNumber(3)
  PBDebugPrint get debugPrint => $_getN(2);
  @$pb.TagNumber(3)
  set debugPrint(PBDebugPrint value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDebugPrint() => $_has(2);
  @$pb.TagNumber(3)
  void clearDebugPrint() => $_clearField(3);
  @$pb.TagNumber(3)
  PBDebugPrint ensureDebugPrint() => $_ensure(2);
}

enum PBExpression_Payload {
  rawString,
  scaffold,
  center,
  text,
  appBar,
  column,
  elevatedButton,
  notSet
}

class PBExpression extends $pb.GeneratedMessage {
  factory PBExpression({
    $core.String? key,
    $core.String? identity,
    $core.String? rawString,
    PBScaffold? scaffold,
    PBCenter? center,
    PBText? text,
    PBAppBar? appBar,
    PBColumn? column,
    PBElevatedButton? elevatedButton,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (identity != null) result.identity = identity;
    if (rawString != null) result.rawString = rawString;
    if (scaffold != null) result.scaffold = scaffold;
    if (center != null) result.center = center;
    if (text != null) result.text = text;
    if (appBar != null) result.appBar = appBar;
    if (column != null) result.column = column;
    if (elevatedButton != null) result.elevatedButton = elevatedButton;
    return result;
  }

  PBExpression._();

  factory PBExpression.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PBExpression.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, PBExpression_Payload>
      _PBExpression_PayloadByTag = {
    3: PBExpression_Payload.rawString,
    4: PBExpression_Payload.scaffold,
    5: PBExpression_Payload.center,
    6: PBExpression_Payload.text,
    7: PBExpression_Payload.appBar,
    8: PBExpression_Payload.column,
    9: PBExpression_Payload.elevatedButton,
    0: PBExpression_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PBExpression',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'PDUI'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8, 9])
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'identity')
    ..aOS(3, _omitFieldNames ? '' : 'rawString', protoName: 'rawString')
    ..aOM<PBScaffold>(4, _omitFieldNames ? '' : 'scaffold',
        subBuilder: PBScaffold.create)
    ..aOM<PBCenter>(5, _omitFieldNames ? '' : 'center',
        subBuilder: PBCenter.create)
    ..aOM<PBText>(6, _omitFieldNames ? '' : 'text', subBuilder: PBText.create)
    ..aOM<PBAppBar>(7, _omitFieldNames ? '' : 'appBar',
        protoName: 'appBar', subBuilder: PBAppBar.create)
    ..aOM<PBColumn>(8, _omitFieldNames ? '' : 'column',
        subBuilder: PBColumn.create)
    ..aOM<PBElevatedButton>(9, _omitFieldNames ? '' : 'elevatedButton',
        protoName: 'elevatedButton', subBuilder: PBElevatedButton.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBExpression clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PBExpression copyWith(void Function(PBExpression) updates) =>
      super.copyWith((message) => updates(message as PBExpression))
          as PBExpression;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PBExpression create() => PBExpression._();
  @$core.override
  PBExpression createEmptyInstance() => create();
  static $pb.PbList<PBExpression> createRepeated() =>
      $pb.PbList<PBExpression>();
  @$core.pragma('dart2js:noInline')
  static PBExpression getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PBExpression>(create);
  static PBExpression? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  PBExpression_Payload whichPayload() =>
      _PBExpression_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get identity => $_getSZ(1);
  @$pb.TagNumber(2)
  set identity($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIdentity() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdentity() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get rawString => $_getSZ(2);
  @$pb.TagNumber(3)
  set rawString($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRawString() => $_has(2);
  @$pb.TagNumber(3)
  void clearRawString() => $_clearField(3);

  @$pb.TagNumber(4)
  PBScaffold get scaffold => $_getN(3);
  @$pb.TagNumber(4)
  set scaffold(PBScaffold value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasScaffold() => $_has(3);
  @$pb.TagNumber(4)
  void clearScaffold() => $_clearField(4);
  @$pb.TagNumber(4)
  PBScaffold ensureScaffold() => $_ensure(3);

  @$pb.TagNumber(5)
  PBCenter get center => $_getN(4);
  @$pb.TagNumber(5)
  set center(PBCenter value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCenter() => $_has(4);
  @$pb.TagNumber(5)
  void clearCenter() => $_clearField(5);
  @$pb.TagNumber(5)
  PBCenter ensureCenter() => $_ensure(4);

  @$pb.TagNumber(6)
  PBText get text => $_getN(5);
  @$pb.TagNumber(6)
  set text(PBText value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasText() => $_has(5);
  @$pb.TagNumber(6)
  void clearText() => $_clearField(6);
  @$pb.TagNumber(6)
  PBText ensureText() => $_ensure(5);

  @$pb.TagNumber(7)
  PBAppBar get appBar => $_getN(6);
  @$pb.TagNumber(7)
  set appBar(PBAppBar value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAppBar() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppBar() => $_clearField(7);
  @$pb.TagNumber(7)
  PBAppBar ensureAppBar() => $_ensure(6);

  @$pb.TagNumber(8)
  PBColumn get column => $_getN(7);
  @$pb.TagNumber(8)
  set column(PBColumn value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasColumn() => $_has(7);
  @$pb.TagNumber(8)
  void clearColumn() => $_clearField(8);
  @$pb.TagNumber(8)
  PBColumn ensureColumn() => $_ensure(7);

  @$pb.TagNumber(9)
  PBElevatedButton get elevatedButton => $_getN(8);
  @$pb.TagNumber(9)
  set elevatedButton(PBElevatedButton value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasElevatedButton() => $_has(8);
  @$pb.TagNumber(9)
  void clearElevatedButton() => $_clearField(9);
  @$pb.TagNumber(9)
  PBElevatedButton ensureElevatedButton() => $_ensure(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
