cask "flowwatch" do
  version "2.5.1"
  sha256 "14ffd41b692cf63fabbebf423787a83cb7721a5a6d1dc048ac77dae551bbb7d8"

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
