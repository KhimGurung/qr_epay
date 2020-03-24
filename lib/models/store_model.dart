class Store{
  int id;
  String name;
  String address;
  String logo;

  Store({
    this.id,
    this.name,
    this.address,
    this.logo
  });
}

List<Store> stores = [
  Store(
    id: 1,
    name: 'Kaufland',
    address: 'Am Rosengarten 7, 36037 Fulda',
    logo: 'kaufland.png'
  ),
  Store(
    id: 2,
    name: 'H & M',
    address: 'Bahnhofstraße 11, 36037 Fulda',
    logo: 'hnm.png'
  ),
  Store(
    id: 3,
    name: 'Aldi',
    address: 'Kothenbachweg 2-4, 36041 Fulda',
    logo: 'aldi.png'
  ),
  Store(
    id: 4,
    name: 'Mc Donald',
    address: 'Frankfurter Str. 8A 36043 Fulda',
    logo: 'mcdonald.png'
  ),
  Store(
    id: 5,
    name: 'Lidl',
    address: 'Frankfurter Str. 10, 36043 Fulda',
    logo: 'lidl.png'
  ),
  Store(
    id: 6,
    name: 'Primark',
    address: 'Zeil 94, 60313 Frankfurt am Main',
    logo: 'primark.png'
  ),
  Store(
    id: 7,
    name: 'Cine Star',
    address: 'Löherstraße 41, 36037 Fulda',
    logo: 'cinestar.png'
  ),
  Store(
    id: 8,
    name: 'Media Markt',
    address: 'Petersberger Str.36, 36037 Fulda',
    logo: 'mediamarkt.png'
  )
];