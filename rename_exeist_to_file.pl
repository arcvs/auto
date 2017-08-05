#!perl

opendir D,'c:' or die "Not can open dir";

while ($file = readdir D)
{
    if(-f $file){
        $old = $file;
        $file =~s/(.*\.)jade/$1pug/};
        rename $old, $file;
}

close D;
