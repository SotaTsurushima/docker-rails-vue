FROM ruby:3.3.0

#debian系のためapt-getを使用してnode.jsとyarnをインストール
RUN apt-get update

#docker内の作業ディレクトリを作成＆設定
WORKDIR /app

#Gemfile,Gemfile.lockをローカルからCOPY
COPY Gemfile Gemfile.lock /app/

#コンテナ内にコピーしたGemfileを用いてbundel install
RUN gem update --system \
    && gem install bundler
RUN bundle install

#railsを起動する
CMD ["rails", "server", "-b", "0.0.0.0"]