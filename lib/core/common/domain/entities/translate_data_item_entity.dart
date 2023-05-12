import 'package:freezed_annotation/freezed_annotation.dart';


part 'translate_data_item_entity.freezed.dart';

@freezed
class TranslationDataItemEntity with _$TranslationDataItemEntity {
  const TranslationDataItemEntity._();

  const factory TranslationDataItemEntity({
    required String itemName,
    required String itemDescription,
    required String itemDescriptionLabel,
  }) = _TranslationDataItemEntity;
}
