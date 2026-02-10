cask "flowwatch" do
  version "1.4.1"
  sha256 "09c1bbd16461551d92060f937b983a02a69640bb72e230d67079be995d7e0f12"

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
