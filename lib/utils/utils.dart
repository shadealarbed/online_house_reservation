import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var profile =
    "https://media-exp1.licdn.com/dms/image/C4E03AQFXnfyPq4L9RA/profile-displayphoto-shrink_800_800/0/1644932726929?e=1652918400&v=beta&t=DHGyewFBuHsK2hmd4rs0PhSd3djLT0ewmdDQdFiNLRs";

List categories = [
  {"name": "All", "icon": FontAwesomeIcons.boxes},
  {"name": "Villa", "icon": FontAwesomeIcons.university},
  {"name": "Shop", "icon": FontAwesomeIcons.storeAlt},
  {"name": "Building", "icon": FontAwesomeIcons.building},
  {"name": "House", "icon": FontAwesomeIcons.home},
];

List populars = [
  {
    "image":
        "https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Single Villa",
    "price": "\$280k",
    "location": "Phnom Penh, Cambodia",
    "is_favorited": true,
    "favorited": false,
  },
  {
    "image":
        "https://images.unsplash.com/photo-1598928506311-c55ded91a20c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Convertible Studio",
    "price": "\$150k",
    "location": "Phnom Penh, Cambodia",
    "is_favorited": false,
  },
  {
    "image":
        "https://images.unsplash.com/photo-1576941089067-2de3c901e126?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Twin Castle",
    "price": "\$175k",
    "location": "Phnom Penh, Cambodia",
    "is_favorited": false,
  },
  {
    "image":
        "https://images.unsplash.com/photo-1549517045-bc93de075e53?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Twin Villa",
    "price": "\$120k",
    "location": "Phnom Penh, Cambodia",
    "is_favorited": false,
  },
];

List recommended = [
  {
    "image": "https://images.unsplash.com/photo-1592595896616-c37162298647?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Garden House",
    "price": "\$180k",
    "location": "Phnom Penh",
    "is_favorited": true,
  },
  {
    "image": "https://images.unsplash.com/photo-1576941089067-2de3c901e126?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Twin Castle",
    "price": "\$175k",
    "location": "Phnom Penh, Cambodia",
    "is_favorited": false,
  },
  {
    "image": "https://images.unsplash.com/photo-1625602812206-5ec545ca1231?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "King Villa",
    "price": "\$180k",
    "location": "Phnom Penh, Cambodia",
    "is_favorited": true,
  },
];

List recents = [
  {
    "image": "https://images.unsplash.com/photo-1549517045-bc93de075e53?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Double Villa",
    "price": "\$180k",
    "location": "Phnom Penh",
    "is_favorited": false,
  },
  {
    "image": "https://images.unsplash.com/photo-1598928506311-c55ded91a20c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Convertible Studio",
    "price": "\$150k",
    "location": "Phnom Penh",
    "is_favorited": false,
  },
  {
    "image": "https://images.unsplash.com/photo-1576941089067-2de3c901e126?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Double Villa",
    "price": "\$180k",
    "location": "Phnom Penh",
    "is_favorited": false,
  },
];

