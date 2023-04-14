# ExampleHTTPRootingWithClass

 use class to root http request on http server

## init

in `on web connection`

```4d
Storage.root.manage($1/*path*/)
```

## how it work

if a request is done on `http(s)://<your_host>/samplepath`
then the function `samplepath` will be call in `cs.Root` object

### for subpath

for instance for `http(s)://<your_host>/subpath/test`

an attribute `subpath` must be defined in `cs.Root`

It must contains an object that contains `manage` function

For instance the parameter passe to `manage` function will be here ["test"]

:bulb: You could extends cs.Root class to provide such object, and have a `test` function to do the job
