FROM registry.access.redhat.com/ubi9/ubi-micro:latest as builder

VOLUME /app

ADD script.sh /app/

RUN ls -la /app
RUN /app/script.sh && ls -la /app
RUN ls -la /app

FROM registry.access.redhat.com/ubi9/ubi-micro:latest AS runner

COPY --from=builder /app/builder /app/runner

RUN ls -la /app