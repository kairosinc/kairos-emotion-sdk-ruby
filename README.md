KairosEmotionApi
=================
This API SDK was automatically generated by APIMATIC BETA v2.0

How To Configure:
=================
The generated code might need to be configured with your API credentials. To do that,
open the file "configuration.rb" and edit it's contents.

Alternatively, you can modify the Configuration parameters at run-time through the following
```
KairosEmotionApi::Configuration.your_paramater=YOUR_VALUE
```

How To Build: 
=============
The generated code uses a Ruby gem namely 'unirest'. The reference to this gem is
already added in the gemspec. Therefore, you will need internet access to resolve
this dependency.

How To Use:
===========
The generated code can be used to build gem, which can then be distributed online.
Otherwise, you can include the generated code in your project to use directly.

Use the following steps to build a gem and use locally

    1. Run the build command
        ```
        gem build kairos_emotion_api.gemspec
        ```

    2. Run the install command  
        ```
        gem install ./kairos_emotion_api-1.0.gem
        ```

    3. In your Gemfile add this line
        ```
        gem 'kairos_emotion_api', '~> 1.0'
        ```
        or, refer to kairos_emotion_api in local dir: 
        './lib/kairos_emotion_api.rb'

    4. Now create an instance and use the instance methods, like following.

        ```
        require './lib/kairos_emotion_api.rb'

        ctl = KairosEmotionApi::EmotionAnalysisController.new
        ctl.create_media('http://media.kairos.com/test.flv')

        ```
        cd into the directory and run ruby EmotionAnalysisTest.rb
