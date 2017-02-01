mac_commands=(
    apps:close-all
)

cat<<EOB
<?xml version="1.0"?>
<items>
EOB

matched_commands=( $( for i in ${mac_commands[@]} ; do echo $i ; done | grep $1 ) )

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
