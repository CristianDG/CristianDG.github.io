
Já que minha memória não é muito boa, decidi escrever algumas notas pra não esquecer

- vazar memória não é um problema se é um valor fixo ou pequeno
    - o sistema operacional vai liberar a memória do processo após o termino
- sobrescrever memória é mais performante que limpa-la após o uso
- prefira `build.sh` no lugar de `Makefile`
    - principalmente para projetos pequenos
- criar stubs para funções que são criadas dinamicamente
- na criação de bibliotecas / APIs é bom
    - Definir poucas funções / funções coincisas
        - Exemplo: XInput.h
    - Definir structs somente quando os valores nela são dependentes entre si*
        - A não ser que a linguagem não suporte `multiple return values`
    - Ter poucos pontos de falha
        - Exemplo: DirectSound necessita que a cada função seja usada a macro SUCCEEDED para saber se não deu erro,
        assim aumentando a chance de não checar uma chamada


