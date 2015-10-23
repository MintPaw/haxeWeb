if [ "$build" = "flash" ]; then
	echo "flash"
	alias b="rm bin/flash/bin/haxeWeb.swf; openfl build flash -debug -Dlegacy"
	alias r="google-chrome bin/flash/bin/test.html"
	alias bb="rm bin/flash/bin/haxeWeb.swf; openfl build flash -debug -Dlegacy; google-chrome bin/flash/bin/test.html"
elif [ "$build" = "cpp" ]; then
	echo "cpp"
	alias b="rm bin/linux64/cpp/bin/haxeWeb; openfl build linux -debug -Dlegacy"
	alias r="(cd bin/linux64/cpp/bin; ./haxeWeb)"
	alias bb="rm bin/linux64/cpp/bin/haxeWeb; openfl build linux -debug -Dlegacy; (cd bin/linux64/cpp/bin; ./haxeWeb)"
else
	echo "No build"
fi
