import 'package:crafity/domain/catalog/domains.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';

part 'catalog_details.freezed.dart';

@freezed
abstract class Catalog with _$Catalog {
  const factory Catalog({
    @required CatalogHeader header,
    @required Artwork artwork,
    @required Collection collection,
    @required KtList<CatalogCard> catalogCards,
    @required UserReview reviews,
    @required KtList<CompanyTile> ownerTile,
  }) = _Catalog;

  factory Catalog.empty() => Catalog(
        header: CatalogHeader.empty(),
        artwork: Artwork.empty(),
        collection: Collection.empty(),
        catalogCards: emptyList(),
        reviews: UserReview.empty(),
        ownerTile: emptyList(),
      );
}
