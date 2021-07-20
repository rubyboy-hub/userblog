# frozen_string_literal: true

require 'autoinc'

class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Autoinc
  field :firstName, type: String
  field :lastName, type: String
  field :email, type: String
  increments :id
end
