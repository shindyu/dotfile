# delete breakpoints

for i in `find ./ -name Breakpoints_v2.xcbkptlist`
do

    echo '<?xml version="1.0" encoding="UTF-8"?>
<Bucket
   type = "1"
   version = "2.0">
</Bucket>' > $i

done
