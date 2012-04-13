function load() {

    if (GBrowserIsCompatible()) {

        var map = new GMap2(document.getElementById("map"));

        map.addControl(new GSmallMapControl());

        map.addControl(new GMapTypeControl());

        var center = new GLatLng(14.7204325, -17.4565887);

        map.setCenter(center, 13);

        geocoder = new GClientGeocoder();

        var marker = new GMarker(center, {draggable: true});

        map.addOverlay(marker);

        document.getElementById("lat").innerHTML = center.lat().toFixed(7);

        document.getElementById("endroit_longitude").value = center.lat().toFixed(7);
        document.getElementById("endroit_latitude").value = center.lat().toFixed(7);

        document.getElementById("lng").innerHTML = center.lng().toFixed(7);

        GEvent.addListener(marker, "dragend", function() {

            var point = marker.getPoint();

            map.panTo(point);

            document.getElementById("lat").innerHTML = point.lat().toFixed(7);

            document.getElementById("endroit_longitude").value = point.lat().toFixed(7);
            document.getElementById("endroit_latitude").value = point.lat().toFixed(7);

            document.getElementById("lng").innerHTML = point.lng().toFixed(7);

        });

        GEvent.addListener(map, "moveend", function() {

            map.clearOverlays();

            var center = map.getCenter();

            var marker = new GMarker(center, {draggable: true});

            map.addOverlay(marker);

            document.getElementById("lat").innerHTML = center.lat().toFixed(7);

            document.getElementById("endroit_longitude").value = center.lat().toFixed(7);
            document.getElementById("endroit_latitude").value = center.lat().toFixed(7);

            document.getElementById("lng").innerHTML = center.lng().toFixed(7);

            GEvent.addListener(marker, "dragend", function() {

                var point =marker.getPoint();

                map.panTo(point);

                document.getElementById("lat").innerHTML = point.lat().toFixed(7);

                document.getElementById("endroit_longitude").value = point.lat().toFixed(7);
                document.getElementById("endroit_latitude").value = point.lat().toFixed(7);

                document.getElementById("lng").innerHTML = point.lng().toFixed(7);

            });
        });
    }

}

function showAddress(address) {

    var map = new GMap2(document.getElementById("map"));

    map.addControl(new GSmallMapControl());

    map.addControl(new GMapTypeControl());

    if (geocoder) {

        geocoder.getLatLng(

            address,

            function(point) {

                if (!point) {

                    alert(address + " not found");

                } else {

                    document.getElementById("lat").innerHTML = point.lat().toFixed(7);

                    document.getElementById("endroit_longitude").value = point.lat().toFixed(7);
                    document.getElementById("endroit_latitude").value = point.lat().toFixed(7);

                    document.getElementById("lng").innerHTML = point.lng().toFixed(7);

                    map.clearOverlays()

                    map.setCenter(point, 14);

                    var marker = new GMarker(point, {draggable: true});

                    map.addOverlay(marker);



                    GEvent.addListener(marker, "dragend", function() {

                        var pt = marker.getPoint();

                        map.panTo(pt);

                        document.getElementById("lat").innerHTML = pt.lat().toFixed(7);

                        document.getElementById("endroit_longitude").value = pt.lat().toFixed(7);
                        document.getElementById("endroit_latitude").value = pt.lat().toFixed(7);

                        document.getElementById("lng").innerHTML = pt.lng().toFixed(7);

                    });

                    GEvent.addListener(map, "moveend", function() {

                        map.clearOverlays();

                        var center = map.getCenter();

                        var marker = new GMarker(center, {draggable: true});

                        map.addOverlay(marker);

                        document.getElementById("lat").innerHTML = center.lat().toFixed(7);

                        document.getElementById("endroit_longitude").value = center.lat().toFixed(7);
                        document.getElementById("endroit_latitude").value = center.lat().toFixed(7);

                        document.getElementById("lng").innerHTML = center.lng().toFixed(7);



                        GEvent.addListener(marker, "dragend", function() {

                            var pt = marker.getPoint();

                            map.panTo(pt);

                            document.getElementById("lat").innerHTML = pt.lat().toFixed(7);

                            document.getElementById("endroit_longitude").value = pt.lat().toFixed(7);
                            document.getElementById("endroit_latitude").value = pt.lat().toFixed(7);

                            document.getElementById("lng").innerHTML = pt.lng().toFixed(7);

                        });

                    });

                }

            }

        );

    }

}