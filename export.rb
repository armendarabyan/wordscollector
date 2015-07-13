require 'google'
client = Google::APIClient.new(:key => YOUR_DEVELOPER_KEY)
translate = client.discovered_api('translate', 'v2')
result = client.execute(
  :api_method => translate.translations.list,
  :parameters => {
    'format' => 'text',
    'source' => 'en',
    'target' => 'es',
    'q' => 'The quick brown fox jumped over the lazy dog.'
  }
)
