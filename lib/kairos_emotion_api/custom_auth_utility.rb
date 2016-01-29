# This file was automatically generated for kairos by APIMATIC BETA v2.0 on 01/15/2016

module KairosEmotionApi 
  class CustomAuthUtility
    
    # Appends the necessary OAuth credentials for making this authorized call
    # @param [Hash] The out going request to access the resource
    def self.append_custom_auth_params(headers)    
      # TODO: Add your custom authentication here
      # The following properties are available to use
      #     Configuration.content_type
      #     Configuration.app_id
      #     Configuration.app_key
      # 
        headers["Content-Type"] = Configuration.content_type
        headers["app_id"]       = Configuration.app_id
        headers["app_key"]      = Configuration.app_key

        return headers

    end
    
  end
end