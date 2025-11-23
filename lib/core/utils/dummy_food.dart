import 'dart:math';

class DummyFood {
  DummyFood._();

  // List of all food image URLs
  static const List<String> foodImages = [
    "https://modo3.com/thumbs/fit630x300/92227/1597489093/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9_%D8%B9%D9%85%D9%84_%D8%A7%D9%84%D9%84%D8%AD%D9%85_%D8%A7%D9%84%D9%85%D9%81%D8%B1%D9%88%D9%85.jpg",
    "https://media.elbalad.news/2024/10/large/1058/1/443.jpg",
    "https://cdn.al-ain.com/images/2019/1/16/47-104323-stew-vegetables-recipe_700x400.jpeg",
    "https://www.justfood.tv/big/0Bashamel.jpg",
    "https://static.webteb.net/images/content/ramadanrecipe_recipe_1284_773ece53751-3e01-4836-a67f-685c85a83534.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFm_v40WunEg2bcuWEGUCdTX7YyNfqm8m6RowEyFHcz3k9C3aZ8S4Kjq9u8bCt2kHKg1k&usqp=CAU",
    "https://cdn.al-ain.com/images/2024/1/30/206-182307-6143a7a40b_700x400.jpg",
    "https://images.arla.com/recordid/EDFA6BC9-E286-4CCC-9CD45C0C51866C32/pasta-with-chicken-and-tomato-sauce.jpg",
    "https://static.aljamila.com/styles/1100x732/public/24231896_1989515671065891_4152079755793532554_n.jpg",
    "https://d26czciiy2b0rz.cloudfront.net/uploads/images/Zacks-Main0-1681571100.jpg",
    "https://thebahrainlife.com/image.php?quality=90&width=1920&height=1080&image=files%2Fimages%2FItem%2Fmix%20samboosa%20platter%27_v756szaw.png",
    "https://cdn.al-ain.com/lg/images/2023/4/16/196-103215-ifttar-ramadan-grilled-liver-2.jpeg",
    "https://www.cairo24.com/UploadCache/libfiles/148/5/600x338o/299.jpg",
    "https://www.aljawharamag.com/aljawhara/uploads/2021/04/%D9%81%D9%88%D9%84.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzisrxBP1TMHMbBN-GRYoxtrAd_NzzDL5bT-3jx8Hp1gfH2dH20YolO_QNJpmqpV3PRcQ&usqp=CAU",
    "https://img.youm7.com/ArticleImgs/2017/7/29/92487-%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%B9%D9%85%D9%84-%D8%A7%D9%84%D8%A7%D8%B1%D8%B2-%D8%A7%D9%84%D8%A8%D8%B3%D9%85%D8%AA%D9%89-(1).JPG",
    "https://cdn.salla.sa/bKWBK/4b8f7182-f6e6-4aaf-ba53-512aaae2114a-1000x551.1811023622-9mNpfGoscRdHBE0MjmSbOMwKznvFYp1zUXecR5Cx.jpg",
    "https://www.cairo24.com/UploadCache/libfiles/88/6/600x338o/599.jpg",
    "https://img.youm7.com/ArticleImgs/2017/9/10/81309-%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%B9%D9%85%D9%84-%D8%A7%D9%84%D8%A3%D8%B1%D8%B2-%D8%A8%D8%A7%D9%84%D9%81%D8%B1%D8%A7%D8%AE-%D9%88%D8%A7%D9%84%D8%AE%D8%B6%D8%A7%D8%B1-..jpg",
    "https://d26czciiy2b0rz.cloudfront.net/uploads/images/Chixee-3-1748776648.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrynPzZoExBU8Mf_rsMeRtsJRohOQ7Q8wtsdv1yI1Xit8peHGhUzVYvivwCphMKpTw1wE&usqp=CAU",
    "https://www.q8castle.com/wp-content/uploads/2020/12/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9_%D8%AF%D8%AC%D8%A7%D8%AC_%D9%85%D8%AD%D9%85%D8%B1_%D9%85%D8%BA%D8%B1%D8%A8%D9%8A.jpg",
    "https://modo3.com/thumbs/fit630x300/160322/1494239927/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9_%D8%B9%D9%85%D9%84_%D9%85%D8%B9%D8%AC%D9%86%D8%A7%D8%AA_%D8%AC%D8%A8%D9%86%D8%A9.jpg",
    "https://i.pinimg.com/736x/12/4d/7b/124d7bc15a7ecc99f3deb42df3877d54.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQACL4-kfpoeuUUmGsIyNSorcRHCPZs7sYNY2Zt1YN0O8g6ZwIvTaU8P9I40V3oTdOVQCw&usqp=CAU",
    "https://static.aljamila.com/styles/1100x732/public/2021-05/4086106-1493388746.JPG?h=50844e28",
    "https://kitchen.sayidaty.net/uploads/small/07/074ce653778b1d561206dbdb8a30e2f6_w750_h500.jpg",
    "https://www.cairo24.com/UploadCache/libfiles/88/6/600x338o/599.jpg",
    "https://ckreci.com/wp-content/uploads/2021/01/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%B9%D9%85%D9%84-%D8%B3%D9%85%D9%83-%D9%85%D8%B4%D9%88%D9%8A-%D8%A8%D9%80-4-%D9%88%D8%B5%D9%81%D8%A7%D8%AA-%D8%B2%D9%8A-%D8%A7%D9%84%D9%85%D8%AD%D9%84%D8%A7%D8%AA.jpg",
    "https://i.ytimg.com/vi/tUlT-6_KilM/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCtCDaPbB4c_BOM7JvCQ4nGhMXfAA",
    "https://www.cairo24.com/UploadCache/libfiles/88/6/600x338o/599.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrynPzZoExBU8Mf_rsMeRtsJRohOQ7Q8wtsdv1yI1Xit8peHGhUzVYvivwCphMKpTw1wE&usqp=CAU",
  ];

  // Get a random image from the list
  static String getRandom() {
    final random = Random();
    return foodImages[random.nextInt(foodImages.length)];
  }
}


/*

  Image.network(DummyFood.getRandom());

*/