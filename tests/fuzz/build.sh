mkdir -p build && cd build
cmake .. -DCROW_BUILD_FUZZER=ON -DCROW_BUILD_EXAMPLES=OFF -DCROW_BUILD_TESTS=OFF -DCMAKE_BUILD_TYPE=
cmake --build . --target install
make -j4
cd ../tests/fuzz
zip -q $OUT/template_fuzzer_seed_corpus.zip template_corpus/*
zip -q $OUT/request_fuzzer_seed_corpus.zip html_corpus/*

