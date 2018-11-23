# JD::Union

   A simple ruby implementation of JD Union API [京东联盟API](https://media.jd.com)

## Installation
  gem 'jd-union', '0.0.1', git: 'https://github.com/sitoto/jd-union.git'

## Usage
```ruby
require 'jd/union'
```


```ruby
material_url = "https://item.jd.com/****.html"
jd_query = {promotionCodeReq: {materialId: material_url,siteId: JD_UNION_SITE_ID,positionId: JD_UNION_SITE_POSITION_ID}}
service = JD::Union::Service.new(JD_UNION_APP_KEY, JD_UNION_APP_SECRET) do |options|
  options.format = "json"
  options.sign_method = "md5"
  options.param_json = JSON(jd_query)
end
response = service.get("jd.union.open.promotion.common.get")
@result = response
unless response.errorResponse?
  result = response.body.result
  result = JSON.parse(result)
  @code = result['code']
  @click_url = result['data']['clickURL']
else
  p response.errorResponse.code
  p response.errorResponse.msg
end
```


## Contributing

## References

  [Taobao::TOP](https://github.com/wasabia/taobao-top)
