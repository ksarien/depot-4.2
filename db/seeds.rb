# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create(:title => 'Web Design for Developers',
               :description => %{<p><em>Web Design for Developers</em> will show you how to make your web-based application look professionally designed. We'll help you learn how to pick the right colors and fonts, avoid costly interface and accessibility mistakes -- your application will really come alive. We'll also walk you through some common Photoshop and CSS techniques and work through a web site redesign, taking a new design from concept all the way to implementation.</p>},
               :image_url => '/images/design.jpg',
               :price => 42.95)

Product.create(:title => 'Programming Ruby 1.9',
               :description => %{<p>Ruby is the fastest growing and most exciting dynamic language out there. If you need to get working programs delivered fast, you should add Ruby to your toolbox.</p>},
               :image_url => '/images/ruby19.jpg',
               :price => 49.50)

Product.create(:title => 'Rails Test Prescriptions',
               :description => %{<p><em>Rails Test Prescriptions</em> is a comprehensive guide to testing Rails applications, covering Test-Driven Development from both a theoretical perspective (why to test) and from a practical perspective (how to test effectively). It covers the core Rails testing tools and procedures for Rails 2 and Rails 3, and introduces popular add-ons, including Cucumber, Shoulda, Machinist, Mocha, and Rcov.</p>},
               :image_url => '/images/rtp.jpg',
               :price => 43.75)

Product.create(:title => 'Programming Perl, 4th Edition',
               :description => %{<p>Adopted as the undisputed <em>Perl</em> bible soon after the first edition appeared in 1991, Programming Perl is still the go-to guide for this highly practical language. Perl began life as a super-fueled text processing utility, but quickly evolved into a general purpose programming language that’s helped hundreds of thousands of programmers, system administrators, and enthusiasts, like you, get your job done.</p>},
               :image_url => '/images/perl.jpg',
               :price => 41.45)

Product.create(:title => 'Introducing HTML5 Game Development',
               :description => %{<p>Making video games is hard work that requires technical skills, a lot of planning, and—most critically—a commitment to completing the project. With this hands-on guide, you’ll learn step-by-step how to create a real 2D game from start to finish. In the process, you’ll use Impact, the JavaScript game framework that works with HTML5’s Canvas element.</p>},
               :image_url => '/images/html5.jpg',
               :price => 44.75)

