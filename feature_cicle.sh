# vamos para a branch de desenvolvimento e nos certificamos que esta atualizada
git checkout develop && git pull

# abrimos nossa branch de trabalho
git checkout -b feature/$feature_name

# fluxo normal de desenvolvimento
git add .
git commit

# fazemos rebase para verificar e resolver os conflitos
# -i abilita o modo interativo para analise individual de cada commit em ordem cronologica
# --autosquash agrupa os commits para termos um historico mais limpo e claro das features
git rebase -i --autosquash origin/develop

# enviamos a branch para a fonte remota
git push -u origin feature/$feature_name