# MSYS_NO_PATHCONV=1 podman run -v "C:/Users/notew/Downloads/":/mnt interlinearize python interlinearize.py \
# "es" "en" "/mnt/pg2000-images-3.epub" "/mnt/pg2000-images-3-en.epub"

# $1 = language input code
source=`find './target/in' -name "*.epub" -printf "%f\n"`
echo $source
MSYS_NO_PATHCONV=1 podman run -v `pwd`:/mnt interlinearize python interlinearize.py \
    $1 $2 "/mnt/target/in/$source" "/mnt/target/out/out-$2.epub"