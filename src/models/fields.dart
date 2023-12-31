import 'block.dart';

/// Enum to represent different types of fields
enum FieldType {
  text('text'),
  textArea('textArea'),
  link('link'),
  richTextEditor('rich_text_editor'),
  nestedList('nestedList'),
  nestedGroup('nestedList');

  /// Enum to represent different types of fields
  const FieldType(this.value);

  /// json value from api response
  final String value;

  /// Bool to check if field is nested
  bool get isNested =>
      this == FieldType.nestedGroup || this == FieldType.nestedList;
}

extension FieldTypeByValue<T extends FieldType> on Iterable<T> {
  T byValue(String name) {
    for (var value in this) {
      if (value.value == name) return value;
    }
    throw ArgumentError.value(name, "value", "No FieldType with that value");
  }
}

/// {@template Field}
/// A class for handling fields
///
/// Primarly used to handle fields in blocks
/// {@endtemplate}
class Field {
  final String fieldName;
  final FieldType fieldType;
  final String? fieldDescription;
  final String id;
  final String? blockData;

  /// {@macro Field}
  Field({
    required this.fieldName,
    required this.fieldType,
    this.fieldDescription,
    required this.id,
    this.blockData,
  });

  factory Field.fromJson(Map<String, dynamic> json) {
    return Field(
      fieldName: json['fieldName'],
      fieldType: FieldType.values.byValue(json['fieldType']),
      fieldDescription: json['fieldDescription'],
      id: json['id'],
      blockData: FieldType.values.byValue(json['fieldType']).isNested
          ? json['blockData']
          : json['blockData'][json['fieldName']],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fieldName': fieldName,
      'fieldType': fieldType,
      'fieldDescription': fieldDescription,
      'id': id,
      'blockData': fieldType.isNested
          ? fieldName
          : <String, dynamic>{fieldName: blockData},
    };
  }
}

/// {@template MultiField}
/// A field which contains multiple subfields
///
/// Primarly used to handle fields in [BlockType.list]
/// {@endtemplate}
class MultiField {
  final String listId;
  final String? id;
  final Map<String, Field> fields;

  /// {@macro MultiField}
  const MultiField({
    required this.listId,
    this.id,
    required this.fields,
  });

  factory MultiField.fromJson(Map<String, dynamic> json) {
    String listId = json['listId'];
    String? id = json['id'];

    Map<String, Field> fields = {};
    json.remove('listId');
    json.remove('id');

    json.forEach((key, value) {
      fields[key] = Field.fromJson(value);
    });

    return MultiField(
      listId: listId,
      id: id,
      fields: fields,
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {'listId': listId};
    if (id != null) map.putIfAbsent('id', () => id);
    map.addAll(fields.map((key, value) => MapEntry(key, value.toJson())));
    return map;
  }
}