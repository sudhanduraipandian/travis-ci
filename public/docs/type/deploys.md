# Deploys



## Types

* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Array of: Hash
* Array of: String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)
* Hash
* String (known)

## Values

* `anynines`


## Examples

```yaml
deploy:
- provider: anynines
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  password: 
  organization: string
  space: string
```

```yaml
deploy:
- anynines
```

```yaml
deploy:
- provider: appfog
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user: 
  api_key: 
  address: string
  metadata: string
  after_deploy: string
```

```yaml
deploy:
- provider: appfog
  app: {}
```

```yaml
deploy:
- provider: appfog
  app: string
```

```yaml
deploy:
- provider: appfog
  email:
    ".*":
```

```yaml
deploy:
- provider: appfog
  email:
```

```yaml
deploy:
- provider: appfog
  password:
    ".*":
```

```yaml
deploy:
- provider: appfog
  password:
```

```yaml
deploy:
- appfog
```

```yaml
deploy:
- provider: atlas
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  token: 
  app: string
  exclude: string
  include: string
  address: string
  metadata: string
  debug: true
  vcs: true
  version: true
```

```yaml
deploy:
- atlas
```

```yaml
deploy:
- provider: azure_web_apps
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  site: string
  slot: string
  username: 
  password: 
  verbose: true
```

```yaml
deploy:
- azure_web_apps
```

```yaml
deploy:
- provider: bintray
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  file: string
  user: 
  key: 
  passphrase: 
  dry_run: true
```

```yaml
deploy:
- bintray
```

```yaml
deploy:
- provider: bitballoon
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  access-token: 
  site-id: 
  local-dir: string
```

```yaml
deploy:
- bitballoon
```

```yaml
deploy:
- provider: bluemixcloudfoundry
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  password: 
  organization: string
  api: string
  space: string
  region: string
  manifest: string
  skip_ssl_validation: true
```

```yaml
deploy:
- bluemixcloudfoundry
```

```yaml
deploy:
- provider: boxfuse
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user: 
  secret: 
  configfile: string
  payload: string
  app: string
  version: string
  env: string
  image: string
  extra_args: string
```

```yaml
deploy:
- boxfuse
```

```yaml
deploy:
- provider: cargo
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  token:
```

```yaml
deploy:
- cargo
```

```yaml
deploy:
- provider: catalyze
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  target: string
  path: string
```

```yaml
deploy:
- catalyze
```

```yaml
deploy:
- provider: chef-supermarket
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user_id: 
  client_key: 
  cookbook_category: string
```

```yaml
deploy:
- chef-supermarket
```

```yaml
deploy:
- provider: cloud66
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  redeployment_hook: string
```

```yaml
deploy:
- cloud66
```

```yaml
deploy:
- provider: cloudcontrol
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  email: 
  password: 
  deployment: string
```

```yaml
deploy:
- cloudcontrol
```

```yaml
deploy:
- provider: cloudfiles
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  api_key: 
  region: string
  container: string
  dot_match: true
```

```yaml
deploy:
- cloudfiles
```

```yaml
deploy:
- provider: cloudfoundry
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  password: 
  organization: string
  api: string
  space: string
  key: string
  manifest: string
  skip_ssl_validation: true
```

```yaml
deploy:
- cloudfoundry
```

```yaml
deploy:
- provider: codedeploy
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  access_key_id: 
  secret_access_key: 
  application: string
  deployment_group: string
  revision_type: s3
  commit_id: string
  repository: string
  region: string
  wait_until_deployed: true
  bucket: string
  key: string
```

```yaml
deploy:
- codedeploy
```

```yaml
deploy:
- provider: deis
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  controller: string
  username: 
  password: 
  app: string
  cli_version: string
```

```yaml
deploy:
- deis
```

```yaml
deploy:
- provider: divshot
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  api_key: 
  environment: string
```

```yaml
deploy:
- divshot
```

```yaml
deploy:
- provider: elasticbeanstalk
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  access_key_id: 
  securet_access_key: 
  region: string
  app: string
  env: string
  zip_file: string
  bucket_name: string
  bucket_path: string
  only_create_app_version: true
```

```yaml
deploy:
- elasticbeanstalk
```

```yaml
deploy:
- provider: engineyard
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  password: 
  api_key: 
  migrate: string
```

```yaml
deploy:
- provider: engineyard
  app: {}
```

```yaml
deploy:
- provider: engineyard
  app: string
```

```yaml
deploy:
- provider: engineyard
  environment: {}
```

```yaml
deploy:
- provider: engineyard
  environment: string
```

```yaml
deploy:
- engineyard
```

```yaml
deploy:
- provider: firebase
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  project: string
  token: 
  message: string
```

```yaml
deploy:
- firebase
```

```yaml
deploy:
- provider: gae
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  project: string
  keyfile: string
  config: string
  version: string
  no_promote: true
  no_stop_previous_version: true
  verbosity: string
```

```yaml
deploy:
- gae
```

```yaml
deploy:
- provider: gcs
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  access_key_id: 
  secret_access_key: 
  bucket: string
  upload_dir: string
  local_dir: string
  dot_match: true
  acl: string
  cache_control: string
  detect_encoding: true
```

```yaml
deploy:
- gcs
```

```yaml
deploy:
- provider: hackage
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  password:
```

```yaml
deploy:
- hackage
```

```yaml
deploy:
- provider: heroku
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  strategy: api
  buildpack: string
  run: string
```

```yaml
deploy:
- provider: heroku
  app: {}
```

```yaml
deploy:
- provider: heroku
  app: string
```

```yaml
deploy:
- provider: heroku
  api_key: {}
```

```yaml
deploy:
- provider: heroku
  api_key:
```

```yaml
deploy:
- heroku
```

```yaml
deploy:
- provider: lambda
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  access_key_id: 
  secret_access_key: 
  region: string
  function_name: string
  role: string
  handler_name: string
  module_name: string
  zip: string
  description: string
  timeout: string
  memory_size: string
  runtime: string
  environment_variables: 
  security_group_ids: string
  subnet_ids: string
  dead_letter_config: string
  kms_key_arn: string
  tracing_mode: Active
  publish: true
  function_tags:
```

```yaml
deploy:
- lambda
```

```yaml
deploy:
- provider: launchpad
  slug: string
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  oauth_token: 
  oauth_token_secret:
```

```yaml
deploy:
- launchpad
```

```yaml
deploy:
- provider: modulus
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  api_key: 
  project_name: string
```

```yaml
deploy:
- modulus
```

```yaml
deploy:
- provider: npm
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  email: 
  api_key:
```

```yaml
deploy:
- npm
```

```yaml
deploy:
- provider: openshift
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user: 
  password: 
  deployment_branch: string
```

```yaml
deploy:
- provider: openshift
  domain: {}
```

```yaml
deploy:
- provider: openshift
  domain: string
```

```yaml
deploy:
- provider: openshift
  app: {}
```

```yaml
deploy:
- provider: openshift
  app: string
```

```yaml
deploy:
- openshift
```

```yaml
deploy:
- provider: opsworks
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
deploy:
- opsworks
```

```yaml
deploy:
- provider: packagecloud
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  token: 
  repository: string
  local_dir: string
  dist: string
  package_glob: string
  force: true
```

```yaml
deploy:
- packagecloud
```

```yaml
deploy:
- provider: pages
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  github_token: 
  repo: string
  target_branch: string
  local_dir: string
  fqdn: string
  project_name: string
  email: string
  name: string
  github_url: string
  keep_history: true
  verbose: true
  allow_empty_commit: true
  committer_from_gh: true
  deployment_file: true
```

```yaml
deploy:
- pages
```

```yaml
deploy:
- provider: puppetforge
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user: 
  password: 
  url: string
```

```yaml
deploy:
- puppetforge
```

```yaml
deploy:
- provider: pypi
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user: 
  password: 
  api_key: 
  server: string
  distributions: string
  docs_dir: string
```

```yaml
deploy:
- pypi
```

```yaml
deploy:
- provider: releases
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user: 
  password: 
  api_key: 
  repo: string
  file: string
  file_glob: true
  overwrite: true
  release_number: string
  prerelease: true
```

```yaml
deploy:
- releases
```

```yaml
deploy:
- provider: rubygems
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  file: string
  gemspec: string
```

```yaml
deploy:
- provider: rubygems
  api_key: {}
```

```yaml
deploy:
- provider: rubygems
  api_key:
```

```yaml
deploy:
- provider: rubygems
  gem: {}
```

```yaml
deploy:
- provider: rubygems
  gem: string
```

```yaml
deploy:
- rubygems
```

```yaml
deploy:
- provider: s3
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  access_key_id: 
  secret_access_key: 
  bucket: string
  region: string
  upload_dir: string
  storage_class: string
  local_dir: string
  detect_encoding: true
  cache_control: string
  expires: string
  acl: string
  dot_match: true
  index_document_suffix: string
  default_text_charset: string
  server_side_encryption: true
```

```yaml
deploy:
- s3
```

```yaml
deploy:
- provider: scalingo
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  password: 
  api_key: 
  remote: string
  branch: string
  app: string
```

```yaml
deploy:
- scalingo
```

```yaml
deploy:
- provider: script
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  script: string
```

```yaml
deploy:
- script
```

```yaml
deploy:
- provider: snap
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  snap: string
  channel: string
  token:
```

```yaml
deploy:
- snap
```

```yaml
deploy:
- provider: surge
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  project: string
  domain: string
```

```yaml
deploy:
- surge
```

```yaml
deploy:
- provider: testfairy
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
deploy:
- testfairy
```

```yaml
deploy:
  provider: anynines
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  password: 
  organization: string
  space: string
```

```yaml
deploy: anynines

```

```yaml
deploy:
  provider: appfog
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user: 
  api_key: 
  address: string
  metadata: string
  after_deploy: string
```

```yaml
deploy:
  provider: appfog
  app: {}
```

```yaml
deploy:
  provider: appfog
  app: string
```

```yaml
deploy:
  provider: appfog
  email:
    ".*":
```

```yaml
deploy:
  provider: appfog
  email:
```

```yaml
deploy:
  provider: appfog
  password:
    ".*":
```

```yaml
deploy:
  provider: appfog
  password:
```

```yaml
deploy: appfog

```

```yaml
deploy:
  provider: atlas
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  token: 
  app: string
  exclude: string
  include: string
  address: string
  metadata: string
  debug: true
  vcs: true
  version: true
```

```yaml
deploy: atlas

```

```yaml
deploy:
  provider: azure_web_apps
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  site: string
  slot: string
  username: 
  password: 
  verbose: true
```

```yaml
deploy: azure_web_apps

```

```yaml
deploy:
  provider: bintray
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  file: string
  user: 
  key: 
  passphrase: 
  dry_run: true
```

```yaml
deploy: bintray

```

```yaml
deploy:
  provider: bitballoon
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  access-token: 
  site-id: 
  local-dir: string
```

```yaml
deploy: bitballoon

```

```yaml
deploy:
  provider: bluemixcloudfoundry
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  password: 
  organization: string
  api: string
  space: string
  region: string
  manifest: string
  skip_ssl_validation: true
```

```yaml
deploy: bluemixcloudfoundry

```

```yaml
deploy:
  provider: boxfuse
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user: 
  secret: 
  configfile: string
  payload: string
  app: string
  version: string
  env: string
  image: string
  extra_args: string
```

```yaml
deploy: boxfuse

```

```yaml
deploy:
  provider: cargo
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  token:
```

```yaml
deploy: cargo

```

```yaml
deploy:
  provider: catalyze
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  target: string
  path: string
```

```yaml
deploy: catalyze

```

```yaml
deploy:
  provider: chef-supermarket
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user_id: 
  client_key: 
  cookbook_category: string
```

```yaml
deploy: chef-supermarket

```

```yaml
deploy:
  provider: cloud66
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  redeployment_hook: string
```

```yaml
deploy: cloud66

```

```yaml
deploy:
  provider: cloudcontrol
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  email: 
  password: 
  deployment: string
```

```yaml
deploy: cloudcontrol

```

```yaml
deploy:
  provider: cloudfiles
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  api_key: 
  region: string
  container: string
  dot_match: true
```

```yaml
deploy: cloudfiles

```

```yaml
deploy:
  provider: cloudfoundry
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  password: 
  organization: string
  api: string
  space: string
  key: string
  manifest: string
  skip_ssl_validation: true
```

```yaml
deploy: cloudfoundry

```

```yaml
deploy:
  provider: codedeploy
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  access_key_id: 
  secret_access_key: 
  application: string
  deployment_group: string
  revision_type: s3
  commit_id: string
  repository: string
  region: string
  wait_until_deployed: true
  bucket: string
  key: string
```

```yaml
deploy: codedeploy

```

```yaml
deploy:
  provider: deis
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  controller: string
  username: 
  password: 
  app: string
  cli_version: string
```

```yaml
deploy: deis

```

```yaml
deploy:
  provider: divshot
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  api_key: 
  environment: string
```

```yaml
deploy: divshot

```

```yaml
deploy:
  provider: elasticbeanstalk
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  access_key_id: 
  securet_access_key: 
  region: string
  app: string
  env: string
  zip_file: string
  bucket_name: string
  bucket_path: string
  only_create_app_version: true
```

```yaml
deploy: elasticbeanstalk

```

```yaml
deploy:
  provider: engineyard
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  password: 
  api_key: 
  migrate: string
```

```yaml
deploy:
  provider: engineyard
  app: {}
```

```yaml
deploy:
  provider: engineyard
  app: string
```

```yaml
deploy:
  provider: engineyard
  environment: {}
```

```yaml
deploy:
  provider: engineyard
  environment: string
```

```yaml
deploy: engineyard

```

```yaml
deploy:
  provider: firebase
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  project: string
  token: 
  message: string
```

```yaml
deploy: firebase

```

```yaml
deploy:
  provider: gae
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  project: string
  keyfile: string
  config: string
  version: string
  no_promote: true
  no_stop_previous_version: true
  verbosity: string
```

```yaml
deploy: gae

```

```yaml
deploy:
  provider: gcs
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  access_key_id: 
  secret_access_key: 
  bucket: string
  upload_dir: string
  local_dir: string
  dot_match: true
  acl: string
  cache_control: string
  detect_encoding: true
```

```yaml
deploy: gcs

```

```yaml
deploy:
  provider: hackage
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  password:
```

```yaml
deploy: hackage

```

```yaml
deploy:
  provider: heroku
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  strategy: api
  buildpack: string
  run: string
```

```yaml
deploy:
  provider: heroku
  app: {}
```

```yaml
deploy:
  provider: heroku
  app: string
```

```yaml
deploy:
  provider: heroku
  api_key: {}
```

```yaml
deploy:
  provider: heroku
  api_key:
```

```yaml
deploy: heroku

```

```yaml
deploy:
  provider: lambda
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  access_key_id: 
  secret_access_key: 
  region: string
  function_name: string
  role: string
  handler_name: string
  module_name: string
  zip: string
  description: string
  timeout: string
  memory_size: string
  runtime: string
  environment_variables: 
  security_group_ids: string
  subnet_ids: string
  dead_letter_config: string
  kms_key_arn: string
  tracing_mode: Active
  publish: true
  function_tags:
```

```yaml
deploy: lambda

```

```yaml
deploy:
  provider: launchpad
  slug: string
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  oauth_token: 
  oauth_token_secret:
```

```yaml
deploy: launchpad

```

```yaml
deploy:
  provider: modulus
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  api_key: 
  project_name: string
```

```yaml
deploy: modulus

```

```yaml
deploy:
  provider: npm
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  email: 
  api_key:
```

```yaml
deploy: npm

```

```yaml
deploy:
  provider: openshift
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user: 
  password: 
  deployment_branch: string
```

```yaml
deploy:
  provider: openshift
  domain: {}
```

```yaml
deploy:
  provider: openshift
  domain: string
```

```yaml
deploy:
  provider: openshift
  app: {}
```

```yaml
deploy:
  provider: openshift
  app: string
```

```yaml
deploy: openshift

```

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

```yaml
deploy:
  provider: packagecloud
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  token: 
  repository: string
  local_dir: string
  dist: string
  package_glob: string
  force: true
```

```yaml
deploy: packagecloud

```

```yaml
deploy:
  provider: pages
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  github_token: 
  repo: string
  target_branch: string
  local_dir: string
  fqdn: string
  project_name: string
  email: string
  name: string
  github_url: string
  keep_history: true
  verbose: true
  allow_empty_commit: true
  committer_from_gh: true
  deployment_file: true
```

```yaml
deploy: pages

```

```yaml
deploy:
  provider: puppetforge
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user: 
  password: 
  url: string
```

```yaml
deploy: puppetforge

```

```yaml
deploy:
  provider: pypi
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user: 
  password: 
  api_key: 
  server: string
  distributions: string
  docs_dir: string
```

```yaml
deploy: pypi

```

```yaml
deploy:
  provider: releases
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  user: 
  password: 
  api_key: 
  repo: string
  file: string
  file_glob: true
  overwrite: true
  release_number: string
  prerelease: true
```

```yaml
deploy: releases

```

```yaml
deploy:
  provider: rubygems
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  file: string
  gemspec: string
```

```yaml
deploy:
  provider: rubygems
  api_key: {}
```

```yaml
deploy:
  provider: rubygems
  api_key:
```

```yaml
deploy:
  provider: rubygems
  gem: {}
```

```yaml
deploy:
  provider: rubygems
  gem: string
```

```yaml
deploy: rubygems

```

```yaml
deploy:
  provider: s3
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  access_key_id: 
  secret_access_key: 
  bucket: string
  region: string
  upload_dir: string
  storage_class: string
  local_dir: string
  detect_encoding: true
  cache_control: string
  expires: string
  acl: string
  dot_match: true
  index_document_suffix: string
  default_text_charset: string
  server_side_encryption: true
```

```yaml
deploy: s3

```

```yaml
deploy:
  provider: scalingo
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  username: 
  password: 
  api_key: 
  remote: string
  branch: string
  app: string
```

```yaml
deploy: scalingo

```

```yaml
deploy:
  provider: script
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  script: string
```

```yaml
deploy: script

```

```yaml
deploy:
  provider: snap
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  snap: string
  channel: string
  token:
```

```yaml
deploy: snap

```

```yaml
deploy:
  provider: surge
  on: {}
  allow_failure: true
  skip_cleanup: true
  edge: true
  project: string
  domain: string
```

```yaml
deploy: surge

```

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
