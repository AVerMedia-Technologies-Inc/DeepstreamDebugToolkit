# DeepStream Debug Toolkit

## Table of contents

- [DeepStream Debug Toolkit](#deepstream-debug-toolkit)
  - [Table of contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Requirement](#requirement)
  - [Quick Start](#quick-start)
  - [Notification](#notification)
  - [Future Works](#future-works)

## Introduction
DeepStream Debug Toolkit can help developers to send a single image file to the deepstream pipeline and get input and output tensors from AI models with only needs python code.

The tool is suitable for developers who want to make sure the numerical correctness as expected values for a AI model running on deepstream pipeline before deploy the model into a large application.

This convenient debug tool is created by [**AVerMedia**](https://www.avermedia.com/professional/).


## Requirement
  - [**AVerMedia** Box PC](https://www.avermedia.com/professional/products?category=Box-PC)
  - [Docker image : **DeepStream 6.3**](https://catalog.ngc.nvidia.com/orgs/nvidia/containers/deepstream)

## Quick Start

Clone the tool repository.
```
git clone https://github.com/JasonWuAverMedia/AVT_DS_KIT.git
```

Build the docker image for the toolkit on [**AVerMedia** Box PC](https://www.avermedia.com/professional/products?category=Box-PC).
```
cd AVT_DS_KIT
docker build -t AVT_DS_KIT .
```

Start up a container for AVT_DS_KIT

```
docker run -it --runtime=nvidia --ipc=host --privileged -v /usr/sbin:/usr/sbin AVT_DS_KIT
```

Run the [demo.py](./example/demo.py).
```
python3 demo.py
```

## Notification
- The tool can only run on [**AVerMedia** Box PC](https://www.avermedia.com/professional/products?category=Box-PC).
- The tool can not get correct tensor arrays without mapping **/usr/sbin** to docker container.


## Future Works
- The tool support PGIE only, not yet for SGIE. We are working on support both PGIE and SGIE.
