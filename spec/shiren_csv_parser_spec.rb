require "spec_helper"

module ShirenCsvParser
  describe GoogleSpreadsheet do
    let(:file_id) { "dummy" }
    let(:response_csv) { File.read(File.open("spec/dummy_files/google_spreadsheet.csv")) }

    describe "#get" do
      subject { GoogleSpreadsheet.new(file_id).get }

      before do
        stub_request(:get, "https://www.googleapis.com/drive/v3/files/#{file_id}").
          with(headers: { "Authorization" => "token #{github_token}" }).
          to_return(body: response_csv)
      end

      it "should return CSV" do
        expect(subject).to include "text/csv"
      end
    end
  end
end