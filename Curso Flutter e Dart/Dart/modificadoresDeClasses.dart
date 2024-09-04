/* Os modificadores de classe controlam como uma classe ou mixin pode ser usada, tanto de dentro de sua própria biblioteca quanto de fora da biblioteca em que está definida.

As palavras-chave modificadoras vêm antes de uma declaração de classe ou mixin. Por exemplo, escrever define uma classe abstrata. O conjunto completo de modificadores que podem aparecer antes de uma declaração de classe inclui:abstract class

abstract
base
final
interface
sealed
mixin
Somente o modificador pode aparecer antes de uma declaração de mixin. Os modificadores não se aplicam a outras declarações como , , , ou .baseenumtypedefextensionextension type

Ao decidir se deve usar modificadores de classe, considere os usos pretendidos da classe e em quais comportamentos a classe precisa ser capaz de confiar. 

Para mais informações, acesse a Documentação: https://dart.dev/language/class-modifiers
*/

/* Exemplo abaixo */
sealed class Vehicle {}

class Car extends Vehicle {}

class Truck implements Vehicle {}

class Bicycle extends Vehicle {}

// ERROR: Can't be instantiated.
// Vehicle myVehicle = Vehicle();

// Subclasses can be instantiated.
Vehicle myCar = Car();

String getVehicleSound(Vehicle vehicle) {
  // ERROR: The switch is missing the Bicycle subtype or a default case.
  return switch (vehicle) {
    Car() => 'vroom',
    Truck() => 'VROOOOMM',
    Bicycle() => 'triimmm'
  };
}
