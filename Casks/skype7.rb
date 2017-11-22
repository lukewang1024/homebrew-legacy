cask 'skype7' do
  version '7.59.37'
  sha256 '5d5d6811dcb0727c478d198cb24b99317dd10db0e55d81601d77285434f8cf1d'

  url "https://download.skype.com/macosx/bf9ccdd6b5b079049ff5a87419033ce3/Skype_#{version}.dmg"
  name 'Skype'
  homepage 'https://www.skype.com/en/get-skype/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'

  zap trash: [
               '~/Library/Application Support/Skype',
               '~/Library/Application Support/Skype Helper',
               '~/Library/Caches/com.skype.skype',
               '~/Library/Caches/com.skype.skype.ShipIt',
               '~/Library/Preferences/com.skype.skype.plist',
               '~/Library/Preferences/com.skype.skype.Helper.plist',
               '~/Library/Saved Application State/com.skype.skype.savedState',
             ]
end
