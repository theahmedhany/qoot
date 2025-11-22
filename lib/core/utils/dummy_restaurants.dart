import 'dart:math';

class DummyRestaurants {
  DummyRestaurants._();

  // List of all restaurant image URLs
  static const List<String> restaurantImages = [
    "https://meraki-resort.com/wp-content/uploads/2022/09/4.2-Mumm-Egyptian-Restaurant-scaled.jpg",
    "https://egyptfuntours.com/wp-content/uploads/2023/10/Fasahet-Somaya-Restaurant-Egypt-Fun-Tours.jpeg",
    "https://cairoscene.com/Content/Admin/Uploads/Articles/ArticlesMainPhoto/1164659/18d7b20a-85ee-4c8d-aafd-639d86b71ab1.jpg",
    "https://preview.redd.it/late-dinner-in-an-ancient-egyptian-restaurant-summer-2022-v0-pcy569es360b1.jpg?width=2048&format=pjpg&auto=webp&s=d8f4927982fb9e400fef15e3023c30a03513f106",
    "https://crushmag-online.com/wp-content/uploads/2020/02/bobos-1x5-1.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs0bo4xsYSmsKe9SaiheB_sDbI0rZK0lYaPXcVNj_iBc2AkC0_kR9cgzz5AovujSi_22k&usqp=CAU",
    "https://sceneeats.com/Content/Admin/Uploads/Articles/ArticlesMainPhoto/11616/c4d24c3f-fcad-4d9d-a54d-d6b7b6b427b4.jpg",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/b6/5a/ae/ohana-restaurants.jpg",
    "https://resizer.otstatic.com/v3/photos/25077089-1?width=1280&height=720&webp=true",
    "https://images.tastet.ca/_/rs:fit:1080:720:false:0/plain/local:///2024/05/papito-resto.jpg@jpg",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/33/10/3e/manila-bay-kitchen-is.jpg",
    "https://www.citystars-heliopolis.com.eg/public/images/gallery/al-khal/641af0bb-fb92-48aa-9364-db384e7d190c.jpg?1563380739735",
    "https://menu.citystarshotels.com/storage/2020/05/alkhal_b-1201x800.jpg",
    "https://www.osiristours.com/wp-content/uploads/2018/03/intercontinental-cairo-4080515134-2x1.jpeg",
    "https://english.ahram.org.eg/Media/News/2020/6/4/2020-637269087779820796-982.jpg",
    "https://scenenow.com/Content/editor_api/images/kazouko-57e9058b-71a5-441a-9ec3-0675329981f6.jpg",
    "https://www.timeoutdubai.com/cloud/timeoutdubai/2021/09/15/yYx3oPI7-khofo31-min.jpg",
    "https://scenenow.com/Content/editor_api/images/khufu-efe4a9f4-783b-471c-9abd-b89416ab6cfe.jpg",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/e4/af/1e/saigon-restaurant.jpg",
    "https://egyptfuntours.com/wp-content/uploads/2023/10/Felfela-Restaurant-in-Cairo-Egypt-FunTours.jpg",
    "https://assets.architecturaldigest.in/photos/68fb25b6c7a4482e003c8b87/master/w_1600%2Cc_limit/Hosa%2520Gurugram%2520interior3.jpg",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/36/c2/68/brazilian-restaurant.jpg",
    "https://media.timeout.com/images/106147491/750/562/image.jpg",
    "https://commonmarketrestaurants.com/wp-content/uploads/2024/03/BALLAST-13.jpg",
    "https://crm.sunrise-resorts.com/download/preview_image?path=uploads/facilities/80/gallery_3730.jpg",
    "https://uncoverpakistan.com.pk/wp-content/uploads/2025/08/best-restaurants-in-pakistan.jpg",
    "https://www.byblos.com/wp-content/uploads/Restaurant-IL-Giardino_Hotel-Byblos_Saint-Tropez-%C2%A9Stephan-Julliard-7.jpg",
    "https://media.cntraveler.com/photos/677d6e514ce6669273fa2ac4/4:3/w_4864,h_3648,c_limit/LaDama_10881%20(1).jpg",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/ae/b5/49/al-khal.jpg?w=900&h=500&s=1",
    "https://www.citystars-heliopolis.com.eg/public/images/store_facade_image/rkWu4mGnGg-main-v2-v2.jpg?1497370840836",
    "https://crm.sunrise-resorts.com/download/preview_image?path=uploads/facilities/128/Mumm-Arabian-Restaurant-1.jpg",
    "https://top10cairo.com/wp-content/uploads/2023/10/Al-Khal-Best-Egyptian-Restaurant-in-Egypt-696x696.jpg",
    "https://denhaag.com/sites/default/files/styles/keyvisual_1960x640/public/84259982-60b2-4769-a898-390ca80e42ee.jpg?h=23c2f9b6&itok=-e2M5JlZ",
    "https://cdn.choosechicago.com/uploads/2024/08/BEEF-LIBERTY-PDR-2-1800x1200.jpg",
    "https://assets.cairo360.com/app/uploads/2025/11/10/Cover-Le-Terrace-743x327.jpg",
    "https://www.thefirstcollection.ae/wp-content/uploads/2021/09/TFCAlloro.jpg",
    "https://media.cntraveler.com/photos/68ff7984207c2226674bd251/master/w_1600%2Cc_limit/JOHN%2520MARSLAND-1350675%2520(1).jpg",
    "https://media.timeout.com/images/105995641/750/562/image.jpg",
    "https://www.tinbuilding.com/wp-content/uploads/2024/09/download-6-scaled-920x518.webp",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Barbieri_-_ViaSophia25668.jpg/1200px-Barbieri_-_ViaSophia25668.jpg",
  ];

  // Get a random image from the list
  static String getRandom() {
    final random = Random();
    return restaurantImages[random.nextInt(restaurantImages.length)];
  }
}

/*
  Usage example:
  Image.network(DummyRestaurants.getRandom());
*/
