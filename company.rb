# frozen_string_literal: true

#
# An example of loading a YAML file

require 'yaml'
require 'json'

# Company class
class Company
  attr_accessor :name, :ceo, :stock_isin, :ceo_annual_sold_shares, :ceo_shares,
                :ceo_annual_bonus, :ceo_annual_salary

  def import(file_path)
    return unless File.exist?(file_path)

    file_data = get_file_data(file_path)
    @name = file_data['name']
    @ceo = file_data['ceo']
    @stock_isin = file_data['stock_isin']
    @ceo_annual_sold_shares = file_data['ceo_annual_sold_shares']
    @ceo_shares = file_data['ceo_shares']
    @ceo_annual_bonus = file_data['ceo_annual_bonus']
    @ceo_annual_salary = file_data['ceo_annual_salary']
  end

  private

  def get_file_data(file_path)
    case File.extname(file_path)
    when '.yml'
      YAML.load_file(file_path)
    when '.json'
      JSON.load_file(file_path)
    end
  end
end
