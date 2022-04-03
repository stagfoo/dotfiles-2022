# TODO 
# make replace list of words to replace with placeholders empties


# Declare an array of string with type
PLACEHOLDER=▓▓▓▓
declare -a words=(
    "coolguy@email.com"
)
 
# Iterate the string array using for loop
for val in ${words[@]}; do
   sed -i '' -e "s/$val/$PLACEHOLDER/" $1
done
echo -e ${Yellow};
echo "( -3-)ﾉ secrets redacted"