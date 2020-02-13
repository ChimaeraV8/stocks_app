# 株式取引の記録用アプリ
## DB
### Usersテーブル 
|column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|

#### Association
- has_many :stocks
- has_many :result

### Stocksテーブル 
|column|Type|Options|
|------|----|-------|
|buy_date|datetime|null: false|
|code|integer|null: false|
|name|string|null: false|
|price|integer|null: false|
|hold|integer|null: false|
|sell_price|string||
|advantage|integer||
|sell_date|datetime||

#### Association
- belongs_to :user

### Commentsテーブル 
|column|Type|Options|
|------|----|-------|
|text|text||

#### Association
- belongs_to :stock