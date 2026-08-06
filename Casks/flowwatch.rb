cask "flowwatch" do
  version "2.5.2"
  sha256 "df13e18b82a6bd3c3cec12dec683defc2bac7191ac5a81e84ccaa3024bbbfc7d"

  url "https://github.com/W1tFzQq08pTv/FlowWatch/releases/download/v#{version}/FlowWatch.dmg"
  name "FlowWatch"
  desc "Menu bar network speed monitor and traffic stats"
  homepage "https://github.com/W1tFzQq08pTv/FlowWatch"

  depends_on macos: :ventura

  app "FlowWatch.app"

  zap trash: [
    "~/Library/Application Support/FlowWatch",
    "~/Library/Containers/com.hxd.FlowWatch",
    "~/Library/Preferences/com.hxd.FlowWatch.plist",
  ]
end
