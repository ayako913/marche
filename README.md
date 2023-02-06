# テーブル設計

## usersテーブル

| Column              | Type              | Options                  |
| ------------------- | ----------------- | ------------------------ |
| name                | string            | null:false               |
| nickname            | string            | null:false               |
| email               | string            | null:false , unique:true |
| encrypted_password  | string            | null:false               |
| tel                 | string            | null:false               |
| division_id         | integer           | null:false               |
| city_area           | string            | null:false               |

## Association

- has_many :vegetables
- has_many :eats
- has_many :vorders
- has_many :eorders

## vegetablesテーブル

| Column             | Type              | Option                       |
| ------------------ | ----------------- | ---------------------------- |
| vegetable          | string            | null:false                   |
| price              | integer           | null:false                   |
| quantity           | integer           | null:false                   |
| place_id           | integer           | null:false                   |
| text               | text              |                              |

## Association

- belongs_to :user
- has_one :vorder

## eatsテーブル

| Column             | Type              | Option                       |
| ------------------ | ----------------- | ---------------------------- |
| store_name         | string            | null:false                   |
| address            | string            | null:false                   |
| menu               | string            | null:false                   |
| price              | integer           | null:false                   |
| quantity           | integer           | null:false                   |
| text               | text              |                              |

## Association

- belongs_to :user
- has_one :eorder

## vordersテーブル

| Column             | Type              | Option                       |
| ------------------ | ----------------- | ---------------------------- |
| user               | references        | null:false, foreign_key:true |
| vegetable          | references        | null:false, foreign_key:true |

## Association

- belongs_to :vegetable
- belongs_to :user

## eordersテーブル

| Column             | Type              | Option                       |
| ------------------ | ----------------- | ---------------------------- |
| user               | references        | null:false, foreign_key:true |
| eat                | references        | null:false, foreign_key:true |

## Association

- belongs_to :eat
- belongs_to :user