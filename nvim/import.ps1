if (test-path ~/AppData/Local/nvim/*){ rmdir -force ~/AppData/Local/nvim }
cp  nvim/* ~/appdata/local/nvim/  -recurse -force
