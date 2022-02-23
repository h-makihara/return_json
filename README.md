# return_json
post json data, return recieved json data
```
$ curl -H 'Content-Type: application/json' -d '{"text": "Hello World"}' http://${HOST}/check
{
  "text": "Hello World"
}
```
