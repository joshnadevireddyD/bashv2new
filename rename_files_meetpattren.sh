for file in .* *; do
if [[ "$file"=="grimm*" ]]
  then
    old="grimm.3"
    new="Grimm.S03E"
    newname=${file/grimm.3/Grimm.S03E}
    mv "$file" ./$newname
fi
done
