# Використання базового образу Ubuntu
FROM ubuntu:latest

# Оновлення пакетів та встановлення Apache2
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Відкриття порту 80
EXPOSE 80

# Вказання команди для запуску Apache2
CMD ["apachectl", "-D", "FOREGROUND"]
