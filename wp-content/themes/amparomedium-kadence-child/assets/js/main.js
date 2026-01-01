/**
 * AmparoMédium - Main JavaScript
 * 
 * @package AmparoMedium_Kadence_Child
 * @version 1.0.0
 */

(function($) {
    'use strict';

    /**
     * AmparoMédium Theme Object
     */
    const AmparoMedium = {
        
        /**
         * Initialize
         */
        init: function() {
            this.headerScroll();
            this.smoothScroll();
            this.animateOnScroll();
            this.mobileMenu();
            this.backToTop();
            this.lazyLoadImages();
        },

        /**
         * Header scroll effect
         */
        headerScroll: function() {
            const header = document.querySelector('.site-header');
            
            if (!header) return;

            const scrollThreshold = 50;
            
            const handleScroll = () => {
                if (window.scrollY > scrollThreshold) {
                    header.classList.add('header-scrolled');
                } else {
                    header.classList.remove('header-scrolled');
                }
            };

            // Initial check
            handleScroll();

            // Throttled scroll listener
            let ticking = false;
            window.addEventListener('scroll', () => {
                if (!ticking) {
                    window.requestAnimationFrame(() => {
                        handleScroll();
                        ticking = false;
                    });
                    ticking = true;
                }
            });
        },

        /**
         * Smooth scroll for anchor links
         */
        smoothScroll: function() {
            document.querySelectorAll('a[href^="#"]').forEach(anchor => {
                anchor.addEventListener('click', function(e) {
                    const targetId = this.getAttribute('href');
                    
                    if (targetId === '#') return;
                    
                    const target = document.querySelector(targetId);
                    
                    if (target) {
                        e.preventDefault();
                        
                        const headerHeight = document.querySelector('.site-header')?.offsetHeight || 0;
                        const targetPosition = target.getBoundingClientRect().top + window.pageYOffset - headerHeight;
                        
                        window.scrollTo({
                            top: targetPosition,
                            behavior: 'smooth'
                        });
                    }
                });
            });
        },

        /**
         * Animate elements on scroll
         */
        animateOnScroll: function() {
            const animatedElements = document.querySelectorAll('.am-animate-on-scroll');
            
            if (!animatedElements.length) return;

            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('am-animated');
                        
                        // Get animation type from data attribute
                        const animationType = entry.target.dataset.animation || 'fadeInUp';
                        entry.target.classList.add(`am-animate-${animationType}`);
                        
                        // Optionally unobserve after animating
                        observer.unobserve(entry.target);
                    }
                });
            }, {
                threshold: 0.1,
                rootMargin: '0px 0px -50px 0px'
            });

            animatedElements.forEach(el => observer.observe(el));
        },

        /**
         * Mobile menu toggle
         */
        mobileMenu: function() {
            const menuToggle = document.querySelector('.mobile-nav-trigger, .menu-toggle');
            const mobileNav = document.querySelector('.mobile-navigation, .primary-menu-container');
            
            if (!menuToggle || !mobileNav) return;

            menuToggle.addEventListener('click', () => {
                document.body.classList.toggle('mobile-menu-open');
                mobileNav.classList.toggle('is-open');
                menuToggle.classList.toggle('is-active');
                
                // Toggle aria-expanded
                const isExpanded = menuToggle.getAttribute('aria-expanded') === 'true';
                menuToggle.setAttribute('aria-expanded', !isExpanded);
            });

            // Close menu when clicking outside
            document.addEventListener('click', (e) => {
                if (!mobileNav.contains(e.target) && !menuToggle.contains(e.target)) {
                    document.body.classList.remove('mobile-menu-open');
                    mobileNav.classList.remove('is-open');
                    menuToggle.classList.remove('is-active');
                    menuToggle.setAttribute('aria-expanded', 'false');
                }
            });

            // Close menu on escape key
            document.addEventListener('keydown', (e) => {
                if (e.key === 'Escape' && mobileNav.classList.contains('is-open')) {
                    document.body.classList.remove('mobile-menu-open');
                    mobileNav.classList.remove('is-open');
                    menuToggle.classList.remove('is-active');
                    menuToggle.setAttribute('aria-expanded', 'false');
                }
            });
        },

        /**
         * Back to top button
         */
        backToTop: function() {
            // Create back to top button if it doesn't exist
            let backToTopBtn = document.querySelector('.am-back-to-top');
            
            if (!backToTopBtn) {
                backToTopBtn = document.createElement('button');
                backToTopBtn.className = 'am-back-to-top';
                backToTopBtn.innerHTML = '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="18 15 12 9 6 15"></polyline></svg>';
                backToTopBtn.setAttribute('aria-label', 'Volver arriba');
                document.body.appendChild(backToTopBtn);
                
                // Add styles
                const style = document.createElement('style');
                style.textContent = `
                    .am-back-to-top {
                        position: fixed;
                        bottom: 30px;
                        right: 30px;
                        width: 50px;
                        height: 50px;
                        border-radius: 50%;
                        background: linear-gradient(135deg, #9333ea 0%, #7c3aed 100%);
                        color: #fff;
                        border: none;
                        cursor: pointer;
                        opacity: 0;
                        visibility: hidden;
                        transform: translateY(20px);
                        transition: all 0.3s ease;
                        z-index: 9999;
                        display: flex;
                        align-items: center;
                        justify-content: center;
                        box-shadow: 0 4px 15px rgba(147, 51, 234, 0.4);
                    }
                    .am-back-to-top:hover {
                        transform: translateY(-3px);
                        box-shadow: 0 8px 25px rgba(147, 51, 234, 0.5);
                    }
                    .am-back-to-top.is-visible {
                        opacity: 1;
                        visibility: visible;
                        transform: translateY(0);
                    }
                    @media (max-width: 768px) {
                        .am-back-to-top {
                            bottom: 20px;
                            right: 20px;
                            width: 44px;
                            height: 44px;
                        }
                    }
                `;
                document.head.appendChild(style);
            }

            // Show/hide button on scroll
            const toggleVisibility = () => {
                if (window.scrollY > 500) {
                    backToTopBtn.classList.add('is-visible');
                } else {
                    backToTopBtn.classList.remove('is-visible');
                }
            };

            window.addEventListener('scroll', toggleVisibility);

            // Scroll to top on click
            backToTopBtn.addEventListener('click', () => {
                window.scrollTo({
                    top: 0,
                    behavior: 'smooth'
                });
            });
        },

        /**
         * Lazy load images
         */
        lazyLoadImages: function() {
            const lazyImages = document.querySelectorAll('img[data-src]');
            
            if (!lazyImages.length) return;

            const imageObserver = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        const img = entry.target;
                        img.src = img.dataset.src;
                        
                        if (img.dataset.srcset) {
                            img.srcset = img.dataset.srcset;
                        }
                        
                        img.classList.add('am-loaded');
                        imageObserver.unobserve(img);
                    }
                });
            }, {
                rootMargin: '50px 0px'
            });

            lazyImages.forEach(img => imageObserver.observe(img));
        }
    };

    /**
     * Document Ready
     */
    $(document).ready(function() {
        AmparoMedium.init();
    });

    /**
     * Window Load
     */
    $(window).on('load', function() {
        // Remove loading class from body
        $('body').removeClass('am-loading').addClass('am-loaded');
        
        // Trigger animations for visible elements
        $('.am-animate-on-scroll:visible').each(function() {
            const $el = $(this);
            if ($el.offset().top < $(window).height()) {
                $el.addClass('am-animated');
            }
        });
    });

    /**
     * Expose to global scope if needed
     */
    window.AmparoMedium = AmparoMedium;

})(jQuery);

