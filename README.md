# ebook-convert

Container for converting eBooks with the help of [Calibre](https://calibre-ebook.com/).

1. Install [Docker](https://www.docker.com/).

2. Read the docs:

    ```bash
    docker run --rm -it bwstitt/ebook-convert
    ```

2. Convert a .epub to a .mobi and save it to the same directory:

    ```bash
    cd /path/to/some/directory/with/ebooks/in/the/wrong/format

    export BOOK_NAME=name of your book
    docker run --rm -it -v "$(pwd):/target" -u "$(id -u $USER)" bwstitt/ebook-convert "$BOOK_NAME.epub" "$BOOK_NAME.mobi"
    ```

You don't have to export variables, but I find it easier to read.

The `docker run` command will log about saving the book to `/target/` which is `$EBOOK_DIR` on your computer.


# Updating

```bash
docker pull bwstitt/ebook-convert
```


# Todo

* use alpine linux to keep the image smaller
