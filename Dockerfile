FROM interlinearize-base

COPY ./* /


RUN pip install -r requirements.txt

RUN python -m nltk.downloader punkt_tab

RUN apt-get update
# RUN apt-get install libc6 libegl1 libopengl0 libxcb-cursor0 libxkbcommon-x11-0 libglx0 libnss3 libxcomposite-dev libxdamage1 libxrandr2-y
# RUN wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin
RUN apt install calibre -y

ENV PATH="$PATH:/opt/calibre"

CMD ["python", "interlinearize.py"]