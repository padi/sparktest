require 'rubygems'
require 'test/unit'
require 'webmock/test_unit'

class VCRTest < Test::Unit::TestCase
  def test_account_without_vcr
    body = <<-eos
{
  "D": {
    "Results": [
      {
        "Associations": null,
        "ResourceUri": "/v1/accounts/20110325213944541276000000",
        "Images": [],
        "Websites": [],
        "Name": "Developer Development Key",
        "Emails": [],
        "LastName": "Development Key",
        "OfficeId": "20061018203347428240000000",
        "Addresses": [],
        "MiddleName": null,
        "Tags": null,
        "FirstName": "Developer",
        "Id": "20110325213944541276000000",
        "FbsIdxCustomer": true,
        "MlsId": "20090403000000000001000000",
        "CompanyId": null,
        "Company": null,
        "Office": "A-NON MEMBER OFFICE",
        "Phones": [],
        "Mls": "Demo MLS",
        "UserType": "Member"
      }
    ],
    "Success": true
  }
}
eos
    stub_request(:get, "http://developers.sparkapi.com:443/v1/my/account").
      with(:headers => {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
      to_return(:status => 200, :body => body, :headers => {})

    response = Net::HTTP.get_response(URI('https://developers.sparkapi.com/v1/my/account'))

    assert_match /Results/, response.body
  end
end