class MockServer {
  static Map<String, dynamic> get listResponse => {
        'repository': {
          'issues': {
            'edges': [
              {
                'node': {
                  'id': 'MDU6SXNzdWU2ODc1NDAxNTc=',
                  'body':
                      '''**This is a simple test** to _demonstrate_ the concept.\r\n\r\nIt should be working! 😄 ''',
                  'bodyHTML':
                      '<p><strong>This is a simple test</strong> to <em>demonstrate</em> the concept.</p>\n<p>It should be working! <g-emoji class=\"g-emoji\" alias=\"smile\" fallback-src=\"https://github.githubassets.com/images/icons/emoji/unicode/1f604.png\">😄</g-emoji></p>',
                  'createdAt': '2020-08-27T21:04:54Z',
                  'lastEditedAt': null,
                  'labels': {
                    'nodes': [
                      {'name': 'blog'}
                    ]
                  },
                  'title': 'First Blog Post',
                  'url': 'https://github.com/MichaelKMalak/blog/issues/1',
                  'updatedAt': '2020-08-27T21:04:54Z'
                }
              },
              {
                'node': {
                  'id': 'MDU6SXNzdWU2ODgzOTg0NjY=',
                  'body':
                      '# Second Blog Post!\r\n##This is the second blog post!',
                  'bodyHTML':
                      '<h1>Second Blog Post!</h1>\n<p>##This is the second blog post!</p>',
                  'createdAt': '2020-08-28T23:04:58Z',
                  'lastEditedAt': null,
                  'labels': {
                    'nodes': [
                      {'name': 'blog'}
                    ]
                  },
                  'title': 'Second Blog Post!',
                  'url': 'https://github.com/MichaelKMalak/blog/issues/2',
                  'updatedAt': '2020-08-28T23:04:58Z'
                }
              }
            ],
            'totalCount': 2
          }
        }
      };
}
