  var map = new BMap.Map("caodan");          // 创建地图实例  
    var point = new BMap.Point(121.614682, 38.914003);  // 创建点坐标  
    map.centerAndZoom(point, 13);                 // 初始化地图，设置中心点坐标和地图级别  
    /*var marker = [
        new BMap.Marker(121.6102409362793,38.9153125034453),
        new BMap.Marker(121.6166353225708,38.91374309174291),
        new BMap.Marker(38.9153125034453,121.6102409362793)
    ];*/

  
    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
    map.addControl(new BMap.NavigationControl());   // 平移缩放控件
    map.addControl(new BMap.ScaleControl());        //  比例尺控件
    map.addControl(new BMap.OverviewMapControl());    //  缩略图控件
    map.addControl(new BMap.MapTypeControl());       //   卫星控件
    map.setCurrentCity("大连");          // 设置地图显示的城市 
    /*map.addEventListener("click",function(e){
    alert(e.point.lng + "," + e.point.lat);
  });*/

    
  var data_info = [[121.6102409362793,38.9153125034453,"地址：北京市东城区王府井大街88ui"],
           [121.6166353225708,38.91374309174291,"地址：北京市东城区东华门大街"],
           [116.412222,39.912345,"地址：北京市东城区正义路甲5号"]
          ];
  var opts = {
        width : 250,     // 信息窗口宽度
        height: 80,     // 信息窗口高度
        title : "信息窗口" , // 信息窗口标题
        enableMessage:true//设置允许信息窗发送短息
         };
  for(var i=0;i<data_info.length;i++){
    var marker = new BMap.Marker(new BMap.Point(data_info[i][0],data_info[i][1]));  // 创建标注
    var content = data_info[i][2];
    map.addOverlay(marker);               // 将标注添加到地图中
    addClickHandler(content,marker);
  }
  function addClickHandler(content,marker){
    marker.addEventListener("click",function(e){
      openInfo(content,e)}
    );
  }
  function openInfo(content,e){
    var p = e.target;
    var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
    var infoWindow = new BMap.InfoWindow(content,opts);  // 创建信息窗口对象 
    map.openInfoWindow(infoWindow,point); //开启信息窗口
  }
    
    
    