import 'package:json_annotation/json_annotation.dart';
import 'package:parabeac_core/input/figma/entities/abstract_figma_node_factory.dart';
import 'package:parabeac_core/input/figma/entities/layers/figma_node.dart';
import 'package:parabeac_core/input/figma/entities/layers/frame.dart';
import 'package:parabeac_core/input/sketch/entities/layers/flow.dart';
import 'package:parabeac_core/input/sketch/entities/objects/frame.dart';
import 'package:parabeac_core/interpret_and_optimize/entities/subclasses/pb_intermediate_node.dart';
import 'package:parabeac_core/interpret_and_optimize/helpers/pb_context.dart';

part 'instance.g.dart';

@JsonSerializable(nullable: true)
class Instance extends FigmaFrame implements AbstractFigmaNodeFactory {
  Instance({
    id,
    name,
    visible,
    type,
    pluginData,
    sharedPluginData,
    Frame boundaryRectangle,
    style,
    fills,
    strokes,
    strokeWeight,
    strokeAlign,
    cornerRadius,
    constraints,
    layoutAlign,
    size,
    horizontalPadding,
    verticalPadding,
    itemSpacing,
    Flow flow,
    this.componentId,
  }) : super(
          id: id,
          name: name,
          visible: visible,
          type: type,
          pluginData: pluginData,
          sharedPluginData: sharedPluginData,
          boundaryRectangle: boundaryRectangle,
          style: style,
          fills: fills,
          strokes: strokes,
          strokeWeight: strokeWeight,
          strokeAlign: strokeAlign,
          cornerRadius: cornerRadius,
          constraints: constraints,
          layoutAlign: layoutAlign,
          size: size,
          horizontalPadding: horizontalPadding,
          verticalPadding: verticalPadding,
          itemSpacing: itemSpacing,
          flow: flow,
        );

  String componentId;

  @override
  FigmaNode createFigmaNode(Map<String, dynamic> json) =>
      Instance.fromJson(json);
  factory Instance.fromJson(Map<String, dynamic> json) =>
      _$InstanceFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$InstanceToJson(this);

  @override
  Future<PBIntermediateNode> interpretNode(PBContext currentContext) {
    /// TODO: implement method
  }
}