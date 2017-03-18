require 'yelp'


Yelp.client.configure do|config|
  config.consumer_key= '9lOi33Hq1N1kWNg26IDG7Q'
  config.consumer_secret= 'bOqElqsFsmm39RYHUJ4ol5cYLJI'
  config.token= 'FmF1pK6WAzEAQZJMucqYL3pxiECu9S_t'
  config.token_secret= 'FM-ohVWchrTbVyIB4aS-VfbtEGM'
 end
  


# client = Yelp::Client.new({ consumer_key: '9lOi33Hq1N1kWNg26IDG7Q',
#                             consumer_secret: 'bOqElqsFsmm39RYHUJ4ol5cYLJI',
#                             token: 'FmF1pK6WAzEAQZJMucqYL3pxiECu9S_t',
#                             token_secret: 'FM-ohVWchrTbVyIB4aS-VfbtEGM'
#                           })