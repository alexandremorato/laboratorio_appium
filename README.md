# Pequenos experimentos com framework Appium

O intuito desse projeto é ajudar quem está começando com a automação mobile e realizar alguns experimentos no framework.

## Configuração do ambiente

- Instalação do node - brew install node

- Instalação do appium - npm install -g appium

- Instalação do client appium - npm install wd

- Instalação do doctor appium - npm install appium-doctor -g

- Instalar e configurar Android SDK - Android Studio

- Após baixado configurar o seu bash_profile

export ANDROID_HOME="/Users/alexandre.oliveira/Library/Android/sdk/"

export PATH=“${PATH}:/$ANDROID_HOME/platform-tools:/$ANDROID_HOME/tools:/$ANDROID_HOME/tools/bin”

- Instalar um emulador da plataforma android - Genymotion

- Instalar appium-desktop - appium_desktop

- Após instalação rodar appium-doctor --android, será apresentado um diagnóstico do seu ambiente, tudo tem que está verde para os itens acima.


## Executar os cenários de teste

Iniciar o appium - No terminal digitar appium

Iniciar um emulador com versão desejada

Para rodar o cenário digitar:

cucumber

cucumber -t 'tag desejada'

cucumber -p 'tap, swipeone ou swipetwo'
