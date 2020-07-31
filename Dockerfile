FROM johannesflake/oscar

RUN julia -e 'using Pkg; pkg" add https://gitlab.com/johannesflake/polybases.jl.git; precompile "'

RUN mkdir -p ~/.julia/config
RUN echo 'println("using PolyBases\nWelcome!")' > ~/.julia/config/startup.jl

CMD julia