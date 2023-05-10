
FROM registry.access.redhat.com/ubi9/ubi:latest AS builder

RUN mkdir /app && touch /app/builder

RUN ls -laR /app

FROM registry.access.redhat.com/ubi9/ubi-micro:latest AS runner

RUN mkdir  /app

COPY --from builder /app/builder /app/runner

RUN ls -laR /app






