FROM elixir:alpine

ADD . /mix_proj

ENV MIX_EXS /mix_proj/mix.exs
ENV MIX_HOME /.mix

RUN apk --no-cache add git && \
    cd /mix_proj && \
    mix local.hex --force && \
    mix deps.get && \
    mix deps.compile && \
    mix run -e "IO.puts(:ok)"

WORKDIR /workdir

VOLUME ["/workdir"]

ENTRYPOINT ["mix", "run"]
