cask "proxifier230" do
  version "2.30"
  sha256 "3881c5c5c236b39e8b3e1972898481301f9c9739e41bf5f1c79ecf1414ab70a4"

  url "https://www.proxifier.com/download/legacy/ProxifierMac230.zip"
  appcast "https://www.proxifier.com/changelog/mac.html",
          must_contain: version.major_minor
  name "Proxifier"
  homepage "https://www.proxifier.com/mac/"

  app "Proxifier.app"

  zap trash: [
    "~/Library/Application Support/Proxifier",
    "~/Library/Caches/com.initex.proxifier.macosx",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Proxifier Help*",
    "~/Library/Logs/Proxifier",
    "~/Library/Preferences/com.initex.proxifier.macosx.plist",
    "~/Library/Saved Application State/com.initex.proxifier.macosx.savedState",
  ]
end
