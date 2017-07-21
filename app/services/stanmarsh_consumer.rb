class StanmarshConsumer

=begin
  def initialize(id)
      @Id=id
  end
=end


  def call(id)
    puts "id is #{id}"
    uri="http://integration-stan-marsh-internal.golabs.io/gojek/drivers/ffind".to_uri
    response=uri.get(parameters={"searchKey"=>'+6281234324322',"findBy"=>'phone'},headers={"Client-ID" => "ops-service-integration", "Pass-Key" => "k1lsa4jf20kLrHGltb4pVosDeCfy3dUmWGRfOolQuME=","Content-Type"=>"application/json"})



    response_status_is_ok=response.ok?

    if response_status_is_ok
      response_json=response.body.as_json
      drivers_details=ActiveSupport::JSON.decode(response_json)
      if drivers_details.length==0
        p "Driver Not Found"
      else
        driver=drivers_details[0]
        p "Driver found"
        p driver["ktpNo"]
      end
    else
      p "Response is not Ok"
      render plain: "Response is not ok"
    end

  end

end