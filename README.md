# zetta-proto
Protocol buffer files for Zetta Table Store

# Dependencies

* Go
* Protoc >= 3.1.0
* gogo/protobuf
* This repo correctly placed in your `$GOPATH`.

# Usage

+ Write your own protocol file in proto folder.
+ Run `make` to generate go code.
    We generate all go codes in pkg folder.
+ Update the dependent projects.

# Multiple `protoc` Versions

If you need to override your version of `protoc` because you have a later version you can install the correct version like so:

```bash
PROTOC_VERSION=3.1.0
curl -L https://github.com/google/protobuf/releases/download/v$PROTOC_VERSION/protoc-$PROTOC_VERSION-linux-x86_64.zip -o protoc.zip &&\
unzip protoc.zip -d protoc &&\
rm protoc.zip
```

Then you can run `PATH="$(pwd)/protoc/bin:$PATH" make`

