let myMap;
let service;

function initMap() {
  var initPos = new google.maps.LatLng( 34.662941,135.502232 );//緯度経度
  var myOptions = {
  zoom: 17,//ズーム
  center: initPos,
  mapTypeId: google.maps.MapTypeId.ROADMAP,
  gestureHandling: 'greedy',
};
  myMap = new google.maps.Map(document.getElementById("gmap"),myOptions);
  let request = {
    location: initPos,
    radius: 1000,
    types: ['cafe']
  };
  var service = new google.maps.places.PlacesService(myMap);
  service.search(request,Result_Places);
}

function Result_Places(results, status){
  // Placesが検家に成功したかどうかをチェック
  if(status == google.maps.places.PlacesServiceStatus.OK) {
      for (var i = 0; i < results.length; i++) {
          // 検索結果の数だけ反復処理を変数placeに格納
          var place = results[i];
          createMarker({
            text : place.name, 
            position : place.geometry.location
        });
    }
  }
}

function SearchGo() {
  var initPos = new google.maps.LatLng(0,0);
  var mapOptions = {
      center : initPos,
      zoom: 10,
      mapTypeId : google.maps.MapTypeId.ROADMAP,
      gestureHandling: 'greedy',
  };
  // #map_canva要素にMapクラスの新しいインスタンスを作成
  myMap = new google.maps.Map(document.getElementById("gmap"), mapOptions);
  service = new google.maps.places.PlacesService(myMap);
  // input要素に入力されたキーワードを検索の条件に設定
  var myword = document.getElementById("search");
  var request = {
      query : myword.value,
      radius : 400,
      location : myMap.getCenter()
  };
  service.textSearch(request, result_search);
}

function result_search(results, status) {
  var bounds = new google.maps.LatLngBounds();
  for(var i = 0; i < results.length; i++){
      createMarker({
          position : results[i].geometry.location,
          text : results[i].name,
          map : myMap
      });
      bounds.extend(results[i].geometry.location);
  }
  myMap.fitBounds(bounds);
}

function createMarker(options) {
  // マップ情報を保持しているmyMapオブジェクトを指定
  options.map = myMap;
  // Markcrクラスのオブジェクトmarkerを作成
  var marker = new google.maps.Marker(options);
  // 各施設の吹き出し(情報ウインドウ)に表示させる処理
  var infoWnd = new google.maps.InfoWindow();
  infoWnd.setContent(options.text);
  // addListenerメソッドを使ってイベントリスナーを登録
  google.maps.event.addListener(marker, 'click', function(){
      infoWnd.open(myMap, marker);
  });
  return marker;
}