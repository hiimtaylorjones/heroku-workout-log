## Development


## Working Title

Some content!

### Create OAuth Client

```
application = Doorkeeper::Application.create(
  name: "ApplicationName",
  scopes: "read write",
  confidential: false,
  redirect_uri: "urn:ietf:wg:oauth:2.0:oob"
)
```
