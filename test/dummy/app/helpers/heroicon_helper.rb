# frozen_string_literal: true

module HeroiconHelper
  include Heroicon::Engine.helpers

  def names_for_variant(variant)
    gem_path = Gem.loaded_specs['heroicon'].full_gem_path
    variant_path = "#{gem_path}/app/assets/images/heroicon/#{variant}/"
    Dir["#{variant_path}/*.svg"].map do |path|
      File.basename(path, '.svg')
    end
  end
end
