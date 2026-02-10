cask "flowwatch" do
  version "1.4.3"
  sha256 "ee450cf28a1abdaa6e5fc070a90cdb26723c19c36840d00b97d6d2b16c5b69f1"

  url "https://github.com/huangxida/FlowWatch/releases/download/v#{version}/FlowWatch.dmg"
  name "FlowWatch"
  desc "Menu bar network speed monitor and traffic stats"
  homepage "https://github.com/huangxida/FlowWatch"

  depends_on macos: ">= :ventura"

  app "FlowWatch.app"

  zap trash: [
    "~/Library/Application Support/FlowWatch",
    "~/Library/Containers/com.hxd.FlowWatch",
    "~/Library/Preferences/com.hxd.FlowWatch.plist",
  ]
end
