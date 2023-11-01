class Sypm {
    public static function unpack(tar:String) {}

    public static function genflist(dir:String) {
        var flist = [];

        var contents = FileSystem.readDirectory(dir);
        for (item in contents) {
            if (FileSystem.isDirectory(item)) {
                flist = flist.concat(genflist(dir + "/" + item));
            } else {
                flist.push(dir + "/" + item);
            }
        }

        return flist;
    }

    public static function install(srcdir:String, destdir:String, flist:Array<String>) {}

    public static function remove(dir:String, flist:Array<String>) {}
}
