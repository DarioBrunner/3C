class Channel < ApplicationRecord
  enum typ: {facebook:0, whatsapp:1, email:2, twitter:3, instagram:4, slage:5, kws:6}
end