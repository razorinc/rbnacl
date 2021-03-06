require "rake/clean"

file "lib/libsodium.so" => "libsodium/src/libsodium/.libs/libsodium.so" do
  cp "libsodium/src/libsodium/.libs/libsodium.so", "lib/libsodium.so"
end

task "ci:sodium" => "lib/libsodium.so"

task :ci => %w(ci:sodium spec)

CLEAN.add "lib/libsodium.*"