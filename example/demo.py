import DS_Kit

tensors=DS_Kit.debug_infer(
    '1_Handshaking_Handshaking_1_105.jpg',
    "/opt/nvidia/deepstream/deepstream/sources/apps/sample_apps/deepstream-test1/dstest1_pgie_config.txt"
)

# Where each key and value corresponds to the name and tensor array of model's input/output tensors.
print(tensors)