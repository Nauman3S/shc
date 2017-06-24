cd ~
mkdir -p develop
apt-get install cmake libx11-dev libx11-xcb-dev libflac-dev libogg-dev libvorbis-dev libopenal-dev libjpeg62-turbo-dev libfreetype6-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-icccm4-dev libudev-dev libavutil-dev libavcodec-dev libavformat-dev libavfilter-dev libswscale-dev libavresample-dev libfontconfig1-dev libxrandr2 libxrandr-dev
cd ~/develop
git clone -b rpi https://github.com/mickelson/SFML sfml-pi
mkdir sfml-pi/build;cd sfml-pi/build
cmake -DEGL_INCLUDE_DIR=/opt/vc/include -DEGL_LIBRARY=/opt/vc/lib/libEGL.so -DFREETYPE_INCLUDE_DIR_freetype2=/usr/include -DFREETYPE_INCLUDE_DIR_ft2build=/usr/include/freetype2 -DGLES_INCLUDE_DIR=/opt/vc/include -DGLES_LIBRARY=/opt/vc/lib/libGLESv1_CM.so -DSFML_BCMHOST=1 -DSFML_OPENGL_ES=1 ..
make install
ldconfig
cd ~/develop
git clone --depth 1 https://github.com/mickelson/attract attract
cd attract
make USE_GLES=1
make install
