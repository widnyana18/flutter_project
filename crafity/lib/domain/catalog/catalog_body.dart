import 'package:crafity/domain/catalog/catalog_object.dart';
import 'package:crafity/domain/main/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';

part 'catalog_body.freezed.dart';

@freezed
abstract class Artwork with _$Artwork {
  const factory Artwork({
    @required String productId,
    KtList<ProductSize> productSize,
    KtList<Color> color,
    @required String price,
    @required Photo photo,
    @required ProductDesc description,
    @required int count,
    @required KtList<String> tag,
  }) = _Artwork;

  factory Artwork.empty() => Artwork(
        productId: '',
        productSize: emptyList(),
        color: emptyList(),
        photo: Photo(''),
        description: ProductDesc(emptyMap()),
        count: 0,
        tag: emptyList(),
        price: '',
      );
}

@freezed
abstract class Collection with _$Collection {
  const factory Collection({
    @required String collectionId,
    @required KtList<TodoCollection> collections,
    @required String price,
    @required KtList<String> tag,
  }) = _Collection;

  factory Collection.empty() => Collection(
        collectionId: '',
        collections: emptyList(),
        price: '',
        tag: emptyList(),
      );
}

@freezed
abstract class TodoCollection with _$TodoCollection {
  const factory TodoCollection({
    @required String productName,
    @required Rating rate,
    String count,
    @required String productImage,
    @required ProductDesc description,
  }) = _TodoCollection;

  factory TodoCollection.empty() => TodoCollection(
        productName: '',
        rate: Rating(0),
        count: '',
        productImage: '',
        description: ProductDesc(emptyMap()),
      );
}
