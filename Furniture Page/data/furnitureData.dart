class Furniture {
  String images, text;
  Furniture({this.images, this.text});
}

List<Furniture> furnitureCataData = [
  Furniture(
    images:
        'https://images.unsplash.com/photo-1598300042247-d088f8ab3a91?crop&w=334&q=80',
    text: 'Italian',
  ),
  Furniture(
    images:
        'https://images.unsplash.com/photo-1519947486511-46149fa0a254?crop&w=334&q=80',
    text: 'Classical',
  ),
  Furniture(
    images:
        'https://images.unsplash.com/photo-1501045661006-fcebe0257c3f?crop&w=334&q=80',
    text: "Roman",
  ),
  Furniture(
    images:
        'https://images.unsplash.com/photo-1551298370-9d3d53740c72?crop&w=334&q=80',
    text: 'Kobalia',
  ),
];

class Idea {
  String img, txt;
  Idea({this.img, this.txt});
}

List<Idea> idea = [
  Idea(
    img: 'https://images.unsplash.com/photo-1603794067602-9feaa4f70e0c?crop&w=920&q=80',
    txt: 'Living Space',
  ),
  Idea(
    img: 'https://images.unsplash.com/photo-1610123172705-a57f116cd4d9?crop&w=920&q=80',
    txt: 'Dining Room',
  ),
  Idea(
    img: 'https://images.unsplash.com/photo-1600494448644-50b41080adbd?crop&w=920&q=80',
    txt: 'Bedroom',
  )
];
