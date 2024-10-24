FROM mcr.microsoft.com/dotnet/runtime:6.0

WORKDIR /app

ARG TARGETARCH

COPY linux-${TARGETARCH}/. .
COPY entrypoint.sh .

EXPOSE 5000

ENTRYPOINT ["./entrypoint.sh"]