/* Load this script using conditional IE comments if you need to support IE 7 and IE 6. */

window.onload = function() {
	function addIcon(el, entity) {
		var html = el.innerHTML;
		el.innerHTML = '<span style="font-family: \'icomoon\'">' + entity + '</span>' + html;
	}
	var icons = {
			'icon-Leaf' : '&#x24;',
			'icon-gas' : '&#x25;',
			'icon-drop' : '&#x5e;',
			'icon-train' : '&#x7b;',
			'icon-tube' : '&#x7d;',
			'icon-Untitled-1' : '&#x21;',
			'icon-Play' : '&#x22;',
			'icon-Pause' : '&#x23;',
			'icon-Next' : '&#x26;',
			'icon-Previous' : '&#x40;',
			'icon-feed' : '&#x29;',
			'icon-twitter' : '&#x2a;',
			'icon-facebook' : '&#x2c;',
			'icon-reddit' : '&#x28;',
			'icon-list' : '&#x32;',
			'icon-film' : '&#x27;',
			'icon-flickr' : '&#x2b;',
			'icon-youtube' : '&#x2d;',
			'icon-bars' : '&#x2f;'
		},
		els = document.getElementsByTagName('*'),
		i, attr, html, c, el;
	for (i = 0; i < els.length; i += 1) {
		el = els[i];
		attr = el.getAttribute('data-icon');
		if (attr) {
			addIcon(el, attr);
		}
		c = el.className;
		c = c.match(/icon-[^\s'"]+/);
		if (c && icons[c[0]]) {
			addIcon(el, icons[c[0]]);
		}
	}
};