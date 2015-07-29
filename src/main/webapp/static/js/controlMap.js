
/*初始化地图控件*/
function initMap(shopCordX,shopCordY,shopAdd){
	 //如果没有给定经纬度，获得当前位置的坐标
	  if(shopCordX==""){
		var geoc = new BMap.Geocoder();
		var geolocation = new BMap.Geolocation();
		geolocation.getCurrentPosition(function(r){
			if(this.getStatus() == BMAP_STATUS_SUCCESS){
				//map.panTo(r.point);
				//alert('您的位置：'+r.point.lng+','+r.point.lat);
				shopCordX=r.point.lng;
				shopCordY=r.point.lat;
				var pt = r.point;
				geoc.getLocation(pt, function(rs){
				var addComp = rs.addressComponents;
					//alert(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
					shopAdd=addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber;
				});  
			}
			else {
				alert('failed'+this.getStatus());
			}        
		},{enableHighAccuracy: true});
	  }
	  
		// 百度地图API功能
		// 创建Map实例,设置地图允许的最小/大级别
		var map = new BMap.Map("myMap",{minZoom:4,maxZoom:25});
		//创建点坐标
		var point = new BMap.Point(shopCordX, shopCordY);
		// 初始化地图,设置中心点坐标和地图级别
		map.centerAndZoom(point, 15);
		//开启鼠标滚轮缩放
		map.enableScrollWheelZoom(); 
		//启用键盘操作，默认禁用。
		map.enableKeyboard();
		   
		// 比例尺控件，右下角，默认位于地图左下方，显示地图的比例关系。
		var bottom_right_control = new BMap.ScaleControl({
			anchor: BMAP_ANCHOR_BOTTOM_RIGHT
			});
			
		//地图平移缩放控件，PC端默认位于地图左上方，它包含控制地图的平移和缩放的功能。
		var navigationControl = new BMap.NavigationControl({
			// anchor表示控件的停靠位置，即控件停靠在地图的哪个角
			anchor: BMAP_ANCHOR_TOP_LEFT,
			// LARGE类型,控件外观类型, 表示显示完整的平移缩放控件
			type: BMAP_NAVIGATION_CONTROL_LARGE,
			// 启用显示定位
			enableGeolocation: true
		});
		//向地图添加控件
		map.addControl(bottom_right_control);       
		map.addControl(navigationControl);  
		
		//地图覆盖物:所有叠加或覆盖到地图的内容，Marker：标注表示地图上的点，InfoWindow：信息窗口也是一种特殊的覆盖物
		//可以使用map.addOverlay方法向地图添加覆盖物，使用map.removeOverlay方法移除覆盖物，注意此方法不适用于InfoWindow。
		// 创建标注  
		var marker=new BMap.Marker(point);
		// 将标注添加到地图中
		map.addOverlay(marker);
		marker.addEventListener("click", function(e){    
			//alert(e.point.lng + ", " + e.point.lat);
			//信息窗口
			var opts = {    
				 width : 250,     // 信息窗口宽度    
				 height: 100,     // 信息窗口高度    
				 title : "信息窗口"  // 信息窗口标题   
				}  ;
			var infoWindow = new BMap.InfoWindow("地址："+shopAdd, opts);  // 创建信息窗口对象    
			map.openInfoWindow(infoWindow,  new BMap.Point(e.point.lng,e.point.lat));      // 打开信息窗口
		});
		//开启拖拽功能,默认情况下标注不支持拖拽
		marker.enableDragging();
		map.addControl(new BMap.OverviewMapControl());    //  缩略图控件
		map.addControl(new BMap.MapTypeControl());       //   卫星控件
	
}
