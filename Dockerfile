From nvcr.io/nvidia/deepstream:6.3-triton-multiarch

RUN apt update
RUN apt install sudo -y 

RUN pip3 install pybind11==2.12.0

ARG kit=AVT_DS63_Kit-0.0.1-cp38-cp38-linux_aarch64.whl
COPY ${kit} .
RUN pip install ${kit} 

ARG plugin=libnvdsgst_infer.so
COPY ${plugin} /opt/nvidia/deepstream/deepstream/lib/gst-plugins

COPY ./example /example

WORKDIR /example