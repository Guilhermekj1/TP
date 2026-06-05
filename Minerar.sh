#!/data/data/com.termux/files/usr/bin/bash

pkg update -y
pkg install -y git clang cmake make libuv openssl

cd $HOME || exit 1

if [ ! -d xmrig ]; then
git clone https://github.com/xmrig/xmrig.git
fi

cd xmrig || exit 1

mkdir -p build
cd build || exit 1

cmake .. -DWITH_HWLOC=OFF

make -j$(nproc)

./xmrig -o gulf.moneroocean.stream:10128 -u 48qupBCJdCb4Nx2WtmyxcYWYT1vUB3dj8h2cP6m9rKafgtJqnvzEPSQ7DiL8Kx4Vh6etcBTqZ2RmieBrgjpMeFmP6QoM5uG -p serafim -a rx/0
