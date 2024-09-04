void main() {
  /* Mixins - serve para compartilhar as Heranças em mais de uma, algo que as classes não faz */

  var minhaFoto = Foto("Minha Foto", "Casa");
  var meuVideo = Video("Meu Video", 120);

  print("Foto: ${minhaFoto.tituloFoto}, Localização: ${minhaFoto.localizacao}");
  minhaFoto.compartilharFoto();
  print("Video: ${meuVideo.tituloVideo}, Duração: ${meuVideo.duracao} seg");
  meuVideo.compartilharVideo();
  minhaFoto.deletar();
}

class Foto with Compartilhar, Deletar{
  String localizacao = "";

  Foto(titulo, this.localizacao);
}

class Video with Compartilhar, Deletar{
  int duracao = 0;

  Video(titulo, this.duracao);
}

/* Mixin Fotografia */
mixin Compartilhar {
  String tituloFoto = "Eu e meu cachorro";
  String tituloVideo = "Eu em Paris";
  DateTime dataCriacao = DateTime.now();

  void compartilharFoto() {
    print("Compartilhando: $tituloFoto");
  }
  
  void compartilharVideo() {
    print("Compartilhando: $tituloVideo");
  }
}

mixin Deletar implements Compartilhar {
  void deletar() {
    print("Deletando: $tituloFoto");
  }
}