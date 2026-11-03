require 'bibtex'

module Jekyll
  module RawBibtexAbstract
    def raw_bibtex_abstract(input)
      BibTeX.parse(input, strip: false).first[:abstract].to_s
    end
  end
end

Liquid::Template.register_filter(Jekyll::RawBibtexAbstract)
