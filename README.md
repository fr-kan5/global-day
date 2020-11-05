# README


## Userテーブル
| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| name          | string     | null: false |
| email         | string     | null: false |
| password      | string     | null: false |
| country_id    | integer    | null: false |
| profile       | text       |             |
| birthday      | date       | null: false |

### Associate
- has_many :comments
- has_many :posts
- has_many :likes
- has_many :likes_posts, through: :likes, source: :post
- belongs_to :user



## Postテーブル
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| text          | text       | null: false                    |
| place         | string     | null :false                    |
| user_id       | references | null: false, foreign_key: true |

### Associate
- belongs_to :user
- has_many :likes
- has_many :users, through: :likes
- has_many :comments



## Likes
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| post_id | references | null: false, foreign_key: true |

### Associate
- belongs_to :user
- belongs_to :post





## Commentsテーブル
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       | null: false                    |
| user_id | references | null: false, foreign_key: true |
| post_id | references | null: false, foreign_key: true |

### Associate
- belongs_to :user
- belongs_to :post


## Memosテーブル
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     | null: false                    |
| text    | text       | null: false                    |
| user_id | references | null: false, foreign_key: true |

### Associate
- belongs_to :user