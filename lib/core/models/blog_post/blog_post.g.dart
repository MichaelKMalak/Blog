// GENERATED CODE - DO NOT MODIFY BY HAND

part of blog_post;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlogPost> _$blogPostSerializer = new _$BlogPostSerializer();

class _$BlogPostSerializer implements StructuredSerializer<BlogPost> {
  @override
  final Iterable<Type> types = const [BlogPost, _$BlogPost];
  @override
  final String wireName = 'BlogPost';

  @override
  Iterable<Object> serialize(Serializers serializers, BlogPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
    ];
    if (object.lastEditedAt != null) {
      result
        ..add('lastEditedAt')
        ..add(serializers.serialize(object.lastEditedAt,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BlogPost deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlogPostBuilder();

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
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastEditedAt':
          result.lastEditedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BlogPost extends BlogPost {
  @override
  final String title;
  @override
  final String id;
  @override
  final String body;
  @override
  final String url;
  @override
  final String createdAt;
  @override
  final String lastEditedAt;

  factory _$BlogPost([void Function(BlogPostBuilder) updates]) =>
      (new BlogPostBuilder()..update(updates)).build();

  _$BlogPost._(
      {this.title,
      this.id,
      this.body,
      this.url,
      this.createdAt,
      this.lastEditedAt})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('BlogPost', 'title');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('BlogPost', 'id');
    }
    if (body == null) {
      throw new BuiltValueNullFieldError('BlogPost', 'body');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('BlogPost', 'url');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('BlogPost', 'createdAt');
    }
  }

  @override
  BlogPost rebuild(void Function(BlogPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlogPostBuilder toBuilder() => new BlogPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlogPost &&
        title == other.title &&
        id == other.id &&
        body == other.body &&
        url == other.url &&
        createdAt == other.createdAt &&
        lastEditedAt == other.lastEditedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, title.hashCode), id.hashCode), body.hashCode),
                url.hashCode),
            createdAt.hashCode),
        lastEditedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BlogPost')
          ..add('title', title)
          ..add('id', id)
          ..add('body', body)
          ..add('url', url)
          ..add('createdAt', createdAt)
          ..add('lastEditedAt', lastEditedAt))
        .toString();
  }
}

class BlogPostBuilder implements Builder<BlogPost, BlogPostBuilder> {
  _$BlogPost _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _lastEditedAt;
  String get lastEditedAt => _$this._lastEditedAt;
  set lastEditedAt(String lastEditedAt) => _$this._lastEditedAt = lastEditedAt;

  BlogPostBuilder();

  BlogPostBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _id = _$v.id;
      _body = _$v.body;
      _url = _$v.url;
      _createdAt = _$v.createdAt;
      _lastEditedAt = _$v.lastEditedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlogPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BlogPost;
  }

  @override
  void update(void Function(BlogPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BlogPost build() {
    final _$result = _$v ??
        new _$BlogPost._(
            title: title,
            id: id,
            body: body,
            url: url,
            createdAt: createdAt,
            lastEditedAt: lastEditedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
