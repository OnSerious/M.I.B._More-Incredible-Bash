#!/bin/sh

# esd showimage_test.sh v0.1.0 (2023-02-19 by MIB-Wiki)

trap '' 2

export PATH=.:/proc/boot:/bin:/usr/bin:/usr/sbin:/sbin:/mnt/app/media/gracenote/bin:/mnt/app/armle/bin:/mnt/app/armle/sbin:/mnt/app/armle/usr/bin:/mnt/app/armle/usr/sbin
export LD_LIBRARY_PATH=/lib:/mnt/app/root/lib-target:/eso/lib:/mnt/app/usr/lib:/mnt/app/armle/lib:/mnt/app/armle/lib/dll:/mnt/app/armle/usr/lib
unset LD_PRELOAD

export GEM=1
echo -ne "M.I.B. - More Incredible Bash "
cat /net/mmx/fs/sda0/VERSION
echo "NOT FOR COMMERCIAL USE - IF YOU BOUGHT THIS YOU GOT RIPPED OFF"
echo ""
echo "NOTE: NEVER interrupt the process with -Back- button or removing SD Card!!!"
echo "CAUTION: Ensure that a external power is connected to the car on during any"
echo "flash or programming process! Power failure during flasing/programming will"
echo "brick your unit! - All you do and use at your own risk!"
echo ""

/net/mmx/fs/sda0/apps/showimage -load 5 /net/mmx/fs/sda0/mod/images/showimage/640x480.png
/net/mmx/fs/sda0/apps/showimage -load 5 /net/mmx/fs/sda0/mod/images/showimage/800x600.png
/net/mmx/fs/sda0/apps/showimage -load 5 /net/mmx/fs/sda0/mod/images/showimage/1280x640.png
sleep 3

echo ""
echo "All done! now you can go back..."

trap 2

exit 0

