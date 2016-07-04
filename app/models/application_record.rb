# Single point of entry for all the customizations and extensions needed for an application
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
