/* Simulate button(or input[button])'s hover attribute
* Depend jQuery
*/
$(function() {
   if (!+'\v1' && !('maxHeight' in document.body.style)) {
       var button = $('.button').not('a'),
           PREFIX_CLASS = 'prefixClass',
		   BUTTON = 'button',
		   HYPHEN = '-',
		   HOVER = 'hover';
       button.bind('mouseenter', function(ev) {
            toggle(this, 1);
       });
        button.bind('mouseleave', function(ev) {
            toggle(this, 0);
       });
       function toggle(self, t) {
           var self = $(self),
                prefixClass = self.attr(PREFIX_CLASS) ? self.attr(PREFIX_CLASS) + HYPHEN : BUTTON + HYPHEN,
                className = prefixClass + HOVER;
           t ? self.addClass(className) : self.removeClass(className);
       }
   }
});
 /**
* Plugin multiAccordion 
*/
(function($) {

    //Reset $.tools
    var tools = $.tools = $.tools || {};

    //default config
    $.tools.multiAccordion = {
        conf: {
           tabs: 'a',
           current: 'expand',
           event: 'click',
           effect: 'default',
           onBeforeClick: null,
           onClick: null
        }
    };

    var effects = {
        'default': function(i, done) {
           var self = this,
                pane = self.panes.eq(i);

           if (self.tabs.eq(i).hasClass(self.conf.current)) {
                pane.hide();
            } else {
                pane.show();
            }
            done.call();
        },
        'slide': function(i, done) {
            var self = this,
                pane = self.panes.eq(i);

            if (animating) { return self;}
            animating = true;
            if (self.tabs.eq(i).hasClass(self.conf.current)) {
                pane.slideUp('fast', function() {
                    animating = false;
                });
            } else {
                pane.slideDown('fast', function() {
                    animating = false;
                });
            }
            done.call();
        }
    }, animating;

    function multiAccordion(root, paneSelector, conf) {

        var self = this;

        self.root = root;
        self.conf = conf;
        self.tabs = root.find(conf.tabs);
        self.panes = paneSelector.jquery ? paneSelector : self.tabs.next(paneSelector);

        var tabs = self.tabs, panes = self.panes, conf = self.conf, initialIndex = conf.initialIndex;

        //注册事件
        tabs.each(function(i) {
            $(this).bind(self.conf.event, function(e) {
                self.click(i);
                e.preventDefault();
            });
        });

        $.each('onBeforeClick,onClick'.split(','), function(i, name) {
            var conf = self.conf;
            if (conf[name]) {
                $(self).bind(name, conf[name]);
            }

            self[name] = function(fn) {
                if ($.isFunction(fn)) {
                    $(self).bind(name, fn);
                }
            }
        });

        if (initialIndex >= 0) {
            self.init(initialIndex);
        }
    }

    $.extend(multiAccordion.prototype, {
        init: function(i) {
            var self = this,
                tab = self.tabs.eq(i),
                conf = self.conf,
                current = conf.current;

           if (!tab.length) {
               tab = self.tabs.eq(0);
               i = self.tabs.index(tab);
           }
           tab.toggleClass(current, !tab.hasClass(current));
           self.panes.eq(i).show();
        },
        click: function(i) {
            var self = this,
                tab = self.tabs.eq(i),
                conf = self.conf;

            var e = $.Event('onBeforeClick');
            $(self).trigger(e, [i]);
            if (e.isDefaultPrevented()) { return self;}

            e.type = 'onClick';
            $(self).trigger(e, [i]);
            effects[conf.effect].call(self, i, function() {
                tab.toggleClass(conf.current);
            });
        }
    });

    $.fn.multiAccordion = function(paneSelector, conf) {

        var el = this.data('multiAccordion');

        if (el) { return el;}
        conf = $.extend({}, tools.multiAccordion.conf, conf);

        this.each(function() {
            el = new multiAccordion($(this), paneSelector, conf);
            $(this).data('multiAccordion', el);
        });

        return conf.api ? el : this;
    }

})(jQuery);
