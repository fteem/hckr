require 'spec_helper'

describe Hckr::Scraper do
  before :each do
    Hckr::Document.should_receive(:open).and_return(File.open('./spec/fixtures/page.html').read)
    @links = Hckr::Scraper.new(page: :newest).scrape!
  end

  it 'scapes the links off the page' do
    expect(@links).to be_kind_of Array
    expect(@links.first).to be_kind_of Hash
  end

  it 'link has name and href' do
    expect(@links.first[:href]).to eq "http://www.newyorker.com/reporting/2014/07/21/140721fa_fact_mnookin"
    expect(@links.first[:name]).to eq "Thanks, HN: You helped discover a disease and save lives. Sincerely, @mattmight"
  end

end
