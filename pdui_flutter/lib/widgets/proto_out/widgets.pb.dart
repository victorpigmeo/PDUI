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

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

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
  }) {
    final result = create();
    if (child != null) result.child = child;
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
}

enum PBExpression_Payload {
  scaffold,
  center,
  text,
  appBar,
  column,
  elevatedButton,
  notSet
}

/// TODO: resolver essa fita
/// maybe renomear pra PBExpression e ir tudo aqui
class PBExpression extends $pb.GeneratedMessage {
  factory PBExpression({
    $core.String? key,
    $core.String? identity,
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
    3: PBExpression_Payload.scaffold,
    4: PBExpression_Payload.center,
    5: PBExpression_Payload.text,
    6: PBExpression_Payload.appBar,
    7: PBExpression_Payload.column,
    8: PBExpression_Payload.elevatedButton,
    0: PBExpression_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PBExpression',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'PDUI'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8])
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'identity')
    ..aOM<PBScaffold>(3, _omitFieldNames ? '' : 'scaffold',
        subBuilder: PBScaffold.create)
    ..aOM<PBCenter>(4, _omitFieldNames ? '' : 'center',
        subBuilder: PBCenter.create)
    ..aOM<PBText>(5, _omitFieldNames ? '' : 'text', subBuilder: PBText.create)
    ..aOM<PBAppBar>(6, _omitFieldNames ? '' : 'appBar',
        protoName: 'appBar', subBuilder: PBAppBar.create)
    ..aOM<PBColumn>(7, _omitFieldNames ? '' : 'column',
        subBuilder: PBColumn.create)
    ..aOM<PBElevatedButton>(8, _omitFieldNames ? '' : 'elevatedButton',
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
  PBExpression_Payload whichPayload() =>
      _PBExpression_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
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
  PBScaffold get scaffold => $_getN(2);
  @$pb.TagNumber(3)
  set scaffold(PBScaffold value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasScaffold() => $_has(2);
  @$pb.TagNumber(3)
  void clearScaffold() => $_clearField(3);
  @$pb.TagNumber(3)
  PBScaffold ensureScaffold() => $_ensure(2);

  @$pb.TagNumber(4)
  PBCenter get center => $_getN(3);
  @$pb.TagNumber(4)
  set center(PBCenter value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCenter() => $_has(3);
  @$pb.TagNumber(4)
  void clearCenter() => $_clearField(4);
  @$pb.TagNumber(4)
  PBCenter ensureCenter() => $_ensure(3);

  @$pb.TagNumber(5)
  PBText get text => $_getN(4);
  @$pb.TagNumber(5)
  set text(PBText value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasText() => $_has(4);
  @$pb.TagNumber(5)
  void clearText() => $_clearField(5);
  @$pb.TagNumber(5)
  PBText ensureText() => $_ensure(4);

  @$pb.TagNumber(6)
  PBAppBar get appBar => $_getN(5);
  @$pb.TagNumber(6)
  set appBar(PBAppBar value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAppBar() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppBar() => $_clearField(6);
  @$pb.TagNumber(6)
  PBAppBar ensureAppBar() => $_ensure(5);

  @$pb.TagNumber(7)
  PBColumn get column => $_getN(6);
  @$pb.TagNumber(7)
  set column(PBColumn value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasColumn() => $_has(6);
  @$pb.TagNumber(7)
  void clearColumn() => $_clearField(7);
  @$pb.TagNumber(7)
  PBColumn ensureColumn() => $_ensure(6);

  @$pb.TagNumber(8)
  PBElevatedButton get elevatedButton => $_getN(7);
  @$pb.TagNumber(8)
  set elevatedButton(PBElevatedButton value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasElevatedButton() => $_has(7);
  @$pb.TagNumber(8)
  void clearElevatedButton() => $_clearField(8);
  @$pb.TagNumber(8)
  PBElevatedButton ensureElevatedButton() => $_ensure(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
