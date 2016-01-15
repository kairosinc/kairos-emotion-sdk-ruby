# This file was automatically generated for kairos by APIMATIC BETA v2.0 on 01/15/2016

module KairosEmotionApi
  class EmotionAnalysisController

    # Create a new media object to be processed.
    # @param [String] source Optional parameter: The source URL of the media.
    # @return MediaResponse response from the API call
    def create_media source: nil
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/media"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "source" => source,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "Content-Type" => Configuration.content_type
      }

      # append custom auth authorization
      CustomAuthUtility.append_custom_auth_params headers

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Returns the results of a specific uploaded piece of media.
    # @param [String] id Required parameter: The id of the media you are looking for the results from.
    # @return mixed response from the API call
    def get_media_by_id id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/media/{id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "id" => id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "Content-Type" => Configuration.content_type
      }

      # append custom auth authorization
      CustomAuthUtility.append_custom_auth_params headers

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Delete media results. It returns the status of the operation.
    # @param [String] id Required parameter: The id of the media.
    # @return MediaByIdResponse response from the API call
    def delete_media_by_id id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/media/{id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "id" => id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "Content-Type" => Configuration.content_type
      }

      # append custom auth authorization
      CustomAuthUtility.append_custom_auth_params headers

      # invoke the API call request to fetch the response
      response = Unirest.delete query_url, headers:headers

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

  end
end