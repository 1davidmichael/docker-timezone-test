FROM mcr.microsoft.com/dotnet/core/sdk:3.1-bionic

RUN ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime
RUN apt update && apt install -y --no-install-recommends tzdata

COPY run.sh /
ENTRYPOINT ["/run.sh"]