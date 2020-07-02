require 'csv'
require "json"

module ShirenCsvParser
  class ParseJson
    attr_reader :file, :data

    def initialize
      @file = dummy_csv
      @data = []
    end

    def read
      CSV.read(file, headers: true)
    end

    def parse_json
      CSV.foreach(file, headers: true) do |row|
        item = build_struct(row)

        data << item.to_h
      end
    end

    private


      def build_struct(data)
        item = Struct.new(:id, :name, :item_type, :ask_price, :sell_price, :description, :comment, :attack_num, :diffence_num, :"テーブルマウンテン", :"掛軸裏の洞窟", :"食神のほこら", :"フェイの最終問題")

        tmp_data = []
        integer_target = ["id", "ask_price", "sell_price", "attack_num", "dirrence_num"]
        data.to_h.each do |k, v|
          tmp_data << (integer_target.include?(k) ? v&.to_i : v)
        end

        item.new(*tmp_data)
      end

      # TODO: google_spreadsheet で取得可能にしたい
      def dummy_csv
        File.open("spec/dummy_files/google_spreadsheet.csv")
      end
  end
end
