    var $ALPHA_IMAGE_LOADER = "DXImageTransform.Microsoft.AlphaImageLoader";
    var $FILTER = "progid:" + $ALPHA_IMAGE_LOADER + "(src='%1',sizingMethod='scale')";
    var $PNGFIX=false;

    var _pngfix=function(i) {
        if (!$PNGFIX) return;
        // we have to preserve width and height
        var $image = new Image();
        $image.onload = function() {
            i.width = $image.width;
            i.height = $image.height;
            $image = null;
        };

        $image.src = i.src;
        _addFilter(i);


    }

function _addFilter($element) {
    var $filter = $element.filters[$ALPHA_IMAGE_LOADER];
    if ($filter) {
        $filter.src = $element.src;
        $filter.enabled = true;
    } else {
        $element.runtimeStyle.filter = $FILTER.replace(/%1/, $element.src);
    }
    // remove the real image
    $element.onload=function() {}
    $element.src = "spacer.gif";
};

