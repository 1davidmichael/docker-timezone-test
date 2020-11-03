FROM mcr.microsoft.com/dotnet/core/sdk:3.1-bionic

RUN ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime
RUN apt-get update && apt-get install -y --no-install-recommends tzdata \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY run.sh /
ENTRYPOINT ["/run.sh"]