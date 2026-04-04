# C/C++ Compilers
export CC=clang
export CXX=clang++

# Vulkan SDK
export VULKAN_SDK=~/.vulkan/1.4.321.1/macOS
export PATH=$VULKAN_SDK/bin:$PATH
export LD_LIBRARY_PATH=$VULKAN_SDK/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
export VK_LAYER_PATH=$VULKAN_SDK/share/vulkan/explicit_layer.d

# Go
export PATH="$PATH:/usr/local/go/bin"
export GOPATH=~/.go
export GOBIN=~/.go/bin
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"

# dotnet
export PATH="$PATH:/home/nicholasc/.dotnet/tools"

# Cargo
. "$HOME/.cargo/env"
