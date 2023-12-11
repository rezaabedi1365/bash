#https://stackoverflow.com/questions/16661982/check-folder-size-in-bash

//du -cs dir_name/*       show directory size with subdirectory
// du -s dir_name         show only directory size without subdirectory
//du -hs dir_name         show only directory size without subdirectory in human readable mode
//du | sort -n



##show direcroty size between 10 and 20 GB
#!/bin/bash
SIZE=$(du -B 1 /path/to/directory | cut -f 1 -d "   ")    
# 2GB = 2147483648 bytes
# 10GB = 10737418240 bytes
if [[ $SIZE -gt 2147483648 && $SIZE -lt 10737418240 ]]; then
    echo 'Condition returned True'
fi
