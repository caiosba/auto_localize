require 'bing_translator'

desc "Machine-translates an application, by generating a config/locales/<target-language>.yml file from a config/locales/<source-language>.yml using Bing to translate strings from the source file automatically"
task auto_localize: [:environment] do
  translator = BingTranslator.new(ENV['BING_ID'], ENV['BING_SECRET'])
  source = ENV['SOURCE_LANGUAGE'] || 'en'

  ENV['TARGET_LANGUAGES'].split(',').each do |lang|
    path = File.join(Rails.root, 'config', 'locales', "#{lang}.yml")

    strings = File.exists?(path) ? YAML.load_file(path)[lang].keys : []

    output = File.open(path, 'a+')

    output.puts("#{lang}:") if strings.empty?

    base = YAML.load_file("#{Rails.root}/config/locales/#{source}.yml")[source]

    base.each do |key, value|
      next if strings.include?(key) && !ENV['FORCE']
      puts "Translating #{value} to #{lang}..."
      translated = translator.translate(value, from: source, to: lang) 
      output.puts("  #{key}: \"#{translated}\"")
    end

    output.close
  end
end
