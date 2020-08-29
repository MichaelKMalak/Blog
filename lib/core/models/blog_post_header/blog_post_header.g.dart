// GENERATED CODE - DO NOT MODIFY BY HAND

part of blog_post_header;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlogPostHeader> _$blogPostHeaderSerializer =
    new _$BlogPostHeaderSerializer();

class _$BlogPostHeaderSerializer
    implements StructuredSerializer<BlogPostHeader> {
  @override
  final Iterable<Type> types = const [BlogPostHeader, _$BlogPostHeader];
  @override
  final String wireName = 'BlogPostHeader';

  @override
  Iterable<Object> serialize(Serializers serializers, BlogPostHeader object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BlogPostHeader deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlogPostHeaderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BlogPostHeader extends BlogPostHeader {
  @override
  final String title;
  @override
  final String id;
  @override
  final String createdAt;

  factory _$BlogPostHeader([void Function(BlogPostHeaderBuilder) updates]) =>
      (new BlogPostHeaderBuilder()..update(updates)).build();

  _$BlogPostHeader._({this.title, this.id, this.createdAt}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('BlogPostHeader', 'title');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('BlogPostHeader', 'id');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('BlogPostHeader', 'createdAt');
    }
  }

  @override
  BlogPostHeader rebuild(void Function(BlogPostHeaderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlogPostHeaderBuilder toBuilder() =>
      new BlogPostHeaderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlogPostHeader &&
        title == other.title &&
        id == other.id &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, title.hashCode), id.hashCode), createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BlogPostHeader')
          ..add('title', title)
          ..add('id', id)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class BlogPostHeaderBuilder
    implements Builder<BlogPostHeader, BlogPostHeaderBuilder> {
  _$BlogPostHeader _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  BlogPostHeaderBuilder();

  BlogPostHeaderBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _id = _$v.id;
      _createdAt = _$v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlogPostHeader other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BlogPostHeader;
  }

  @override
  void update(void Function(BlogPostHeaderBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BlogPostHeader build() {
    final _$result = _$v ??
        new _$BlogPostHeader._(title: title, id: id, createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
