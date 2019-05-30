BASEDIR=$(dirname "$0")

FilePath="$BASEDIR"

cd $FilePath

#Search Files.deb
for entry in "$search_dir"$FilePath/*deb

do

#Files Names and Files path.deb
filename=$(basename "$entry")

#SHA256 Files.deb
outputSHA256=$(shasum -a 256 "$entry")
/Users/S3ud/Desktop/Test2/ipaToDeb.sh

#Files Name.deb
filename2=$(basename -- "$fullfile")
extension="${filename##*.}"
filename2="${filename%.*}"


#Size Files.deb
outputSize=$(stat -f%z "$entry")

echo -e "Filename: deb/""$filename2"".deb""\nSize: ""$outputSize""\n\n\n" >> packages.txt
#echo "$outputSHA256" >> packages.txt
#temo=-n "$entry" | openssl dgst -sha256
#echo -e "$temo" >> packages.txt
#echo -n "$entry" | openssl dgst -sha256 > packages.txt
#echo -n "$entry"  | shasum -a 256 > packages.txt

#mv $FilePath/packages.txt $FilePath/packages


done
open $FilePath/packages.txt
#echo "$output" > temo.txt

echo "Finesh"
#By:Saud AL Shaman
#Twitter:s3ud_alshaman










