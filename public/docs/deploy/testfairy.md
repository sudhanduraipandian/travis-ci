# Deploy Testfairy



## Types

* Hash
* String (known)

## Values

* `testfairy`


## Examples

```yaml
deploy:
  provider: testfairy
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  api_key: 
  app_file: string
  symbols_file: string
  testers_groups: string
  notify: true
  auto_update: true
  video_quality: string
  screenshot_quality: string
  screenshot_interval: string
  max_duration: string
  advanced_options: string
  data_only_wifi: true
  record_on_backgroup: true
  video: true
  icon_watermark: true
  metrics: string
```

```yaml
deploy: testfairy

```
