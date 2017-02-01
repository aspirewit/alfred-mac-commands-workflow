mac_commands=(
    apps:close-all
    eject-all
)

cat<<EOB
<?xml version="1.0"?>
<items>
EOB

if [ -z $1 ]; then
  mac_commands=$mac_commands
else
  matched_commands=( $( for command in ${mac_commands[@]} ; do echo $command ; done | grep $1 ) )
fi

for command in "${matched_commands[@]}"; do
cat<<EOB
    <item arg="$command">
        <title>$command</title>
    </item>
EOB
done

cat<<EOB
</items>
EOB
