cask "flowwatch" do
  version "2.7.1"
  sha256 "454fbf5beb33a77b25ef80c4cc30ac9752b8b304f7e912ef3e78a879c60b03cf"

  url "https://github.com/W1tFzQq08pTv/FlowWatch/releases/download/v#{version}/FlowWatch.dmg"
  name "FlowWatch"
  desc "Menu bar network speed monitor and traffic stats"
  homepage "https://github.com/W1tFzQq08pTv/FlowWatch"
  auto_updates true

  depends_on macos: :ventura

  app "FlowWatch.app"

  zap trash: [
    "~/Library/Application Support/FlowWatch",
    "~/Library/Containers/com.hxd.FlowWatch",
    "~/Library/Preferences/com.hxd.FlowWatch.plist",
  ]
end
