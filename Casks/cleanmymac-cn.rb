cask 'cleanmymac-cn' do
  version 'latest'
  sha256 :no_check

  # devmate.com/com.macpaw.CleanMyMac was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.macpaw.zh.CleanMyMac3/CleanMyMacChinese.dmg'
  name 'CleanMyMacChinese'
  homepage 'https://macpaw.com/cleanmymac'

  app "CleanMyMac 3.app"

  uninstall delete:     [
                          "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent",
                          "/private/var/run/com.macpaw.CleanMyMac#{version.major}.Agent.socket",
                        ],
            launchctl:  [
                          "com.macpaw.CleanMyMac#{version.major}.Agent",
                          "com.macpaw.CleanMyMac#{version.major}.Scheduler",
                        ],
            login_item: "CleanMyMac #{version.major} Menu",
            quit:       [
                          "com.macpaw.CleanMyMac#{version.major}",
                          "com.macpaw.CleanMyMac#{version.major}.Menu",
                        ]

  zap trash: [
               "/Users/Shared/CleanMyMac #{version.major}",
               "/Users/Shared/CleanMyMac #{version.major} Menu",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.sfl*",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.scheduler.sfl*",
               "~/Library/Application Support/CleanMyMac #{version.major}",
               "~/Library/Application Support/CleanMyMac #{version.major} Menu",
               "~/Library/Caches/CleanMyMac #{version.major}",
               "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.macpaw.CleanMyMac#{version.major}.help*",
               "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}",
               "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase",
               "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Menu",
               "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Scheduler",
               "~/Library/Logs/CleanMyMac #{version.major}.log",
               "~/Library/Logs/com.macpaw.CleanMyMac#{version.major}",
               "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.major}-Helper.plist",
               "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase.plist",
               "~/Library/Preferences/com.macpaw.cleanmymac#{version.major}.menu.plist",
               "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.Scheduler.plist",
               "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.plist",
               "~/Pictures/Photos Library.photoslibrary/private/com.macpaw.CleanMyMac#{version.major}",
             ]
end
