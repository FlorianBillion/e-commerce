<?php

namespace Ecommerce\EcommerceBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Ecommerce\EcommerceBundle\Entity\Product;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();
        $products = $em->getRepository('EcommerceBundle:Product')->findAll();

        return $this->render('EcommerceBundle:Default:index.html.twig', array('products' => $products));
    }

    public function descriptionAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $products = $em->getRepository('EcommerceBundle:Product')->findAll();

        return $this->render('EcommerceBundle:Default:description.html.twig', array('idFind' => $id, 'products' => $products));
    }

    public function cartAction()
    {
        return $this->render('EcommerceBundle:Default:cart.html.twig');
    }

    public function searchAction($name)
    {
        $em = $this->getDoctrine()->getManager();
        $products = $em->getRepository('EcommerceBundle:Product')->findBy(array('name' => $name));

        return $this->render('EcommerceBundle:Default:index.html.twig', array('products' => $products));
    }

    public function addCartAction($id, Request $request)
    {
        $session = $this->get('request')->getSession();


        return $this->redirect($this->generateUrl('cart'));
    }

    public function deleteCartAction($id)
    {
        return $this->redirect($this->generateUrl('cart'));
    }

    public function addProductAction()
    {
        $em = $this->getDoctrine()->getManager();

        $product = new Product();
        $product->setName('Bushnell Jumelles');
        $product->setCategorie('Optique');
        $product->setDescription('Optique-Type de machine : Jumelles de vision nocturne avec un grossissement de 4x et une lentille d\'objectif de 50 mm');
        $product->setPrice('527.82');
        $product->setPhoto('https://images-na.ssl-images-amazon.com/images/I/71OJZ8yyRPL._SL1500_.jpg');

        $em->persist($product);

        $product2 = new Product();
        $product2->setName('Support TV en verre ');
        $product2->setCategorie('Meuble');
        $product2->setDescription('MMT 1100 mm Support TV en verre Transparent Chrome Argent jambe pour 81,3 cm à 127 cm écrans LCD LED Smart TV');
        $product2->setPrice('89.00');
        $product2->setPhoto('https://images-na.ssl-images-amazon.com/images/I/61icRp83BKL._SL1364_.jpg');

        $em->persist($product2);


        $product3 = new Product();
        $product3->setName('Bqeel Android TV');
        $product3->setCategorie('Home Cinema');
        $product3->setDescription('Processeur Amlogic S905X : Processeur plutôt puissant S905X doté de 4 cœurs 64bit (cadencé a 2Ghz), et d\'un processeur graphique ARM Mali-450. Full Quad core, 2.0GHz fréquence ultra -haute (DVFS) pour un fonctionnement plus rapide et stable.<br>Elle tourne sous Android 6.0 Marshmallow , dispose de 1GO de ram DDR3 et la mémoire ROM de 8 Gb avec une réelle fluidité des actions que nous allons réalisé.<br>Côté connectique : 2 Ports USB 2.0, un port MicroSDXC (64 Go max conseillé), un port ethernet, une sortie optique, une sortie audio / vidéo Jack 3,5mm et le Wifi en b/g/n. <br>Compatible avec le 4K l\'ultra HD : ces puces supportent les vidéos aux formats H265/HEVC et la 4K, et en plus les 4K VP9 et HDR par rapport à la puce S905 normale OTA : Elle fournit OTA (Over The Air) unique update service qui promet de renouveler les derniers addons et la version de firmware à temps. Vous pouvez facilement mettre à jour la version du micro logiciel.');
        $product3->setPrice('39.99');
        $product3->setPhoto('https://images-na.ssl-images-amazon.com/images/I/61FTAJLzczL._SL1500_.jpg');

        $em->persist($product3);


        $product4 = new Product();
        $product4->setName('Canon EOS 1300D');
        $product4->setCategorie('Photo');
        $product4->setDescription('Canon EOS 1300D / Rebel T6 / KISS X80 18-55 / 3.5-5.6 EF-S IS II Appareils Photo Numériques 18.7 Mpix Noir');
        $product4->setPrice('380.00');
        $product4->setPhoto('https://images-na.ssl-images-amazon.com/images/I/81LFMrgSq0L._SL1500_.jpg');

        $em->persist($product4);


        $product5 = new Product();
        $product5->setName('Batterie Externe10000mAh');
        $product5->setCategorie('Accessoires');
        $product5->setDescription('Kinps® Batterie Externe10000mAh Double USB de Secours Chargeur Portable avec LED Power Bank Output Intelligent pour iPhone, iPad et Les Appareils Android(Argent)');
        $product5->setPrice('11.99');
        $product5->setPhoto('https://images-na.ssl-images-amazon.com/images/I/7137HDlUjrL._SL1500_.jpg');

        $em->persist($product5);


        $product6 = new Product();
        $product6->setName('Armée tactique Vest');
        $product6->setCategorie('Vêtement');
        $product6->setDescription('Cs Champ Swat Tactical Army Vest Vest extérieure Cs Jeu Vest cosplay de Counter Strike Jeu Vest-322');
        $product6->setPrice('43.85');
        $product6->setPhoto('https://images-na.ssl-images-amazon.com/images/I/71NFJKaqYEL._SL1200_.jpg');

        $em->persist($product6);


        $product7 = new Product();
        $product7->setName('Mysj 12 Côtés');
        $product7->setCategorie('Jouet');
        $product7->setDescription('Creative Anti-anxiété Cube Soulager le Stress Jouet Pour Adultes Et Enfants');
        $product7->setPrice('15.99');
        $product7->setPhoto('https://images-na.ssl-images-amazon.com/images/I/51EnOxwy6UL._SL1001_.jpg');

        $em->persist($product7);


        $product8 = new Product();
        $product8->setName('Fidget Cube');
        $product8->setCategorie('Jouet');
        $product8->setDescription('Objet révolutionnaire de Soulagement stress/anxiété');
        $product8->setPrice('9.58');
        $product8->setPhoto('https://images-na.ssl-images-amazon.com/images/I/61XAfds9a4L._SL1428_.jpg');

        $em->persist($product8);


        $product9 = new Product();
        $product9->setName('Hand Spinner');
        $product9->setCategorie('Jouet');
        $product9->setDescription('Widget Focus Jouet EDC Poche Triangle Desktoy Cadeau en Plastique pour Adultes, Enfants');
        $product9->setPrice('4.99');
        $product9->setPhoto('https://images-na.ssl-images-amazon.com/images/I/61flZ1uYQLL._SL1000_.jpg');

        $em->persist($product9);


        $product10 = new Product();
        $product10->setName('Support en Bois');
        $product10->setCategorie('Epées');
        $product10->setDescription('Repliques Presentoir Katana Epee Sabre 16 places');
        $product10->setPrice('59.90');
        $product10->setPhoto('https://images-na.ssl-images-amazon.com/images/I/41K9cxYIMzL._SY355_.jpg');

        $em->persist($product10);

        $em->flush();

        return $this->render('EcommerceBundle:Default:cart.html.twig');
    }
}
