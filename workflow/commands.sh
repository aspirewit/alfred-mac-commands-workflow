mac_commands=(
    close-all
    eject-all
    generate-password
)

if [ $1 ]; then
  mac_commands=( $( for command in ${mac_commands[@]} ; do echo $command ; done | grep $1 ) )
fi

cat<<EOB
<?xml version="1.0"?>
<items>
EOB

for command in "${mac_commands[@]}"; do
cat<<EOB
    <item arg="$command">
        <title>$command</title>
    </item>
EOB
done

cat<<EOB
</items>
EOB
