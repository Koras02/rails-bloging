class Post < ApplicationRecord
   # title은 반드시 존재해야 함, 최소 5글자
   validates :title, presence: true, length: { minimum: 5 }

   # content는 반드시 존재
   validates :content, presence: true
end
