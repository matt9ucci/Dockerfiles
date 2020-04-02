pushd $PSScriptRoot

docker image build --tag rust:dev --no-cache .

popd
