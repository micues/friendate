# encoding: UTF-8

# Configuration with internationalization (i18n)
Time::DATE_FORMATS[:default] = lambda { |time| I18n.l(time) }
Date::DATE_FORMATS[:default] = lambda { |date| I18n.l(date) }

# Configuration without internationalization (i18n)
# DATE_AT_FORMAT = "%d/%m/%Y %H:%M"
# DATE_ON_FORMAT = "%d/%m/%Y"

# Time::DATE_FORMATS.merge!(
# :standard => DATE_AT_FORMAT,
# :default => DATE_AT_FORMAT,
# :standard_time => DATE_AT_FORMAT
# )

# Date::DATE_FORMATS.merge!(
# :standard => DATE_ON_FORMAT,
# :default => DATE_ON_FORMAT,
# :standard_time => DATE_ON_FORMAT
# )

#Help to validate dates on models
DATE_AT_FORMAT_EXPLANATION = "DD/MM/AAAA HH:MM"
DATE_ON_FORMAT_EXPLANATION = "DD/MM/AAAA"
