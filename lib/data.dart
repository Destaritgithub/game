class Loto {
  String LotoType;
  int totalNumberOfUserRequierd;
  int posibleWin;
  Loto(
      {this.LotoType = '',
      this.totalNumberOfUserRequierd = 10,
      this.posibleWin = 100});
}

class Game {
  String TicketId;
  int numberOfPayer;
  int numberOfRemainigpayers;
  int posibleAmountOfWin;

  Game(
      {this.TicketId = '123gt',
      this.numberOfPayer = 5,
      this.numberOfRemainigpayers = 5,
      this.posibleAmountOfWin = 100});
}
