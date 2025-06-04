#!/bin/bash
set -e

# Descargar Zeppelin
if [ ! -d zeppelin-0.10.1-bin-all ]; then
  echo "Descargando Zeppelin..."
  curl https://dlcdn.apache.org/zeppelin/zeppelin-0.10.1/zeppelin-0.10.1-bin-all.tgz -o zp.tgz
  tar -xf zp.tgz
  rm zp.tgz
fi

# Descargar Spark 3.2.1
if [ ! -d spark-3.2.1-bin-hadoop3.2 ]; then
  echo "Descargando Spark..."
  curl https://archive.apache.org/dist/spark/spark-3.2.1/spark-3.2.1-bin-hadoop3.2.tgz -o spark.tgz
  tar -xf spark.tgz
  rm spark.tgz
fi

# Mostrar versiones
echo "Java version:"
java -version

echo "Scala version:"
scala -version

# Iniciar Zeppelin manualmente
echo "Para iniciar Zeppelin: cd zeppelin-0.10.1-bin-all/bin && ./zeppelin-daemon.sh start"
