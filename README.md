# README

## usersテーブル

| Column             | Type       | Options                       |
|--------------------|------------|-------------------------------|
| nickname           | string     | null: false                   |
| email              | string     | null: false, unique: true     |
| encrypted_password | string     | null: false                   |

### Association

- has_many :items
- has_many :coordinates


## itemsテーブル

| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| category_id        | integer    | null: false                    |
| color_id           | integer    | null: false                    |
| type_id            | integer    | null: false                    |
| item_memo          | text       |                                |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :coordinates, through: : item_coordinates


## coordinatesテーブル

| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| kimono_id          | integer    | null: false                    |
| obi_id             | integer    | null: false                    |
| obiage_id          | integer    |                                |
| obijime_id         | integer    |                                |
| coordinate_memo    | text       |                                |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :items, through: : item_coordinates


## item_coordinatesテーブル

| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| item               | references | null: false, foreign_key: true |
| coordinate         | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :coordinate


Things you may want to cover:

* Ruby version: 2.6.5

* Rails version: 6.0.6.1

* System dependencies: 

* Configuration: 

* Database creation: 

* Database initialization: 

* How to run the test suite: 

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions: 

* ...
