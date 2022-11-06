#  DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| nickname           | string              | null: false               |
| first_name         | string              | null: false               |
| last_name          | string              | null: false               |
| first_name_kana    | string              | null: false               |
| last_name_kana     | string              | null: false               |
| age                | string              | null: false               |
| sex                | integer             | null: false               |
| children_number    | integer             | null: false               |
| children_sex       | integer             | null: false               |
| children_age       | string              | null: false               |


### Association

* has_many   :diaries
* has_many   :footstamps
* has_many   :favorites
* has_many   :footstamps

## diaries table

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     | null: false                    |
| content | text       | null: false                    |
| category| integer    | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

* belongs_to :user
* has_many   :comments
* has_many   :favorites
* has_many   :footstamps

## favorites table

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| diary   | references | null: false, foreign_key: true |

### Association

* belongs_to :user
* belongs_to :diary

## footsamps table

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| diary   | references | null: false, foreign_key: true |

### Association

* belongs_to :user
* belongs_to :diary

## comments table

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| diary   | references | null: false, foreign_key: true |

### Association

* belongs_to :user
* belongs_to :diary
