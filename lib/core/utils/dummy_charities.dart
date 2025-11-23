import 'dart:math';

class DummyCharities {
  DummyCharities._();

  // List of all building image URLs
  static const List<String> buildingImages = [
    "https://www.ccdocle.org/files/locations/header/geauga-county.jpg",
    "https://cloudfront-us-east-1.images.arcpublishing.com/advancelocal/U2BAIBJ4D5EGXOAP64M3XLGEPI.jpg",
    "https://www.ccdocle.org/files/locations/header/blessed-trinity-outreach-center-building.jpg",
    "https://www.bristolcivicsociety.org.uk/wp-content/uploads/2018/05/BRI-Charity-Universal.jpg",
    "https://cdn.firespring.com/images/dda0c370-05e2-4f96-9bd0-bc776bdb141d.jpg",
    "https://ichef.bbci.co.uk/news/480/cpsprodpb/05dd/live/fa9caa40-841b-11f0-8920-cb71bf7274c6.png.webp",
    "https://www.halifaxcourier.co.uk/webimg/b25lY21zOmIzMjIyOWMyLTU0MTgtNDlkZC05YWZmLWFiNDAzMmFhMWQ1MjpiMWQ5MGQ1Ny00ZjIwLTQxNzQtYmM2Ni00OWM1NTU4MzYxNWI=.jpg?crop=3:2,smart&trim=&width=640&quality=65",
    "https://www.evolvehousing.org.uk/wp-content/uploads/2024/12/Palmer-website-500x250.jpg",
    "https://i0.wp.com/therecordnewspaper.org/wp-content/uploads/2019/05/CCLou-Current-Street-View-5-16-19-p-.gif?ssl=1",
    "https://www.civilsociety.co.uk/static/3fd6f046-b82a-4f2f-b421-7e8b357adb55/article_img_detail_5ba532e110cf7bcee7b0d6e49c027c8b_4a7c7e45a350/old-paradise-yard-440.jpg",
    "https://mkmbs.bloomreach.io/cdn-cgi/image/w=3072,f=jpeg,q=80/https://mkmbs.bloomreach.io/delivery/resources/content/gallery/info-pages/mkm-central-support-office-photo---1200px-w-by-900px-h.jpg",
    "https://offloadmedia.feverup.com/secretldn.com/wp-content/uploads/2025/08/15100628/shutterstock_2540329241-min-1024x835.jpg",
    "https://www.children.org/globalassets/04_make-a-difference/community-centers/daraga---philippines/community-center-cta-daraga-2.jpg/ScreenXS",
    "https://www.tricitiesbusinessnews.com/ext/resources/2023/03/PascoBishopCommons_Mar23.webp?t=1699995389&width=900",
    "https://www.catholiccharitiesusa.org/wp-content/uploads/2024/10/IMG_6667-scaled-e1729603678169-1024x575.jpg",
    "https://ghh.org.uk/wp-content/uploads/2024/09/Generative-Fill-1-1.jpg",
    "https://www.therobertsontrust.org.uk/media/odijxwgm/img_5370.jpg?rmode=max&width=478&height=318",
    "https://murphy.tulane.edu/sites/default/files/styles/manual_crop/public/2025-02/Main-photo-charity-850x548.jpg?itok=FepKn0Wg",
    "https://www.catholiccharitiesusa.org/wp-content/uploads/2024/01/rlmillerphoto_bishop_skylstad_commons3-scaled-e1705067939474-1024x577.jpg",
    "https://meyersarchitects.com/wp-content/uploads/2024/02/RMHC-Exterior-with-three-story-connector.jpg",
    "https://www.ccdocle.org/files/locations/header/catholic-charities-main-offices.jpg",
    "https://cdn.nicholashare.co.uk/uploads/images/_lightbox/0389-Headquarters-Building-Charities-Aid-Foundation_3_180319_170919.jpg?v=1697835117",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlOIPWt2ZZFK19LrC5IvGnTq8_IsVS9HJIRkbG7k2tKmt06g470Ho2UmjH8pmaC6p3NEE&usqp=CAU",
    "https://s3-us-west-2.amazonaws.com/bltawards/uploads/12948/132-19565-21/full/1fd7d8e0b005811ad72e0f7ee2d17d11.jpg",
    "https://www.danielwatney.co.uk/wp-content/uploads/PR_002_2000-1140x760.jpg",
    "https://rmhc.org.uk/wp-content/uploads/2020/07/rmhc-oxford-house-2-1384x1052.jpg.webp",
    "https://www.ccdocle.org/files/locations/header/catholic-charities-ashland.jpg",
    "https://cdn.i-scmp.com/sites/default/files/styles/1020x680/public/d8/images/canvas/2025/11/21/ace601d5-70b8-410b-8ddc-5ee58a118731_e1b4c63c.jpg?itok=Bn4qEAgP&v=1763714984",
    "https://www.dailynews.com/wp-content/uploads/2023/09/cath.jpg?w=408",
    "https://upload.wikimedia.org/wikipedia/commons/c/c3/Victoria%2C_BC_-_Hook_Sin_Tong_Charity_building_01_%2820496919031%29.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/United_Charities_Building_entrance.jpg/250px-United_Charities_Building_entrance.jpg",
    "https://cloudfront-us-east-1.images.arcpublishing.com/advancelocal/XMGVBCCW75G37MV5RCTT5YJWHM.jpg",
    "https://drphillips.org/wp-content/uploads/2025/06/DPC-Website_Blog-Image_New-Office-Building-1200x675.png",
    "https://www.yourcommunitypaper.com/wp-content/uploads/2025/06/South-West-View.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/United-charities-building.jpg/250px-United-charities-building.jpg",
    "https://therecordnewspaper.org/wp-content/uploads/2019/05/Catholic-Charities-Building-Southwest-5-16-19-p1-.gif",
    "https://upload.wikimedia.org/wikipedia/commons/c/c6/Universal_North_Building.JPG",
  ];

  // Get a random building image
  static String getRandom() {
    final random = Random();
    return buildingImages[random.nextInt(buildingImages.length)];
  }
}

/*

Image.network(DummyCharities.getRandom());

*/
