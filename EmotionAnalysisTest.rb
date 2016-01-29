require './lib/kairos_emotion_api.rb'

ctl = KairosEmotionApi::EmotionAnalysisController.new
ctl.create_media('http://media.kairos.com/test.flv')