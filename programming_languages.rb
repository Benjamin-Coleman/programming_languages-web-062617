def reformat_languages(languages)
  reformatted_hash = {}
  languages.each do |family, language|
    language.each do |type, data|
      if reformatted_hash[type]
        reformatted_hash[type][:style].push(family)
      else
        reformatted_hash[type] = data
        reformatted_hash[type][:style] = [family]
      end
    end
  end
  reformatted_hash
end
