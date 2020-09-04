// GENERATED CODE - DO NOT MODIFY BY HAND

part of blog_post;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BlogPost extends BlogPost {
  @override
  final String title;
  @override
  final String body;
  @override
  final String createdAt;
  @override
  final String url;
  @override
  final String avatarUrl;

  factory _$BlogPost([void Function(BlogPostBuilder) updates]) =>
      (new BlogPostBuilder()..update(updates)).build();

  _$BlogPost._(
      {this.title, this.body, this.createdAt, this.url, this.avatarUrl})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('BlogPost', 'title');
    }
    if (body == null) {
      throw new BuiltValueNullFieldError('BlogPost', 'body');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('BlogPost', 'createdAt');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('BlogPost', 'url');
    }
    if (avatarUrl == null) {
      throw new BuiltValueNullFieldError('BlogPost', 'avatarUrl');
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
        body == other.body &&
        createdAt == other.createdAt &&
        url == other.url &&
        avatarUrl == other.avatarUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, title.hashCode), body.hashCode), createdAt.hashCode),
            url.hashCode),
        avatarUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BlogPost')
          ..add('title', title)
          ..add('body', body)
          ..add('createdAt', createdAt)
          ..add('url', url)
          ..add('avatarUrl', avatarUrl))
        .toString();
  }
}

class BlogPostBuilder implements Builder<BlogPost, BlogPostBuilder> {
  _$BlogPost _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _avatarUrl;
  String get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  BlogPostBuilder();

  BlogPostBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _body = _$v.body;
      _createdAt = _$v.createdAt;
      _url = _$v.url;
      _avatarUrl = _$v.avatarUrl;
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
            body: body,
            createdAt: createdAt,
            url: url,
            avatarUrl: avatarUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
