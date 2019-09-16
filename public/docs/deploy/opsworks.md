# Deploy Opsworks



## Types

* Hash
* String (known)

## Values

* `opsworks`


## Examples

```yaml
deploy:
  provider: opsworks
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  access_key_id: 
  secret_access_key: 
  app_id: string
  instance_ids: string
  layer_ids: string
  migrate: true
  wait_until_deployed: string
  custom_json: string
```

```yaml
deploy: opsworks

```
