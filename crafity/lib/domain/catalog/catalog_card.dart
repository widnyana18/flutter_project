import 'package:crafity/domain/catalog/catalog_header.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';
part 'catalog_card.freezed.dart';

@freezed
abstract class CatalogCard with _$CatalogCard {
  const factory CatalogCard({
    @required KtList<String> thumbnail,
    @required CatalogHeader caption,
    String label,
    @required String price,
  }) = _CatalogCard;

  factory CatalogCard.empty() => CatalogCard(
        thumbnail: emptyList(),
        caption: CatalogHeader.empty(),
        label: '',
        price: '',
      );
}
