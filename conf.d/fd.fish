if not type fd >/dev/null 2>&1
	if not type fdfind >/dev/null 2>&1
		exit
	end
end

abbr -a --set-cursor find "fd %"
abbr -a --set-cursor fd "fd %"
abbr -a --set-cursor fda "fd --hidden --no-ignore %"
abbr -a --set-cursor fdr "fd --hidden --no-ignore % /"

# NOTE: find all files with image file suffix
abbr -a --set-cursor fdi "fd -e jpg -e jpeg -e jpe -e jif -e jfif -e jfi -e png -e gif -e webp -e tif -e tiff -e psd -e raw -e arw -e cr2 -e nrw -e k25 -e bmp -e dib -e heif -e heic -e svg -e svgz -e jp2 -e j2k -e jpf -e jpx -e jpm -e mj2 -e ind -e indd -e indt -e heif -e heic %"

# NOTE: find all files with video file suffix
abbr -a --set-cursor fdv "fd -e webm -e mkv -e flv -e flv -e vob -e ogv -e ogg -e drc -e gif -e gifv -e mng -e avi -e MTS -e M2TS -e TS -e mov -e qt -e wmv -e yuv -e rm -e rmvb -e viv -e asf -e amv -e mp4 -e m4p -e m4v -e mpg -e mp2 -e mpeg -e mpe -e mpv -e mpg -e mpeg -e m2v -e m4v -e svi -e 3gp -e 3g2 -e mxf -e roq -e nsv -e flv -e f4v -e f4p -e f4a -e f4b %"
