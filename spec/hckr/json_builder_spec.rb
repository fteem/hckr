require 'spec_helper'

describe Hckr::JsonBuilder do
  it 'builds JSON out of scraping results' do
    Hckr::Document.should_receive(:open).and_return(File.open('./spec/fixtures/page.html').read)
    expect(described_class.new(page: :newest).build!).to be_kind_of(String)
  end
end
