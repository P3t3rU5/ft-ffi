require_relative 'lib/ft/version'

Gem::Specification.new do |s|
  s.name          = 'ft-ffi-ffi'
  s.version       = FT::VERSION
  s.summary       = 'FFI wrapper for FreeType API'
  s.description   = 'FFI wrapper for FreeType API.'
  s.license       = 'MIT'
  s.authors       = %w'P3t3rU5 SilverPhoenix99'
  s.email         = %w'pedro.megastore@gmail.com silver.phoenix99@gmail.com'
  s.homepage      = 'https://github.com/P3t3rU5/ft-ffi-fii'
  s.require_paths = %w'lib'
  s.files         = Dir['{lib/**/*.rb,*.md}']
  s.add_dependency 'ffi-additions'
  s.post_install_message = <<-eos
+----------------------------------------------------------------------------+
  Thanks for choosing FreeTypeFFI.

  ==========================================================================
  #{FT::VERSION} Changes:
    - First Version

  ==========================================================================

  If you find any bugs, please report them on
    https://github.com/P3t3rU5/win-ffi/issues

+----------------------------------------------------------------------------+
  eos
end