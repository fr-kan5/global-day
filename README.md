# GlobalDay
SNS上の語学学校をイメージとした英語学習に特化したアプリケーション

![toppage](https://user-images.githubusercontent.com/71579504/99182917-86be2100-277b-11eb-8dc9-153ae2103757.PNG)


# 💬　概要

### 日記を書くことは語学の定着に優れているという。
### 英語力の向上を目的としたSNSである。

自身の英語学習のアウトプットを「日記投稿」と言う形で行うことのできるSNS
投稿した日記に対して他者が文法・単語の使い方をコメントし、指摘し合う
指摘されたものはメモを残すことができ復習ができる

# 🌐 App URL

# 💻 利用方法
① トップページから新規登録・ログイン

② 一覧画面へ遷移する

③ 新規投稿は右上アバター写真をクリック → 「New diary」を選択
　 投稿完了後は一覧画面へ戻る
  ![7c5df226a30881a330dfdc2143ce0065](https://user-images.githubusercontent.com/71579504/99178914-93328180-275b-11eb-838b-412756eae896.gif)
  ![post-to-index](https://user-images.githubusercontent.com/71579504/99178958-13f17d80-275c-11eb-9430-a386d6e78b6f.gif)

  
④ 一覧画面から１つの投稿を選択 → 投稿詳細画面へ遷移する
　 投稿者本人であれば投稿の編集・削除が投稿詳細画面から可能になる
  ![post-to-show](https://user-images.githubusercontent.com/71579504/99179105-a8a8ab00-275d-11eb-9cec-6c3e2facdb6d.gif)

  
⑤ 投稿詳細画面からコメントができる
　 （コメントは投稿に対しての英語の使い方を指摘するものが望ましいが、交流のために使っても良い）
 '![demo](https://raw.githubusercontent.com/wiki/liz539z/global-day/gif/comment.gif)'


⑥ コメントから得た学びや他者の投稿から得た学びを「My memo」へコピペして管理することができる
 　右上アバター写真をクリック → 「My memo」を選択
  ![to-memo](https://user-images.githubusercontent.com/71579504/99179203-a5fa8580-275e-11eb-9106-357e9031efaa.gif)
 ![how_to_memo](https://user-images.githubusercontent.com/71579504/99182317-a7847780-2777-11eb-828c-b17e8119de1f.gif)
 
⑦ Memoした履歴のタイトルをクリックするとメモ内容が表示される仕組みとなっている。
　 タイトルにはわかりやすい記述がおすすめである
  ![memo-show](https://user-images.githubusercontent.com/71579504/99179456-4ce02100-2761-11eb-83c2-c18731e8ac72.gif)

# ✅ 課題解決
| ユーザーストーリーから考える課題                                                        | 課題解決                                         |
| ------------------------------------------------------------------------------- | ------------------------------------------------- |
| 自身文法があっているのかわからないという日常の課題                                          | コメント機能をつけ各自のアウトプットのため投稿へ助言ができるようにする |
| 単語の使い方が合っているのかわからないという課題                                            | 自分の苦手箇所や単語の使い方を復習できるよう個人のメモ機能をマイページとして使用できるようにする |
| 従来のSNSを利用しても目的の一致した人と関わりづらいという課題                                  | 語学を学ぶことに特化するSNSとすることで同じ目的の人同士が関わることができるようにする |
| 語学勉強のためのアプリケーションは他もあるが、有料のものが多い                                  | 同じ目的を持つ人たちによる勉強型SNSにすることで無料のアプリケーションとすることができる |
| アウトプットの仕方がわからないという課題                                                    | 日記は語学のアウトプットに良いとされているため、SNSの仕組みで気軽に投稿できるものとする |



# 各機能

 ## ユーザー管理機能                   
 
**ユーザー新規登録** 
>> 名前・email・パスワード・出身国・自己紹介文・プロフィール写真の登録
>> 名前・email・パスワード・出身国・プロフィール画像は必須
>> 自己紹介文は任意
>> emailは一意性
>> パスワードは確認用も用意する
**ユーザーログイン機能**
>> email とパスワード入力が必須 
**ユーザーログアウト機能**  

　
## 投稿一覧機能

**画像が表示されている**
**上から更新日時の新しい順で表示されること**
**画像・ユーザーネーム・出身国・投稿内容が表示される**
**ログアウト状態のユーザーは閲覧できない**
>> URLで遷移しようとしてもログイン画面へ移動する

## 投稿機能

**タイトル・内容・画像・撮影場所の記述**
>> タイトル・内容・画像・場所の記述は必須
**ログイン状態のユーザーだけが、投稿できる**
>> ログアウト状態のユーザーはログイン画面へ遷移する
**投稿完了後は一覧画面へ遷移する**

## 投稿詳細機能

**一覧画面から特定の投稿をクリックすると投稿詳細ページへ遷移する**
**投稿タイトル・画像・内容・ユーザーネームを表示**
**ログアウト状態のユーザーは閲覧できない**
>> URLで遷移しようとしてもログイン画面へ移動する


## 編集・削除機能

　(１)　投稿者本人のみ編集・削除ができる
　　　-　ログイン状態で投稿者本人以外は、編集・削除ボタンが表示されない
　　　-　ログイン状態で投稿者本人以外が編集URLを指定したら一覧ページへ遷移される
　　　-　ログアウト状態のユーザーがURLで編集ページを指定してもログイン画面へ遷移する
　　　-　投稿削除ができるのは投稿者本人のみ
　(２)　タイトル・内容・画像・撮影場所の記述が全てある時編集内容が更新される

## コメント機能

　(１)　詳細ページにコメント機能をつける
　(２)　コメント内容が入力されていない場合コメントできない
　(３)　投稿内容を見ながらコメントできるよう投稿内容とコメント機能が隣り合わせで表示させる
　(４)　コメントしたユーザーネームも同時に表示する
　(５)　非同期通信を利用する

## ユーザー詳細ページ機能

　(１)　投稿一覧ページからマイページへ遷移できる
　(２)　投稿詳細から投稿者のユーザー詳細ページへ遷移できる
　(３)　コメントしたユーザーネームからそのユーザー詳細ページへ遷移できる
　(４)　名前・出身国・自己紹介・プロフィール写真が表示される
　(５)　そのユーザーの投稿一覧が表示される

## マイページ編集機能

　(１)　ログイン中で本人のみユーザー情報の編集ができる
　(２)　ユーザー情報編集にemailとパスワードの記載は必要ないこと
　(３)　名前・自己紹介・プロフィール画像の変更が可能である

## いいね機能

(１)　投稿一覧・ユーザー詳細投稿一覧・投稿詳細からいいねを押すことができる
(２)　いいねを押したユーザーネームを表示
(３)　非同期通信を用いる

## メモ機能

(１)　投稿一覧ページからメモ詳細へ遷移できる
(２)　メモページでメモ詳細とメモが記入できる
(３)　メモ詳細はタイトルをクリックすると内容がアコーディオン形式で表示される
(４)　非同期通信を用いる




# 追加予定機能




# DB設計

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
