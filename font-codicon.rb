cask "font-codicons" do
  name "VS Code Codicons Font"
  homepage "https://github.com/microsoft/vscode-codicons"
  version "0.0.31"

  url "https://github.com/microsoft/vscode-codicons/archive/refs/tags/#{version}.zip"
  sha256 "157dbef05bd3ef2c0b8cab4abeddea1eef43cde412881b6046ac00193446c988"
  # to get new sha256, do `wget --no-verbose -O - https://... | shasum -a 256`

  font "dist/codicon.ttf"

#   test do
#     # bash
#     FONTS=$(osascript << SCPT
#       use framework "AppKit"
#       set fontFamilyNames to (current application's NSFontManager's sharedFontManager's availableFontFamilies) as list
#       return fontFamilyNames
# SCPT
#     )
#     echo $FONTS | sed 's/, /\n/g' | grep -q '^codicon$'
#   end
end
