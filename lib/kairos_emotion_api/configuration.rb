# This file was automatically generated for kairos by APIMATIC BETA v2.0 on 01/15/2016

module KairosEmotionApi 
  class Configuration

    # The base Uri for API calls
    @BASE_URI = "https://api.kairos.com"

    # Content Type
    @content_type = "application/json"

    # Application ID
    @app_id = ""

    # Application Key
    @app_key = ""

    # set timeout in seconds for API processes
    @api_timeout = 10


    # create the getters and setters
    class << self
      attr_accessor :BASE_URI

      attr_accessor :content_type

      attr_accessor :app_id

      attr_accessor :app_key

      attr_accessor :api_timeout

    end
  end
end
