##
# Validates if the given string has the correct rut/run syntax
# and if the rut/run has the correct digit.

class RutValidator < ActiveModel::EachValidator
  ##
  # @param value [String] the string to be validated
  def validate_each(record, attribute, value)
    unless value.rut_valid?
      record.errors.add(attribute,  options[:message] ||  "is not a valid rut")
    end
  end
end