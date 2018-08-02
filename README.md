## staffsテーブル

|Column|Type|Options|
|------|----|------|
|name|string|null: false, index: true|
|assessment|integer||
|position|string||
|together|integer||
|option|integer||
|birthday|date||

### Association
- has_many :champagnes, through: :staffs_champagnes
- has_many :staffs_champagnes



## champagnesテーブル

|Column|Type|Options|
|------|----|------|
|name|string|null: false, index: true|
|number|integer|null: false|

### Association
- has_many :staffs, through: :staffs_champagnes
- has_many :staffs_champagnes
- has_many :champagne_points



## champagne_pointsテーブル

|Column|Type|Options|
|------|----|------|
|name|string|null: false|
|point|integer|null: false|

### Association
- belongs_to: champagne



## staffs_champagnesテーブル

|Column|Type|Options|
|------|----|------|
|staff_id|references|:staff, foreign_key: true|
|champagne_id|references|:champagne, foreign_key: true|

### Association
- belongs_to :staff
- belongs_to :champagne
