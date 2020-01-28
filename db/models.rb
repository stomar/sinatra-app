# frozen_string_literal: true

require_relative "connection"

unless DB && DB.tables.sort == [:items]
  warn "Required database tables missing. " \
       "You might need to run `rake db:setup'."
  exit 1
end

require_relative "../models/item"

model_classes = [Item]
model_classes.each(&:finalize_associations)
model_classes.each(&:freeze)
DB.freeze
