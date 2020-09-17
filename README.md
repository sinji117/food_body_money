# テーブル設計

## users テーブル

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| nickname   | string  | null: false |
| age        | integer | null: false |
| metabolism | integer |             |
| money      | integer |             |

### Association

- has_many :foods
- has_many :comments

## foods テーブル

| Column      | Type      | Options          |
| ----------- | --------- | ---------------- |
| user_id     | reference | foreign_key:true |
| product     | string    |                  |
| calorie     | integer   |                  |
| price       | integer   |                  |
| ingredient  | text      |                  |
| explanation | text      |                  |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column | Type      | Options          |
| ------ | --------- | ---------------- |
| user   | reference | foreign_key:true |
| food   | reference | foreign_key:true |
| text   | text      |                  |

### Association

- belongs_to :user
- belongs_to :food
