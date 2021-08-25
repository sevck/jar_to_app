#!/bin/bash
JAVA_HOME=/`/usr/libexec/java_home -v 1.8`
# appclass com.h3110w0r1d.burploaderkeygencn.KeygenForm
javapackager \
  -deploy \
  -Bruntime=/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home \
  -BjvmOptions="-javaagent:BurpLoaderKeygen.jar -noverify" \
  -native image \
  -srcdir . \
  -srcfiles burpsuite_pro.jar \
  -srcfiles lib/ \
  -outdir release \
  -outfile brup.app \
  -name "brup" \
  -title "brup" \
  -appclass burp.StartBurp \
  -nosign \
  -v
