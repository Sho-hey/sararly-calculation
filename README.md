## usersテーブル
|Column|Type|Options|
|------|----|------|
|name|string|null: false|

### Association
- has_many :staffs
- has_many :chanpagnes
- has_many :others



## staffsテーブル

|Column|Type|Options|
|------|----|------|
|name|string|null: false, index: true|
|assessment|integer||
|position|string||
|birthday|datetime||
|user_id|references|foreign_key: true|

### Association
- belongs_to :user



## champagnesテーブル

|Column|Type|Options|
|------|----|------|
|name|string|null: false, index: true|
|price|integer|null: false|
|normal|integer|null: false|
|special|integer|null: false|
|user_id|references|foreign_key: true|

### Association
- belongs_to :user



## othersテーブル
|Column|Type|Options|
|------|----|------|
|text|text||
|price|integer||
|user_id|references|foreign_key: true|

## Association
- belongs_to :user
