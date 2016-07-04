if %w( test development ).include?(Rails.env)
  PolishGeeks::DevTools.setup do |config|
    config.brakeman = false
    config.haml_lint = false
    config.rubycritic = false
    config.final_blank_line_ignored = %W(
      db/test.sqlite3
      db/development.sqlite3
    )
  end
end
