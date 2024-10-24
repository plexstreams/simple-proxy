FROM mcr.microsoft.com/dotnet/runtime:6.0-jammy-chiseled

WORKDIR /app

ARG TARGETARCH

COPY linux-${TARGETARCH}/. .

EXPOSE 5000

ENTRYPOINT ["./PlexManager.Proxy", "run", "--port", "5000", "--username", "$USERNAME", "--password", "$PASSWORD"]