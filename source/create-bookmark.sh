
addmark(){
    dir=$(pwd)
    cd ~/.bookmarks;
    ln -s  $dir $1;
    cd $dir;
}