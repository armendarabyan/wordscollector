require 'rest-client'

class TranslationApi
  def translate(word)
    url = "https://translate.yandex.net/api/v1.5/tr.json/translate"
    key = "trnsl.1.1.20150714T085402Z.742a9d47804f0447.c89043665e992361614613b2648939040896911c"
    params = {
      :key => key,
      :lang => "en-ru",
      :text => word,
    }
    t = RestClient.get url, { :accept => :json, :params => params }
    f = JSON.parse(t)
    return f['text'][0]
  end
end
