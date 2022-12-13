require 'extensions' unless defined?(SketchupExtension)

module ASM_Extensions
  module RandomColors

    # Constants
    PLUGIN_NAME = 'Random Colors'.freeze
    PLUGIN_VERSION = '1.0.1'.freeze
    PLUGIN_DESCRIPTION = 'Apply random colors to the selected faces, groups or components.'.freeze
    PLUGIN_AUTHOR = 'Alejandro Soriano'.freeze
    PLUGIN_ID = File.basename(__FILE__, '.rb')

    # Paths
    PATH_ROOT = File.dirname(__FILE__)
    FILE_DATA = File.join(PATH_ROOT, PLUGIN_ID, PLUGIN_ID+"_data.rb")
    FILE_MAIN = File.join(PATH_ROOT, PLUGIN_ID, PLUGIN_ID+"_main.rb")

    # Create a new instance of the SketchupExtension class
    EXT_DATA = SketchupExtension.new(PLUGIN_NAME, FILE_MAIN)

    # Attach some nice info
    EXT_DATA.creator = PLUGIN_AUTHOR
    EXT_DATA.version = PLUGIN_VERSION
    EXT_DATA.copyright = "2022-#{Time.now.year}, #{PLUGIN_AUTHOR}"
    EXT_DATA.description = PLUGIN_DESCRIPTION

    # Register and load the extension on first install
    Sketchup.register_extension(EXT_DATA, true)

  end # module RandomColors
end # module ASM_Extensions
