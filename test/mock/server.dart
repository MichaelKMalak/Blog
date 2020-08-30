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
                  'createdAt': '2020-08-27T21:04:54Z',
                  'lastEditedAt': null,
                  'labels': {
                    'nodes': [
                      {'name': 'blog'}
                    ]
                  },
                  'participants': {
                    'nodes': [
                      {
                        'avatarUrl': 'https://avatars0.githubusercontent.com/u/12827629?u=46004aa87774446e1e482026c6004ac7a3643b15&v=4'
                      }
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
                  'createdAt': '2020-08-28T23:04:58Z',
                  'lastEditedAt': null,
                  'labels': {
                    'nodes': [
                      {'name': 'blog'}
                    ]
                  },
                  'participants': {
                    'nodes': [
                      {
                        'avatarUrl': 'https://avatars0.githubusercontent.com/u/12827629?u=46004aa87774446e1e482026c6004ac7a3643b15&v=4'
                      }
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
