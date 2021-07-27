# frozen_string_literal: true
#
# An example of loading a YAML file

require 'yaml'

# Company class
class Company
  attr_accessor :name, :ceo, :stock_isin, :ceo_annual_sold_shares, :ceo_shares,
                :ceo_annual_bonus, :ceo_annual_salary

  def import(file_path)
    return unless File.exist?(file_path)

    File.exist?(file_path)
    yaml_data = YAML.load_file(file_path)
    @name = yaml_data['name']
    @ceo = yaml_data['ceo']
    @stock_isin = yaml_data['stock_isin']
    @ceo_annual_sold_shares = yaml_data['ceo_annual_sold_shares']
    @ceo_shares = yaml_data['ceo_shares']
    @ceo_annual_bonus = yaml_data['ceo_annual_bonus']
    @ceo_annual_salary = yaml_data['ceo_annual_salary']
  end
end
