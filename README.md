## Usage

```
load 'spark_mock_responses.rb'
include SparkMockResponses
```

`show_stubs` - shows all available "routes" for the mock API
`stub_request(request_type, request_uri)` - will give out a fake response based on SparkAPI examples.

### Examples:

```
stub_request(:get, '/my/account')
stub_request(:get, '/accounts/1/qualifications')
```

### Note:
When needing an ID for the url, always use 1.
