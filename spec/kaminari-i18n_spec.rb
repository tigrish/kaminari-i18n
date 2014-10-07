require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

Dir.glob('config/locales/*.yml').each do |locale_file|
  describe locale_file do
    it_behaves_like 'a valid locale file', locale_file
    it { is_expected.to be_a_subset_of 'config/locales/en.yml' }
  end
end
