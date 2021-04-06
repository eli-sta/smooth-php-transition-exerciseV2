
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `keyid` int(10) UNSIGNED NOT NULL COMMENT 'Key For Article',
  `Title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'up to 200 words of title.  Main way of humans identifying article',
  `Text` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The text',
  `CreationDate` datetime DEFAULT NULL COMMENT 'Date record first created',
  `LiveDate` datetime DEFAULT NULL,
  `ArticleTypeID` smallint(5) UNSIGNED NOT NULL COMMENT 'Type of article'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='An Article';

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`keyid`, `Title`, `Text`, `CreationDate`, `LiveDate`, `ArticleTypeID`) VALUES
(1, 'ABB', 'ABB is a global leader in power and automation technologies that enable utility and industry customers to improve their performance while lowering environmental impact.', '2020-01-02 00:00:00', '2020-01-12 00:00:00', 7),
(2, 'Aesica Pharmaceuticals', '<p>Aesica, a Consort Medical business, is a full-service partner for the development and manufacturing of active pharmaceutical ingredients (APIs) and finished dosage forms. We partner with customers to provide a flexible, efficient and dependable service that leverages our innovative approach and more than 30 years’ experience.</p>\r\n\r\n<p>Our manufacturing facilities meet the highest standards according to regulatory and customer audits, allowing us to effectively manage our customers’ supply chain. We continuously invest in the latest technologies and develop our people to stay at the forefront of the industry.</p>\r\n\r\n<p>As part of the Consort Medical Group, we work together with our Bespak colleagues to accelerate the route to market of drug-device combinations, through streamlined supply, for our customers at any stage of the development cycle. Across the group, we currently have 11 facilities across Europe supported by a global sales presence including North and South America, China, India, and Japan.</p>\r\n\r\n<h3>Our offering</h3>\r\n<p>Aesica is a full-service developer and manufacturer [CDMO] of active pharmaceutical ingredients (APIs) and finished dosage forms. We partner with customers to provide a flexible, efficient and dependable service that leverages our innovative approach and more than 30 years’ experience. We continuously invest in the latest technologies and develop our people to stay at the forefront of the industry. As part of the Consort Medical Group, we work together with our Bespak colleagues, the drug delivery device experts, to accelerate the route to market of drug-device combinations, through streamlined supply, for our customers at any stage of the development cycle.</p>\r\n\r\n<h3>APIs</h3>\r\n<ul>\r\n<li>We are a global leader in API generic manufacture in areas such as non-steroidal anti-inflammatory (NSAID’s) products, antidepressants and anaesthetics, and all our generic APIs are manufactured according to cGMP and appropriate regulatory frameworks (MHRA, FDA, PDMA, CEP, etc.).</li>\r\n<li>Our team is capable of producing different forms of APIs, as white powders, tablets or capsules, depending on the customers’ requirements.</li>\r\n</ul>\r\n\r\n\r\n\r\n<h3>Formulation</h3>\r\n<ul>\r\n<li>Our new development centre in Queenborough, UK, has drug formulation capabilities that can handle high potency drugs and manufacture cGMP clinical batches to support Phase I to Phase III trials.</li>\r\n</ul>\r\n\r\n\r\n\r\n<h3>Finished dosage forms</h3>\r\n<ul>\r\n<li>Our finished dosage offering comprises a range of capabilities in manufacturing and packaging, meeting the diverse needs of customers from the pre-clinical stage to high volume commercial supply.</li>\r\n<li>We are leading in serialisation, which is fully implemented across our business including artwork services for customers, allowing products to be tracked and traced to help to overcome counterfeiting.</li>\r\n<li>We are the first CDMO to implement a FDA-approved semi-continuous tablet processing line for development and commercial supply purposes, offering faster development times, improved drug development efficiency and significant reductions in the cost of manufacturing.</li>\r\n</ul>\r\n\r\n', '2020-01-06 00:00:00', '2020-01-11 00:00:00', 8),
(3, 'AGMA', '<p>Our healthcare range has been a key part of blue-chip pharmaceutical companies and the NHS for over 20 years. Our range includes key disinfection products such as 70% IPA & DE, Neutral Detergent and our award-winning sporicidal product Zyceine. All our products are available in several different formats including aerosol, wipe, and trigger spray. </p>\r\n\r\n<p>For more information please contact AGMA directly and we will happily discuss any of our product range further. Call us on +44 1434 320 598 for a FREE tailored quote or email us: webenquiries@agma.co.uk</p>\r\n\r\n<h3>Sterile or Non-Sterile Products?</h3>\r\n\r\n<p>This decision is driven by the level of cleanliness at which you need to operate and typically this is driven by the processes carried out. For example, when referencing the requirements of GMP associated with medical production areas, the EU Commission state that;</p>\r\n\r\n<p>‘In Grade A and Grade B cleanrooms, disinfectants and detergents should be sterile prior to use’.</p>\r\n\r\n<p>If you are servicing a Grade C (ISO Class 7/8), Grade D (ISO Class B) cleanroom or an unclassified area then AGMA advises to use whatever works best for you! We have customers who will only use sterile products in their cleanroom regardless of classification and others who don’t have a need for the sterile range of products. It is for this reason however that we provide a choice of both sterile and non-sterile products developed for use in areas ranging from Grade A (ISO Class 4) cleanrooms to unclassified areas where non-sterile disinfectants and detergents are required for a good standard of cleanliness and hygiene.</p>\r\n\r\n\r\n<h3>Sterile and Non-Sterile Biocidal Disinfectants</h3>\r\n\r\n<p>For over half a century we have built up a reputation for quality and service, developing, manufacturing and delivering specialist Cleaning and Biocidal solutions for our Healthcare customers.</p>\r\n\r\n<p>We specialise in the production and provision of Sterile and Non Sterile Cleaning and Disinfection products in various delivery formats to suit our customers needs.</p>\r\n\r\n<p>We pride ourselves on product quality and customer service and are accredited with the BS EN ISO 9001:2015. All products are manufactured in accordance with cGMP and we are audited internally and externally periodically by representatives from both the NHS in the UK and the pharmaceutical industry.</p>\r\n\r\n<p>Choose a product range to suit your needs:</p>\r\n\r\n<p><a href=\'https://www.agma.co.uk/cleanroom/products/all-products/\'><strong>All products</strong></a> | <a href=\'https://www.agma.co.uk/cleanroom/products/sterile/\'><strong>Sterile</strong></a> | <a href=\'https://www.agma.co.uk/cleanroom/products/non-sterile/\'><strong>Non sterile</strong></a></p>\r\n', '2020-01-07 00:00:00', '2020-02-01 00:00:00', 8),
(5, 'Almac Group', '<p>The services range from R&D, biomarker discovery development and commercialisation, API manufacture, formulation development, clinical trial supply, IRT (IXRS®) through to commercial-scale manufacture.</p>\r\n\r\n<p>The international company is a privately owned organisation that has organically grown over almost 50 years and now employs in close to 5,000 highly skilled personnel. Almac is headquartered in Craigavon, Northern Ireland with operations in the UK, Europe, across the US (Pennsylvania, North Carolina and California) and in Asia (Singapore and Tokyo).</p>\r\n\r\n<p>Through our continual investment in the development of our state of the art services; from cutting edge biomarker and companion diagnostics through to step changes in the management of the clinical trial data and the clinical supply chain to biocatalytic manufacture of API, Almac ensures we are always there to support you across the product development lifecycle.</p>\r\n\r\n\r\n<p><strong>North American Headquarters:</strong></p>\r\n<p>25 Fretz Road</p>\r\n<p>Souderton</p>\r\n<p>PA 18964</p>\r\n<p>T: +1 (215) 660 8500</p>\r\n\r\n<p><strong>APAC Headquarters:</strong></p>\r\n<p>Almac Pharmaceutical Services Pte. Ltd.</p>\r\n<p>9 Changi South Street 3</p>\r\n<p>Unit 01-01 Singapore</p>\r\n<p>486361</p>\r\n<p>T: +65 63090720</p>\r\n', '2020-01-08 00:00:00', '2020-01-28 00:00:00', 7),
(6, 'AM Technology', '<p>Coflore® flow reactors from AM Technology are actively mixed and multi-stage with efficient plug\r\nflow characteristics. Mixing efficiency and plug flow performance are independent of residence time\r\nfacilitating reaction times ranging from a few seconds to many hours, irrespective of pump flow rate\r\nor process fluid velocity. Novel reactor designs enhance productivity, versatility, and process\r\nscalability to degrees previously considered unique to batch manufacture.</p>\r\n\r\n<p>Coflore flow reactors are compatible with all types of reaction media, including liquid, liquid-liquid,\r\nsolid-liquid, liquid-gas, and solid-liquid-gas, producing up to thousands of tonnes of material per year\r\nfrom a single reactor.</p>\r\n\r\n<p>The entire Coflore flow reactor range exhibits excellent solids-handling capabilities for slurries with\r\nsolids up 50% w/w.</p>\r\n\r\n<h3>Coflore Flow Reactor Range</h3>\r\n<p>The <strong>Coflore ACR</strong> is an actively mixed, bench-top flow reactor, used within a laboratory environment\r\nfor developing and optimising scalable flow chemistry solutions, or for when limited quantities of\r\nreactants or material are available or required. The Coflore ACR reactor process channel is divided\r\ninto ten reactor cells, equivalent to ten CSTRs in series for plug flow.</p>\r\n\r\n<p>For a 5-minute residence time, the Coflore ATR produces 1.2 L of material per hour.</p>\r\n\r\n<p>The <strong>Coflore ATR</strong> is an actively mixed, tubular flow reactor of up to eight reactor tubes in series for\r\nplug flow, operating up to 10 L in reactor volume to produce material at the pilot and production\r\nscales. Each of the tubes can be heated or cooled independently, and reagents can be added, or\r\nsamples removed, at each end of each reactor tube.</p>\r\n\r\n<p>For a 5-minute residence time, the Coflore ATR produces 120 L of material per hour.</p>\r\n\r\n<p>The <strong>Coflore RTR</strong> has a 100 L capacity that is capable of processing countless reactor volumes without\r\ninterruption. Such throughputs have the potential to produce many thousands of tons of material\r\nper year from a single reactor. The Coflore RTR operates as a ten-stage, actively mixed, and self-\r\nbaffling plug flow reactor.</p>\r\n\r\n<p>For a 5-minute residence time, the Coflore RTR produces 1,200 L of material per hour.</p>\r\n', '2020-01-09 00:00:00', '2020-01-29 00:00:00', 7),
(7, 'Apollo Scientific', '<h2>Product Areas</h2>\r\n\r\n<h3>Chemical Products</h3>\r\n\r\n<p>We offer a range of over 90,000 chemicals for research and industry, many of which are unique to Apollo Scientific, with new compounds added regularly. </p>\r\n\r\n<p>Explore our diverse catalogue:</p>\r\n<ul>\r\n<li>27,000+ Fluorinated building blocks </li>\r\n<li>30,000+ nitrogen-, sulfur-, and oxygen-containing heterocyclic building blocks</li>\r\n<li>17,000+ non-fluorinated aliphatic, aromatic and carbocyclic organic building blocks </li>\r\n<li>A wide range of inorganic and organometallic compounds</li>\r\n</ul>\r\n<p><strong><a href=\'https://www.apolloscientific.co.uk/products/chemical\'>Search our store</a></strong></p>\r\n\r\n<h3>Life Sciences</h3>\r\n<p>Our life science range of products caters to routine demands for antibiotics and buffers alongside more specialised requests. Our catalogue contains over 5,000 items; in addition to our rapidly expanding range of biochemical reagents, we now list a large number of recombinant proteins, antibodies, enzymes and growth factors, all offering excellent value without compromising on quality.</p>\r\n<p>Our range includes compounds used for:</p>\r\n<ul>\r\n<li>Cell analysis and detection</li>\r\n<li>Cellular and molecular biology</li>\r\n<li>Genomics and Electrophoresis</li>\r\n<li>Immunology</li>\r\n<li>Plant biology</li>\r\n</ul>\r\n<p><a href=\'https://www.apolloscientific.co.uk/products/life-sciences\'>Search our store</a></p>\r\n\r\n\r\n<h3>Spectroscopy Products</h3>\r\n\r\n<p>Apollo’s diverse spectroscopy products span a range of key analytic techniques in use today.<p>\r\n\r\n<p>We offer a range of deuterated solvents and consumables for NMR, IR and UV spectroscopy and Mass Spectrometry, as well as a range of Silica Gels for separations</p>\r\n\r\n<strong><p><a href=\'https://www.apolloscientific.co.uk/products/spectroscopy\'>Search our store</a></p></strong>\r\n\r\n<p><a href=\'https://www.apolloscientific.co.uk/catalogue-request\'><strong>Request a catalogue</strong></a></p>\r\n\r\n<h3>In-house Manufacturing </h3>\r\n<p>Our in-house manufacturing facilities enable us to undertake a wide variety of tasks, including custom synthesis, scale-up of existing routes, technology transfer to our commercial partners and development of novel compounds for our catalogue. </p>\r\n\r\n<p>We are specialists in manufacturing small multinational and unusual substituted arenes and heterocycles. Currently we carry out reactions between -78°C and +250°C in conventional 50ml to 20L glass vessels under inert reactions conditions if required. As well as conventional batch synthesis, we operate a flow reactor system to assist with new reaction development and simple scale up of optimised reactions. </p>\r\n\r\n<p><a href=\'https://www.apolloscientific.co.uk/in-house-manufacturing\'><strong>Find out more</strong></a></p>\r\n', '2020-01-15 00:00:00', '2020-01-22 00:00:00', 7),
(88, 'Aptuit Pharmaceutical Services', 'Our mission is to engineer a better drug development process to serve these two very different clients equally well but in very different ways.<br><br>Aptuit is assembling a complete suite of services from discovery to proof-of-concept and constructing the related manufacturing services from discovery to launch.  Along the way, we are opportunistically inventing and acquiring novel technologies and services that allow our clients to differentiate their drug development programs. Scientific Operations covers our discovery to proof-of-concept services, the complete suite of services has been assembled in North America, Europe, and Asia. Clinical Operations is our related manufacturing services from discovery to launch and we are building and buying these capabilities in competitive cost environments.  Aptuit was founded in 2004 and is headquartered in Greenwich, CT.', '2020-01-29 00:00:00', '2020-01-31 00:00:00', 7),
(90, 'Bachem', '<p>Bachem is an independent, technology-based, public biochemicals company providing full service to the pharma and biotech industry. Bachem is specialised in the process development and the manufacturing of peptides and complex organic molecules as active pharmaceutical ingredients (APIs), as well as innovative biochemicals for research purposes. With headquarters in Bubendorf, Switzerland, and affiliates in Europe and the US, Bachem works on a global scale and holds a leading position in the field of peptides.</p>\r\n\r\n<br><p><strong>Bachem expertise can help you in the following ways.</strong> </p>\r\n<ul>\r\n<li>Leading supplier of scale GMP Peptide Production.</li>  \r\n<li>Regulatory and technical support with a wide range of analytical data and technical papers available on website.</li>\r\n<li>Custom Peptides synthesis as well as non-peptidic biochemicals for research and development.</li>  \r\n<li>Comprehensive Online Catalog covering Peptides, Amino Acid derivatives, non-peptidic biochemicals and immunology products.</li>\r\n\r\n</ul>', '2020-01-29 00:00:00', '2020-01-31 00:00:00', 7),
(342, 'Bassaire', '<p>Over the past 55 years Bassaire has designed and built cleanrooms for some of the world\'s leading blue chip companies, hospitals, universities, research laboratories and Government institutions. Pharmaceutical, micro-electronics/semiconductor, medical, aerospace and optics industries have all benefited from Bassaire\'s design and build capability.\r\n</p>\r\n\r\n<p>Bassaire, with 9001 accreditation, has unrivalled experience in the design, installation and validation of the cleanroom facility.</p>\r\n\r\n<p>Based in Southampton and Manchester in the United Kingdom, Bassaire is a well established firm specialising in all aspects of \'clean air engineering.\'</p>\r\n\r\n<p>The company offers a full \'turnkey\' solution, from cleanrooms and containment laboratories to pharmacy aseptic suites, while also manufacturing a complete range of clean air products including: vertical and horizontal airflow workstations; high and low integrity isolators (mini environments); glove boxes; air showers; and microbiological safety cabinets. \r\n\r\n', '2020-01-29 00:00:00', '2020-01-31 00:00:00', 7),
(567, 'Bradman Lake Group UK Integrated Packaging System', 'The Bradman Lake Group is a privately owned organisation specialising in the design, development, manufacture and service of packaging machinery for an extensive range of Global Partner Organisations.<br /><br />Combining the strength of three world renowned brands &#8211; Bradman Lake, Autowrappers and Europack &#8211; the Group is at the forefront of Integrated Packaging Solutions.<br /><br />Specialising in the design, manufacture, sale and service of Cartoning and robotic solutions machinery, Product handling, feeding, distribution and storage systems, Flow wrapping applications, Roll-stick wrapping machines and End-of line packaging machinery (film wrapping and board packing) over 200 years of specialised experience are combined in one class leading supplier.<br /><br />The Bradman Lake Group\'s equipment is at work in more than 20,000 installations globally, supported by an extensive global network of sales and service teams.', '2020-01-30 00:00:00', '2020-01-31 00:00:00', 8),
(568, 'Review discusses collagen supplementation for skin maintenance\r\n', '<p>Researchers from Minerva Research Labs have published a paper reviewing “skin collagen production, structure and function throughout the lifestages, emphasising its relationship with health, appearance and beauty”. </p>\r\n<p>The authors note that type I collagen is the main form found in skin, at roughly 80% of skin collagen. The fibre is understood to be an important contributor to the skin’s firmness and elasticity. It is produced by a mesenchymal cell type in the dermis called fibroblasts, however these cells become less active from adulthood, with collagen production declining at a rate of 1-1.5% a year. This rate of decline is further exacerbated by external factors such as smoking and exposure to sunlight. </p>\r\n<p>The rate of decline in the body’s production of collagen is not uniform however. Post-pregnancy periods and menopause are associated with steeper drops in collagen. During and after pregnancy, collagen production sees a significant increase followed by rapid decrease, while during menopause, skin collagen content begins to decline by an average of 2.1% each year. The gradual age-associated decline in testosterone experienced by males has a less profound impact on collagen production. </p>\r\n<p class=\"CQUOT\"> Clinical studies have shown that ingesting collagen peptides can stimulate fibroblasts to produce more collagen <p>\r\n<p>Clinical studies have shown that ingesting collagen peptides can stimulate fibroblasts to produce more collagen, mitigating the impact of ageing and other external factors on the health of skin and other tissues. Long term supplement use has been associated with a reported improvement in skin hydration and elasticity. </p>\r\n<p>One recent study investigated the efficacy of Gold Collagen Forte, a hydrolysed collagen-based nutraceutical, on fibroblast function. The results of this study provided a “scientific, cell-based, rationale for the positive effects of collagen-based nutraceutical supplements on skin properties,” the authors say. The results built on earlier research which showed the supplement to significantly increase skin elasticity following 90 days of treatment. </p>\r\n<p>Another open-label study on 217 female volunteers evaluated the effects of the Pure Gold Collagen nutritional supplement on visible ageing signs. Measuring the nasolabial folds, (which extend from the sides of the nose to the corners of the mouth), the study reported a 24% reduction in the average depth compared to the baseline. </p>\r\n<p>In addition to the maintenance of firm and healthy skin, dietary supplementation may also provide protection against damage caused by acne during adolescence. Studies have suggested a diet rich in vitamins A, D, B3 and B5 can help reduce inflammation, lesions and scars, with vitamin B3 commonly being used to reduce swelling, redness and regulate skin tone. Vitamin B5 has also been shown in clinical studies to reduce mild to moderate facial acne in 8 to 12 weeks respectively. </p>\r\n<p>The researchers conclude that finding mechanisms to mitigate fibroblast cells’ declining collagen production and replication is “an exciting area of research that may well offer new treatments in the fight against skin ageing”. </p>\r\n<p>Full text of the paper can be accessed <a href=\'https://parjournal.net/article/view/3863#sec14\'>here</a>.</p>\r\n\r\n', '2020-01-30 00:00:00', '2020-01-30 09:49:42', 8);

-- --------------------------------------------------------

--
-- Table structure for table `articletype`
--

CREATE TABLE `articletype` (
  `keyid` smallint(5) UNSIGNED NOT NULL COMMENT 'Type of article',
  `Description` varchar(45) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin COMMENT='Type of article';

--
-- Dumping data for table `articletype`
--

INSERT INTO `articletype` (`keyid`, `Description`) VALUES
(7, 'Company Profile'),
(8, 'Article');

-- --------------------------------------------------------

--
-- Table structure for table `companiesforarticle`
--

CREATE TABLE `companiesforarticle` (
  `ArticleID` int(10) UNSIGNED NOT NULL COMMENT 'Key For Article',
  `CompanyID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companiesforarticle`
--

INSERT INTO `companiesforarticle` (`ArticleID`, `CompanyID`) VALUES
(1, 1),
(5, 2),
(6, 3),
(7, 4),
(88, 5),
(89, 56),
(90, 6),
(342, 7);

-- --------------------------------------------------------
--
-- Table structure for table `option`
--

CREATE TABLE `option` (
    `id` int(11) NOT NULL,
    `name` varchar(32) COLLATE utf8mb4_bin NOT NULL,
    `value` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `option`
--

INSERT INTO `option` (`id`, `name`, `value`) VALUES
(1, 'display_price', 'yes'),(2, 'price', '50');

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `keyid` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`keyid`, `name`) VALUES
(1, 'ABB'),
(2, 'Almac Group'),
(3, 'AM Technology'),
(4, 'Apollo Scientific'),
(5, 'Aptuit Pharmaceutical Services'),
(6, 'Bachem'),
(7, 'Bassaire'),
(8, 'Bradman Lake Group UK Integrated Packaging System');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`keyid`);

--
-- Indexes for table `articletype`
--
ALTER TABLE `articletype`
  ADD PRIMARY KEY (`keyid`);

--
-- Indexes for table `companiesforarticle`
--
ALTER TABLE `companiesforarticle`
  ADD UNIQUE KEY `ArticleID` (`ArticleID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`keyid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `keyid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Key For Article', AUTO_INCREMENT=174368;

--
-- AUTO_INCREMENT for table `articletype`
--
ALTER TABLE `articletype`
  MODIFY `keyid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Type of article', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `keyid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
