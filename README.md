```ruby
require "./lib/shiren_csv_parser"
file = ShirenCsvParser::ParseJson.new
file.parse_json


# CSV の構造体
item = Struct.new(:id, :name, :item_type, :ask_price, :sell_price, :description, :comment, :attack_num, :diffence_num, :"テーブルマウンテン", :"掛軸裏の洞窟", :"食神のほこら", :"フェイの最終問題")

# ハッシュの一例
{"id"=>"1",
  "name"=>"つるはし",
  "item_type"=>"sword",
  "ask_price"=>"240",
  "sell_price"=>"100",
  "description"=>"ダンジョンの壁を掘れる",
  "comment"=>nil,
  "attack_num"=>"1",
  "diffence_num"=>nil,
  "テーブルマウンテン"=>"○",
  "掛軸裏の洞窟"=>"○",
  "食神のほこら"=>nil,
  "フェイの最終問題"=>"○"}
```
- 参考URL
  - マスタデータ
    - [furai\_no\_shiren\_item\_list \- Google スプレッドシート](https://docs.google.com/spreadsheets/d/1yuHV-8qxswcdAM0frLXf1NnG6d6DaikK5PkJe1j1uDE/edit#gid=0)w
  - Gem 公開
    - [【Ruby】gemの作り方から公開まで \- Qiita](https://qiita.com/9sako6/items/72994b8b1c00af4e61fe)
    - [RubyGems 開発速習会 \- Qiita](https://qiita.com/dtan4/items/ea25b1c74346e330d5eb)
  - CSV 操作
    - [line\.split\(","\)](https://qiita.com/prgseek/items/38f74d99b74baa3b42f7)
  - Google spreadsheets 操作
    - [Files: get  \|  Google Drive API  \|  Google Developers](https://developers.google.com/drive/api/v3/reference/files/get?apix_params=%7B%22fileId%22%3A%221yuHV-8qxswcdAM0frLXf1NnG6d6DaikK5PkJe1j1uDE%22%2C%22acknowledgeAbuse%22%3Afalse%2C%22supportsAllDrives%22%3Afalse%2C%22supportsTeamDrives%22%3Afalse%2C%22alt%22%3A%22json%22%7D#try-it)
    - [Download files  \|  Google Drive API  \|  Google Developers](https://developers.google.com/drive/api/v3/manage-downloads#node.js)
    - [google spread sheetでcsvの export urlを出力する \- Qiita](https://qiita.com/reikubonaga/items/8a6322efd353e08d5243)
    - [Google Spreadsheetをマスターデータとして使い、curlでcsvとして取得する \- Qiita](https://qiita.com/wapa5pow/items/1553d551f94614a34697)

# 雛形を生成
```bash
# イメージ生成
$ docker build -t masayuki/shiren_module:latest \
               --build-arg RUBY_VERSION=2.7.1-alpine3.11 \
               --build-arg BUNDLER_VERSION=2 \
               --no-cache ./docker

# 雛形生成
$ docker run --rm -it -v $(pwd):/app masayuki/shiren_module:latest \
             bundle gem shiren_csv_parser -t -b ;
  cp -rf docker/ shiren_csv_parser
```

# Gem 開発準備
```bash
# コンテナ起動
$ cd #{GEM_NAME}
$ docker run -d -it --name shiren_csv_parser -v $(pwd):/app masayuki/shiren_module:latest
```

```bash
```


```bash
```

# ShirenCsvParser

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/shiren_csv_parser`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shiren_csv_parser'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install shiren_csv_parser

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/shiren_csv_parser. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/shiren_csv_parser/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ShirenCsvParser project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/shiren_csv_parser/blob/master/CODE_OF_CONDUCT.md).
