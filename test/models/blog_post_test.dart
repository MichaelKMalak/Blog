
import 'package:blog/core/models/blog_post_header/blog_post_header.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mock/server.dart';

void main() {
  group('Blog Post Model', () {
    test('mapping posts list from response', () {
      final listResponse = MockServer.listResponse;
      final blogPostList =
          compute(BlogPostHeader.fromJsonList, MockServer.listResponse);

      blogPostList.then((value) {
        expect(
            value[0].title,
            equals(listResponse['repository']['issues']['edges'][0]['node']
                ['title']));
      });
    });
  });
}
