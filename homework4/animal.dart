class Animal {
  String species;
  int age;

  Animal(this.species, this.age);

  Animal.newborn(this.species) : age = 0;

  bool isAdult() {
      return age > 2;
  }

}