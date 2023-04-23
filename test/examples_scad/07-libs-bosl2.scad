include <../../solid2/extensions/bosl2/BOSL2/version.scad>;
include <../../solid2/extensions/bosl2/BOSL2/constants.scad>;
include <../../solid2/extensions/bosl2/BOSL2/transforms.scad>;
include <../../solid2/extensions/bosl2/BOSL2/distributors.scad>;
include <../../solid2/extensions/bosl2/BOSL2/mutators.scad>;
include <../../solid2/extensions/bosl2/BOSL2/color.scad>;
include <../../solid2/extensions/bosl2/BOSL2/attachments.scad>;
include <../../solid2/extensions/bosl2/BOSL2/shapes3d.scad>;
include <../../solid2/extensions/bosl2/BOSL2/shapes2d.scad>;
include <../../solid2/extensions/bosl2/BOSL2/drawing.scad>;
include <../../solid2/extensions/bosl2/BOSL2/masks3d.scad>;
include <../../solid2/extensions/bosl2/BOSL2/masks2d.scad>;
include <../../solid2/extensions/bosl2/BOSL2/math.scad>;
include <../../solid2/extensions/bosl2/BOSL2/paths.scad>;
include <../../solid2/extensions/bosl2/BOSL2/lists.scad>;
include <../../solid2/extensions/bosl2/BOSL2/comparisons.scad>;
include <../../solid2/extensions/bosl2/BOSL2/linalg.scad>;
include <../../solid2/extensions/bosl2/BOSL2/trigonometry.scad>;
include <../../solid2/extensions/bosl2/BOSL2/vectors.scad>;
include <../../solid2/extensions/bosl2/BOSL2/affine.scad>;
include <../../solid2/extensions/bosl2/BOSL2/coords.scad>;
include <../../solid2/extensions/bosl2/BOSL2/geometry.scad>;
include <../../solid2/extensions/bosl2/BOSL2/regions.scad>;
include <../../solid2/extensions/bosl2/BOSL2/strings.scad>;
include <../../solid2/extensions/bosl2/BOSL2/skin.scad>;
include <../../solid2/extensions/bosl2/BOSL2/vnf.scad>;
include <../../solid2/extensions/bosl2/BOSL2/utility.scad>;
include <../../solid2/extensions/bosl2/BOSL2/partitions.scad>;
include <../../solid2/extensions/bosl2/BOSL2/metric_screws.scad>;





union() {
	recolor(c = "purple") {
		path_extrude(path = [[0, 0, 0], [33, 33, 33], [66, 33, 40], [100, 0, 0], [150, 0, 0]]) {
			circle($fn = 6, r = 10);
		}
	}
	#bounding_box() {
		path_extrude(path = [[0, 0, 0], [33, 33, 33], [66, 33, 40], [100, 0, 0], [150, 0, 0]]) {
			circle($fn = 6, r = 10);
		}
	}
	back(y = 100) {
		diff() {
			cuboid(size = 50) {
				tag(tag = "remove") {
					attach(from = TOP) {
						sphere(d = 40);
					}
				}
				tag(tag = "keep") {
					attach(from = CTR) {
						cylinder(d = 10, h = 40);
					}
				}
			}
		}
	}
	left(x = 100) {
		metric_bolt(headtype = "hex", l = 40, size = 20);
	}
	fwd(y = 100) {
		heightfield(bottom = -1, data = [[-0.7158354760, -0.0977712694, 0.5538188132, 0.9508184515, 0.9437285852, 0.5643904319, -0.0152890040, -0.5729354351, -0.9259311738, -0.9866658946, -0.7710099755, -0.3697720609, 0.0961793703, 0.5171216654, 0.8199555226, 0.9753959211, 0.9911848273, 0.8983805029, 0.7370998663, 0.5456621281, 0.3544785437, 0.1841790652, 0.0465985146, -0.0528441951, -0.1125104888, -0.1323517501, -0.1125104888, -0.0528441951, 0.0465985146, 0.1841790652, 0.3544785437, 0.5456621281, 0.7370998663, 0.8983805029, 0.9911848273, 0.9753959211, 0.8199555226, 0.5171216654, 0.0961793703, -0.3697720609, -0.7710099755, -0.9866658946, -0.9259311738, -0.5729354351, -0.0152890040, 0.5643904319, 0.9437285852, 0.9508184515, 0.5538188132, -0.0977712694], [-0.0977712694, 0.5780962926, 0.9677093359, 0.9093481911, 0.4569034415, -0.1740370717, -0.7211568839, -0.9880316241, -0.9071867414, -0.5396963022, -0.0276060063, 0.4701369183, 0.8302999956, 0.9916552086, 0.9545112552, 0.7625584505, 0.4787847820, 0.1647258448, -0.1323517501, -0.3839842382, -0.5789496358, -0.7185332705, -0.8110635436, -0.8672002621, -0.8965494244, -0.9055783620, -0.8965494244, -0.8672002621, -0.8110635436, -0.7185332705, -0.5789496358, -0.3839842382, -0.1323517501, 0.1647258448, 0.4787847820, 0.7625584505, 0.9545112552, 0.9916552086, 0.8302999956, 0.4701369183, -0.0276060063, -0.5396963022, -0.9071867414, -0.9880316241, -0.7211568839, -0.1740370717, 0.4569034415, 0.9093481911, 0.9677093359, 0.5780962926], [0.5538188132, 0.9677093359, 0.8961364196, 0.4001993726, -0.2677948252, -0.8054445871, -0.9999248174, -0.8027125452, -0.3206024194, 0.2536796241, 0.7279131199, 0.9753959211, 0.9599849293, 0.7239439306, 0.3544785437, -0.0528441951, -0.4210142025, -0.7040964370, -0.8871400354, -0.9784905125, -0.9996939741, -0.9766101759, -0.9333656865, -0.8892231315, -0.8575975897, -0.8462204042, -0.8575975897, -0.8892231315, -0.9333656865, -0.9766101759, -0.9996939741, -0.9784905125, -0.8871400354, -0.7040964370, -0.4210142025, -0.0528441951, 0.3544785437, 0.7239439306, 0.9599849293, 0.9753959211, 0.7279131199, 0.2536796241, -0.3206024194, -0.8027125452, -0.9999248174, -0.8054445871, -0.2677948252, 0.4001993726, 0.8961364196, 0.9677093359], [0.9508184515, 0.9093481911, 0.4001993726, -0.2986026441, -0.8426112405, -0.9936231122, -0.7135482820, -0.1504336747, 0.4541842253, 0.8778684013, 0.9970765516, 0.8099508995, 0.4087860050, -0.0727487342, -0.5106954441, -0.8229869267, -0.9784905125, -0.9883875439, -0.8892231315, -0.7259123219, -0.5395308233, -0.3611783171, -0.2108600771, -0.0994089978, -0.0315617281, -0.0088513093, -0.0315617281, -0.0994089978, -0.2108600771, -0.3611783171, -0.5395308233, -0.7259123219, -0.8892231315, -0.9883875439, -0.9784905125, -0.8229869267, -0.5106954441, -0.0727487342, 0.4087860050, 0.8099508995, 0.9970765516, 0.8778684013, 0.4541842253, -0.1504336747, -0.7135482820, -0.9936231122, -0.8426112405, -0.2986026441, 0.4001993726, 0.9093481911], [0.9437285852, 0.4569034415, -0.2677948252, -0.8426112405, -0.9892668188, -0.6636338842, -0.0452551731, 0.5775305390, 0.9508042428, 0.9545112552, 0.6242995591, 0.1059186470, -0.4210142025, -0.8110635436, -0.9895644479, -0.9545833224, -0.7553386617, -0.4627160093, -0.1442896235, 0.1502477941, 0.3932055961, 0.5758065019, 0.7018171073, 0.7809125867, 0.8233862127, 0.8366556385, 0.8233862127, 0.7809125867, 0.7018171073, 0.5758065019, 0.3932055961, 0.1502477941, -0.1442896235, -0.4627160093, -0.7553386617, -0.9545833224, -0.9895644479, -0.8110635436, -0.4210142025, 0.1059186470, 0.6242995591, 0.9545112552, 0.9508042428, 0.5775305390, -0.0452551731, -0.6636338842, -0.9892668188, -0.8426112405, -0.2677948252, 0.4569034415], [0.5643904319, -0.1740370717, -0.8054445871, -0.9936231122, -0.6636338842, -0.0099372016, 0.6350748643, 0.9793226625, 0.8983805029, 0.4615624875, -0.1323517501, -0.6591064567, -0.9577345186, -0.9717790529, -0.7408102813, -0.3611783171, 0.0594013869, 0.4354061127, 0.7184201511, 0.8959366989, 0.9810135748, 0.9997053962, 0.9807356389, 0.9490461902, 0.9228549488, 0.9129452507, 0.9228549488, 0.9490461902, 0.9807356389, 0.9997053962, 0.9810135748, 0.8959366989, 0.7184201511, 0.4354061127, 0.0594013869, -0.3611783171, -0.7408102813, -0.9717790529, -0.9577345186, -0.6591064567, -0.1323517501, 0.4615624875, 0.8983805029, 0.9793226625, 0.6350748643, -0.0099372016, -0.6636338842, -0.9936231122, -0.8054445871, -0.1740370717], [-0.0152890040, -0.7211568839, -0.9999248174, -0.7135482820, -0.0452551731, 0.6350748643, 0.9861675309, 0.8622844455, 0.3544785437, -0.2890712551, -0.7988038975, -0.9992433916, -0.8575975897, -0.4627160093, 0.0366419706, 0.4970866834, 0.8233862127, 0.9810135748, 0.9852623085, 0.8797342206, 0.7154910816, 0.5370464912, 0.3763265269, 0.2526491471, 0.1758229402, 0.1498772097, 0.1758229402, 0.2526491471, 0.3763265269, 0.5370464912, 0.7154910816, 0.8797342206, 0.9852623085, 0.9810135748, 0.8233862127, 0.4970866834, 0.0366419706, -0.4627160093, -0.8575975897, -0.9992433916, -0.7988038975, -0.2890712551, 0.3544785437, 0.8622844455, 0.9861675309, 0.6350748643, -0.0452551731, -0.7135482820, -0.9999248174, -0.7211568839], [-0.5729354351, -0.9880316241, -0.8027125452, -0.1504336747, 0.5775305390, 0.9793226625, 0.8622844455, 0.3175104185, -0.3652528662, -0.8672002621, -0.9914061586, -0.7259123219, -0.2108600771, 0.3502527398, 0.7809125867, 0.9854307373, 0.9565866015, 0.7500645548, 0.4472175178, 0.1237916674, -0.1672248714, -0.3990375863, -0.5656888174, -0.6733906519, -0.7323723324, -0.7509872468, -0.7323723324, -0.6733906519, -0.5656888174, -0.3990375863, -0.1672248714, 0.1237916674, 0.4472175178, 0.7500645548, 0.9565866015, 0.9854307373, 0.7809125867, 0.3502527398, -0.2108600771, -0.7259123219, -0.9914061586, -0.8672002621, -0.3652528662, 0.3175104185, 0.8622844455, 0.9793226625, 0.5775305390, -0.1504336747, -0.8027125452, -0.9880316241], [-0.9259311738, -0.9071867414, -0.3206024194, 0.4541842253, 0.9508042428, 0.8983805029, 0.3544785437, -0.3652528662, -0.8871400354, -0.9766101759, -0.6291191778, -0.0315617281, 0.5565388448, 0.9255541197, 0.9852623085, 0.7665984827, 0.3763265269, -0.0612233815, -0.4482258018, -0.7323723324, -0.9042033485, -0.9828460723, -0.9998706698, -0.9869844898, -0.9690672971, -0.9613974919, -0.9690672971, -0.9869844898, -0.9998706698, -0.9828460723, -0.9042033485, -0.7323723324, -0.4482258018, -0.0612233815, 0.3763265269, 0.7665984827, 0.9852623085, 0.9255541197, 0.5565388448, -0.0315617281, -0.6291191778, -0.9766101759, -0.8871400354, -0.3652528662, 0.3544785437, 0.8983805029, 0.9508042428, 0.4541842253, -0.3206024194, -0.9071867414], [-0.9866658946, -0.5396963022, 0.2536796241, 0.8778684013, 0.9545112552, 0.4615624875, -0.2890712551, -0.8672002621, -0.9766101759, -0.5941982082, 0.0594013869, 0.6675079670, 0.9810135748, 0.9129452507, 0.5370464912, 0.0184053033, -0.4723862365, -0.8197716091, -0.9828460723, -0.9818619158, -0.8699452786, -0.7064425466, -0.5403536357, -0.4046099139, -0.3176558580, -0.2879033167, -0.3176558580, -0.4046099139, -0.5403536357, -0.7064425466, -0.8699452786, -0.9818619158, -0.9828460723, -0.8197716091, -0.4723862365, 0.0184053033, 0.5370464912, 0.9129452507, 0.9810135748, 0.6675079670, 0.0594013869, -0.5941982082, -0.9766101759, -0.8672002621, -0.2890712551, 0.4615624875, 0.9545112552, 0.8778684013, 0.2536796241, -0.5396963022], [-0.7710099755, -0.0276060063, 0.7279131199, 0.9970765516, 0.6242995591, -0.1323517501, -0.7988038975, -0.9914061586, -0.6291191778, 0.0594013869, 0.7018171073, 0.9952084656, 0.8414046940, 0.3521027624, -0.2459315899, -0.7323723324, -0.9771688420, -0.9613974919, -0.7479592242, -0.4327411451, -0.1032407464, 0.1827556420, 0.3994389089, 0.5440171490, 0.6246372204, 0.6502878402, 0.6246372204, 0.5440171490, 0.3994389089, 0.1827556420, -0.1032407464, -0.4327411451, -0.7479592242, -0.9613974919, -0.9771688420, -0.7323723324, -0.2459315899, 0.3521027624, 0.8414046940, 0.9952084656, 0.7018171073, 0.0594013869, -0.6291191778, -0.9914061586, -0.7988038975, -0.1323517501, 0.6242995591, 0.9970765516, 0.7279131199, -0.0276060063], [-0.3697720609, 0.4701369183, 0.9753959211, 0.8099508995, 0.1059186470, -0.6591064567, -0.9992433916, -0.7259123219, -0.0315617281, 0.6675079670, 0.9952084656, 0.8130861138, 0.2526491471, -0.3990375863, -0.8649557078, -0.9972551802, -0.8048090668, -0.4046099139, 0.0554589569, 0.4585981654, 0.7459063050, 0.9118398610, 0.9837263751, 0.9999876561, 0.9948534890, 0.9906073557, 0.9948534890, 0.9999876561, 0.9837263751, 0.9118398610, 0.7459063050, 0.4585981654, 0.0554589569, -0.4046099139, -0.8048090668, -0.9972551802, -0.8649557078, -0.3990375863, 0.2526491471, 0.8130861138, 0.9952084656, 0.6675079670, -0.0315617281, -0.7259123219, -0.9992433916, -0.6591064567, 0.1059186470, 0.8099508995, 0.9753959211, 0.4701369183], [0.0961793703, 0.8302999956, 0.9599849293, 0.4087860050, -0.4210142025, -0.9577345186, -0.8575975897, -0.2108600771, 0.5565388448, 0.9810135748, 0.8414046940, 0.2526491471, -0.4482258018, -0.9159022382, -0.9690672971, -0.6390451337, -0.1032407464, 0.4292170574, 0.8094061726, 0.9837263751, 0.9782847848, 0.8599133509, 0.6999256919, 0.5535124794, 0.4546989718, 0.4201670368, 0.4546989718, 0.5535124794, 0.6999256919, 0.8599133509, 0.9782847848, 0.9837263751, 0.8094061726, 0.4292170574, -0.1032407464, -0.6390451337, -0.9690672971, -0.9159022382, -0.4482258018, 0.2526491471, 0.8414046940, 0.9810135748, 0.5565388448, -0.2108600771, -0.8575975897, -0.9577345186, -0.4210142025, 0.4087860050, 0.9599849293, 0.8302999956], [0.5171216654, 0.9916552086, 0.7239439306, -0.0727487342, -0.8110635436, -0.9717790529, -0.4627160093, 0.3502527398, 0.9255541197, 0.9129452507, 0.3521027624, -0.3990375863, -0.9159022382, -0.9528820890, -0.5403536357, 0.0873524432, 0.6502878402, 0.9596509228, 0.9702044876, 0.7513049894, 0.4201670368, 0.0826456535, -0.1957809393, -0.3901970096, -0.5010191903, -0.5365729180, -0.5010191903, -0.3901970096, -0.1957809393, 0.0826456535, 0.4201670368, 0.7513049894, 0.9702044876, 0.9596509228, 0.6502878402, 0.0873524432, -0.5403536357, -0.9528820890, -0.9159022382, -0.3990375863, 0.3521027624, 0.9129452507, 0.9255541197, 0.3502527398, -0.4627160093, -0.9717790529, -0.8110635436, -0.0727487342, 0.7239439306, 0.9916552086], [0.8199555226, 0.9545112552, 0.3544785437, -0.5106954441, -0.9895644479, -0.7408102813, 0.0366419706, 0.7809125867, 0.9852623085, 0.5370464912, -0.2459315899, -0.8649557078, -0.9690672971, -0.5403536357, 0.1510338946, 0.7459063050, 0.9971509674, 0.8599133509, 0.4546989718, -0.0363984863, -0.4647255575, -0.7589315344, -0.9186368297, -0.9829793407, -0.9987608968, -0.9999902066, -0.9987608968, -0.9829793407, -0.9186368297, -0.7589315344, -0.4647255575, -0.0363984863, 0.4546989718, 0.8599133509, 0.9971509674, 0.7459063050, 0.1510338946, -0.5403536357, -0.9690672971, -0.8649557078, -0.2459315899, 0.5370464912, 0.9852623085, 0.7809125867, 0.0366419706, -0.7408102813, -0.9895644479, -0.5106954441, 0.3544785437, 0.9545112552], [0.9753959211, 0.7625584505, -0.0528441951, -0.8229869267, -0.9545833224, -0.3611783171, 0.4970866834, 0.9854307373, 0.7665984827, 0.0184053033, -0.7323723324, -0.9972551802, -0.6390451337, 0.0873524432, 0.7459063050, 0.9999876561, 0.7753400962, 0.2375839859, -0.3521010850, -0.7860957085, -0.9829793407, -0.9747394897, -0.8497593056, -0.6984726873, -0.5851764691, -0.5440211109, -0.5851764691, -0.6984726873, -0.8497593056, -0.9747394897, -0.9829793407, -0.7860957085, -0.3521010850, 0.2375839859, 0.7753400962, 0.9999876561, 0.7459063050, 0.0873524432, -0.6390451337, -0.9972551802, -0.7323723324, 0.0184053033, 0.7665984827, 0.9854307373, 0.4970866834, -0.3611783171, -0.9545833224, -0.8229869267, -0.0528441951, 0.7625584505], [0.9911848273, 0.4787847820, -0.4210142025, -0.9784905125, -0.7553386617, 0.0594013869, 0.8233862127, 0.9565866015, 0.3763265269, -0.4723862365, -0.9771688420, -0.8048090668, -0.1032407464, 0.6502878402, 0.9971509674, 0.7753400962, 0.1608496451, -0.5010191903, -0.9186368297, -0.9840363888, -0.7648781679, -0.4114823068, -0.0620152002, 0.2037957685, 0.3610492773, 0.4121184852, 0.3610492773, 0.2037957685, -0.0620152002, -0.4114823068, -0.7648781679, -0.9840363888, -0.9186368297, -0.5010191903, 0.1608496451, 0.7753400962, 0.9971509674, 0.6502878402, -0.1032407464, -0.8048090668, -0.9771688420, -0.4723862365, 0.3763265269, 0.9565866015, 0.8233862127, 0.0594013869, -0.7553386617, -0.9784905125, -0.4210142025, 0.4787847820], [0.8983805029, 0.1647258448, -0.7040964370, -0.9883875439, -0.4627160093, 0.4354061127, 0.9810135748, 0.7500645548, -0.0612233815, -0.8197716091, -0.9613974919, -0.4046099139, 0.4292170574, 0.9596509228, 0.8599133509, 0.2375839859, -0.5010191903, -0.9498206802, -0.9339707316, -0.5440211109, -0.0092030414, 0.4622279809, 0.7712319401, 0.9240590870, 0.9783888223, 0.9893582466, 0.9783888223, 0.9240590870, 0.7712319401, 0.4622279809, -0.0092030414, -0.5440211109, -0.9339707316, -0.9498206802, -0.5010191903, 0.2375839859, 0.8599133509, 0.9596509228, 0.4292170574, -0.4046099139, -0.9613974919, -0.8197716091, -0.0612233815, 0.7500645548, 0.9810135748, 0.4354061127, -0.4627160093, -0.9883875439, -0.7040964370, 0.1647258448], [0.7370998663, -0.1323517501, -0.8871400354, -0.8892231315, -0.1442896235, 0.7184201511, 0.9852623085, 0.4472175178, -0.4482258018, -0.9828460723, -0.7479592242, 0.0554589569, 0.8094061726, 0.9702044876, 0.4546989718, -0.3521010850, -0.9186368297, -0.9339707316, -0.4570867375, 0.2037957685, 0.7328169085, 0.9783888223, 0.9717622535, 0.8398053526, 0.7088612918, 0.6569865987, 0.7088612918, 0.8398053526, 0.9717622535, 0.9783888223, 0.7328169085, 0.2037957685, -0.4570867375, -0.9339707316, -0.9186368297, -0.3521010850, 0.4546989718, 0.9702044876, 0.8094061726, 0.0554589569, -0.7479592242, -0.9828460723, -0.4482258018, 0.4472175178, 0.9852623085, 0.7184201511, -0.1442896235, -0.8892231315, -0.8871400354, -0.1323517501], [0.5456621281, -0.3839842382, -0.9784905125, -0.7259123219, 0.1502477941, 0.8959366989, 0.8797342206, 0.1237916674, -0.7323723324, -0.9818619158, -0.4327411451, 0.4585981654, 0.9837263751, 0.7513049894, -0.0363984863, -0.7860957085, -0.9840363888, -0.5440211109, 0.2037957685, 0.8072610909, 0.9990439103, 0.8003730607, 0.4123377501, 0.0413582135, -0.1990836625, -0.2794154982, -0.1990836625, 0.0413582135, 0.4123377501, 0.8003730607, 0.9990439103, 0.8072610909, 0.2037957685, -0.5440211109, -0.9840363888, -0.7860957085, -0.0363984863, 0.7513049894, 0.9837263751, 0.4585981654, -0.4327411451, -0.9818619158, -0.7323723324, 0.1237916674, 0.8797342206, 0.8959366989, 0.1502477941, -0.7259123219, -0.9784905125, -0.3839842382], [0.3544785437, -0.5789496358, -0.9996939741, -0.5395308233, 0.3932055961, 0.9810135748, 0.7154910816, -0.1672248714, -0.9042033485, -0.8699452786, -0.1032407464, 0.7459063050, 0.9782847848, 0.4201670368, -0.4647255575, -0.9829793407, -0.7648781679, -0.0092030414, 0.7328169085, 0.9990439103, 0.7088612918, 0.1196515765, -0.4369755173, -0.7820948988, -0.9261848393, -0.9589242747, -0.9261848393, -0.7820948988, -0.4369755173, 0.1196515765, 0.7088612918, 0.9990439103, 0.7328169085, -0.0092030414, -0.7648781679, -0.9829793407, -0.4647255575, 0.4201670368, 0.9782847848, 0.7459063050, -0.1032407464, -0.8699452786, -0.9042033485, -0.1672248714, 0.7154910816, 0.9810135748, 0.3932055961, -0.5395308233, -0.9996939741, -0.5789496358], [0.1841790652, -0.7185332705, -0.9766101759, -0.3611783171, 0.5758065019, 0.9997053962, 0.5370464912, -0.3990375863, -0.9828460723, -0.7064425466, 0.1827556420, 0.9118398610, 0.8599133509, 0.0826456535, -0.7589315344, -0.9747394897, -0.4114823068, 0.4622279809, 0.9783888223, 0.8003730607, 0.1196515765, -0.5861761930, -0.9589242747, -0.9712777990, -0.8313391792, -0.7568024953, -0.8313391792, -0.9712777990, -0.9589242747, -0.5861761930, 0.1196515765, 0.8003730607, 0.9783888223, 0.4622279809, -0.4114823068, -0.9747394897, -0.7589315344, 0.0826456535, 0.8599133509, 0.9118398610, 0.1827556420, -0.7064425466, -0.9828460723, -0.3990375863, 0.5370464912, 0.9997053962, 0.5758065019, -0.3611783171, -0.9766101759, -0.7185332705], [0.0465985146, -0.8110635436, -0.9333656865, -0.2108600771, 0.7018171073, 0.9807356389, 0.3763265269, -0.5656888174, -0.9998706698, -0.5403536357, 0.3994389089, 0.9837263751, 0.6999256919, -0.1957809393, -0.9186368297, -0.8497593056, -0.0620152002, 0.7712319401, 0.9717622535, 0.4123377501, -0.4369755173, -0.9589242747, -0.8916822545, -0.4474917522, -0.0206835315, 0.1411200081, -0.0206835315, -0.4474917522, -0.8916822545, -0.9589242747, -0.4369755173, 0.4123377501, 0.9717622535, 0.7712319401, -0.0620152002, -0.8497593056, -0.9186368297, -0.1957809393, 0.6999256919, 0.9837263751, 0.3994389089, -0.5403536357, -0.9998706698, -0.5656888174, 0.3763265269, 0.9807356389, 0.7018171073, -0.2108600771, -0.9333656865, -0.8110635436], [-0.0528441951, -0.8672002621, -0.8892231315, -0.0994089978, 0.7809125867, 0.9490461902, 0.2526491471, -0.6733906519, -0.9869844898, -0.4046099139, 0.5440171490, 0.9999876561, 0.5535124794, -0.3901970096, -0.9829793407, -0.6984726873, 0.2037957685, 0.9240590870, 0.8398053526, 0.0413582135, -0.7820948988, -0.9712777990, -0.4474917522, 0.3080717424, 0.7867491315, 0.9092974268, 0.7867491315, 0.3080717424, -0.4474917522, -0.9712777990, -0.7820948988, 0.0413582135, 0.8398053526, 0.9240590870, 0.2037957685, -0.6984726873, -0.9829793407, -0.3901970096, 0.5535124794, 0.9999876561, 0.5440171490, -0.4046099139, -0.9869844898, -0.6733906519, 0.2526491471, 0.9490461902, 0.7809125867, -0.0994089978, -0.8892231315, -0.8672002621], [-0.1125104888, -0.8965494244, -0.8575975897, -0.0315617281, 0.8233862127, 0.9228549488, 0.1758229402, -0.7323723324, -0.9690672971, -0.3176558580, 0.6246372204, 0.9948534890, 0.4546989718, -0.5010191903, -0.9987608968, -0.5851764691, 0.3610492773, 0.9783888223, 0.7088612918, -0.1990836625, -0.9261848393, -0.8313391792, -0.0206835315, 0.7867491315, 0.9877659460, 0.8414709848, 0.9877659460, 0.7867491315, -0.0206835315, -0.8313391792, -0.9261848393, -0.1990836625, 0.7088612918, 0.9783888223, 0.3610492773, -0.5851764691, -0.9987608968, -0.5010191903, 0.4546989718, 0.9948534890, 0.6246372204, -0.3176558580, -0.9690672971, -0.7323723324, 0.1758229402, 0.9228549488, 0.8233862127, -0.0315617281, -0.8575975897, -0.8965494244], [-0.1323517501, -0.9055783620, -0.8462204042, -0.0088513093, 0.8366556385, 0.9129452507, 0.1498772097, -0.7509872468, -0.9613974919, -0.2879033167, 0.6502878402, 0.9906073557, 0.4201670368, -0.5365729180, -0.9999902066, -0.5440211109, 0.4121184852, 0.9893582466, 0.6569865987, -0.2794154982, -0.9589242747, -0.7568024953, 0.1411200081, 0.9092974268, 0.8414709848, 0.0000000000, 0.8414709848, 0.9092974268, 0.1411200081, -0.7568024953, -0.9589242747, -0.2794154982, 0.6569865987, 0.9893582466, 0.4121184852, -0.5440211109, -0.9999902066, -0.5365729180, 0.4201670368, 0.9906073557, 0.6502878402, -0.2879033167, -0.9613974919, -0.7509872468, 0.1498772097, 0.9129452507, 0.8366556385, -0.0088513093, -0.8462204042, -0.9055783620], [-0.1125104888, -0.8965494244, -0.8575975897, -0.0315617281, 0.8233862127, 0.9228549488, 0.1758229402, -0.7323723324, -0.9690672971, -0.3176558580, 0.6246372204, 0.9948534890, 0.4546989718, -0.5010191903, -0.9987608968, -0.5851764691, 0.3610492773, 0.9783888223, 0.7088612918, -0.1990836625, -0.9261848393, -0.8313391792, -0.0206835315, 0.7867491315, 0.9877659460, 0.8414709848, 0.9877659460, 0.7867491315, -0.0206835315, -0.8313391792, -0.9261848393, -0.1990836625, 0.7088612918, 0.9783888223, 0.3610492773, -0.5851764691, -0.9987608968, -0.5010191903, 0.4546989718, 0.9948534890, 0.6246372204, -0.3176558580, -0.9690672971, -0.7323723324, 0.1758229402, 0.9228549488, 0.8233862127, -0.0315617281, -0.8575975897, -0.8965494244], [-0.0528441951, -0.8672002621, -0.8892231315, -0.0994089978, 0.7809125867, 0.9490461902, 0.2526491471, -0.6733906519, -0.9869844898, -0.4046099139, 0.5440171490, 0.9999876561, 0.5535124794, -0.3901970096, -0.9829793407, -0.6984726873, 0.2037957685, 0.9240590870, 0.8398053526, 0.0413582135, -0.7820948988, -0.9712777990, -0.4474917522, 0.3080717424, 0.7867491315, 0.9092974268, 0.7867491315, 0.3080717424, -0.4474917522, -0.9712777990, -0.7820948988, 0.0413582135, 0.8398053526, 0.9240590870, 0.2037957685, -0.6984726873, -0.9829793407, -0.3901970096, 0.5535124794, 0.9999876561, 0.5440171490, -0.4046099139, -0.9869844898, -0.6733906519, 0.2526491471, 0.9490461902, 0.7809125867, -0.0994089978, -0.8892231315, -0.8672002621], [0.0465985146, -0.8110635436, -0.9333656865, -0.2108600771, 0.7018171073, 0.9807356389, 0.3763265269, -0.5656888174, -0.9998706698, -0.5403536357, 0.3994389089, 0.9837263751, 0.6999256919, -0.1957809393, -0.9186368297, -0.8497593056, -0.0620152002, 0.7712319401, 0.9717622535, 0.4123377501, -0.4369755173, -0.9589242747, -0.8916822545, -0.4474917522, -0.0206835315, 0.1411200081, -0.0206835315, -0.4474917522, -0.8916822545, -0.9589242747, -0.4369755173, 0.4123377501, 0.9717622535, 0.7712319401, -0.0620152002, -0.8497593056, -0.9186368297, -0.1957809393, 0.6999256919, 0.9837263751, 0.3994389089, -0.5403536357, -0.9998706698, -0.5656888174, 0.3763265269, 0.9807356389, 0.7018171073, -0.2108600771, -0.9333656865, -0.8110635436], [0.1841790652, -0.7185332705, -0.9766101759, -0.3611783171, 0.5758065019, 0.9997053962, 0.5370464912, -0.3990375863, -0.9828460723, -0.7064425466, 0.1827556420, 0.9118398610, 0.8599133509, 0.0826456535, -0.7589315344, -0.9747394897, -0.4114823068, 0.4622279809, 0.9783888223, 0.8003730607, 0.1196515765, -0.5861761930, -0.9589242747, -0.9712777990, -0.8313391792, -0.7568024953, -0.8313391792, -0.9712777990, -0.9589242747, -0.5861761930, 0.1196515765, 0.8003730607, 0.9783888223, 0.4622279809, -0.4114823068, -0.9747394897, -0.7589315344, 0.0826456535, 0.8599133509, 0.9118398610, 0.1827556420, -0.7064425466, -0.9828460723, -0.3990375863, 0.5370464912, 0.9997053962, 0.5758065019, -0.3611783171, -0.9766101759, -0.7185332705], [0.3544785437, -0.5789496358, -0.9996939741, -0.5395308233, 0.3932055961, 0.9810135748, 0.7154910816, -0.1672248714, -0.9042033485, -0.8699452786, -0.1032407464, 0.7459063050, 0.9782847848, 0.4201670368, -0.4647255575, -0.9829793407, -0.7648781679, -0.0092030414, 0.7328169085, 0.9990439103, 0.7088612918, 0.1196515765, -0.4369755173, -0.7820948988, -0.9261848393, -0.9589242747, -0.9261848393, -0.7820948988, -0.4369755173, 0.1196515765, 0.7088612918, 0.9990439103, 0.7328169085, -0.0092030414, -0.7648781679, -0.9829793407, -0.4647255575, 0.4201670368, 0.9782847848, 0.7459063050, -0.1032407464, -0.8699452786, -0.9042033485, -0.1672248714, 0.7154910816, 0.9810135748, 0.3932055961, -0.5395308233, -0.9996939741, -0.5789496358], [0.5456621281, -0.3839842382, -0.9784905125, -0.7259123219, 0.1502477941, 0.8959366989, 0.8797342206, 0.1237916674, -0.7323723324, -0.9818619158, -0.4327411451, 0.4585981654, 0.9837263751, 0.7513049894, -0.0363984863, -0.7860957085, -0.9840363888, -0.5440211109, 0.2037957685, 0.8072610909, 0.9990439103, 0.8003730607, 0.4123377501, 0.0413582135, -0.1990836625, -0.2794154982, -0.1990836625, 0.0413582135, 0.4123377501, 0.8003730607, 0.9990439103, 0.8072610909, 0.2037957685, -0.5440211109, -0.9840363888, -0.7860957085, -0.0363984863, 0.7513049894, 0.9837263751, 0.4585981654, -0.4327411451, -0.9818619158, -0.7323723324, 0.1237916674, 0.8797342206, 0.8959366989, 0.1502477941, -0.7259123219, -0.9784905125, -0.3839842382], [0.7370998663, -0.1323517501, -0.8871400354, -0.8892231315, -0.1442896235, 0.7184201511, 0.9852623085, 0.4472175178, -0.4482258018, -0.9828460723, -0.7479592242, 0.0554589569, 0.8094061726, 0.9702044876, 0.4546989718, -0.3521010850, -0.9186368297, -0.9339707316, -0.4570867375, 0.2037957685, 0.7328169085, 0.9783888223, 0.9717622535, 0.8398053526, 0.7088612918, 0.6569865987, 0.7088612918, 0.8398053526, 0.9717622535, 0.9783888223, 0.7328169085, 0.2037957685, -0.4570867375, -0.9339707316, -0.9186368297, -0.3521010850, 0.4546989718, 0.9702044876, 0.8094061726, 0.0554589569, -0.7479592242, -0.9828460723, -0.4482258018, 0.4472175178, 0.9852623085, 0.7184201511, -0.1442896235, -0.8892231315, -0.8871400354, -0.1323517501], [0.8983805029, 0.1647258448, -0.7040964370, -0.9883875439, -0.4627160093, 0.4354061127, 0.9810135748, 0.7500645548, -0.0612233815, -0.8197716091, -0.9613974919, -0.4046099139, 0.4292170574, 0.9596509228, 0.8599133509, 0.2375839859, -0.5010191903, -0.9498206802, -0.9339707316, -0.5440211109, -0.0092030414, 0.4622279809, 0.7712319401, 0.9240590870, 0.9783888223, 0.9893582466, 0.9783888223, 0.9240590870, 0.7712319401, 0.4622279809, -0.0092030414, -0.5440211109, -0.9339707316, -0.9498206802, -0.5010191903, 0.2375839859, 0.8599133509, 0.9596509228, 0.4292170574, -0.4046099139, -0.9613974919, -0.8197716091, -0.0612233815, 0.7500645548, 0.9810135748, 0.4354061127, -0.4627160093, -0.9883875439, -0.7040964370, 0.1647258448], [0.9911848273, 0.4787847820, -0.4210142025, -0.9784905125, -0.7553386617, 0.0594013869, 0.8233862127, 0.9565866015, 0.3763265269, -0.4723862365, -0.9771688420, -0.8048090668, -0.1032407464, 0.6502878402, 0.9971509674, 0.7753400962, 0.1608496451, -0.5010191903, -0.9186368297, -0.9840363888, -0.7648781679, -0.4114823068, -0.0620152002, 0.2037957685, 0.3610492773, 0.4121184852, 0.3610492773, 0.2037957685, -0.0620152002, -0.4114823068, -0.7648781679, -0.9840363888, -0.9186368297, -0.5010191903, 0.1608496451, 0.7753400962, 0.9971509674, 0.6502878402, -0.1032407464, -0.8048090668, -0.9771688420, -0.4723862365, 0.3763265269, 0.9565866015, 0.8233862127, 0.0594013869, -0.7553386617, -0.9784905125, -0.4210142025, 0.4787847820], [0.9753959211, 0.7625584505, -0.0528441951, -0.8229869267, -0.9545833224, -0.3611783171, 0.4970866834, 0.9854307373, 0.7665984827, 0.0184053033, -0.7323723324, -0.9972551802, -0.6390451337, 0.0873524432, 0.7459063050, 0.9999876561, 0.7753400962, 0.2375839859, -0.3521010850, -0.7860957085, -0.9829793407, -0.9747394897, -0.8497593056, -0.6984726873, -0.5851764691, -0.5440211109, -0.5851764691, -0.6984726873, -0.8497593056, -0.9747394897, -0.9829793407, -0.7860957085, -0.3521010850, 0.2375839859, 0.7753400962, 0.9999876561, 0.7459063050, 0.0873524432, -0.6390451337, -0.9972551802, -0.7323723324, 0.0184053033, 0.7665984827, 0.9854307373, 0.4970866834, -0.3611783171, -0.9545833224, -0.8229869267, -0.0528441951, 0.7625584505], [0.8199555226, 0.9545112552, 0.3544785437, -0.5106954441, -0.9895644479, -0.7408102813, 0.0366419706, 0.7809125867, 0.9852623085, 0.5370464912, -0.2459315899, -0.8649557078, -0.9690672971, -0.5403536357, 0.1510338946, 0.7459063050, 0.9971509674, 0.8599133509, 0.4546989718, -0.0363984863, -0.4647255575, -0.7589315344, -0.9186368297, -0.9829793407, -0.9987608968, -0.9999902066, -0.9987608968, -0.9829793407, -0.9186368297, -0.7589315344, -0.4647255575, -0.0363984863, 0.4546989718, 0.8599133509, 0.9971509674, 0.7459063050, 0.1510338946, -0.5403536357, -0.9690672971, -0.8649557078, -0.2459315899, 0.5370464912, 0.9852623085, 0.7809125867, 0.0366419706, -0.7408102813, -0.9895644479, -0.5106954441, 0.3544785437, 0.9545112552], [0.5171216654, 0.9916552086, 0.7239439306, -0.0727487342, -0.8110635436, -0.9717790529, -0.4627160093, 0.3502527398, 0.9255541197, 0.9129452507, 0.3521027624, -0.3990375863, -0.9159022382, -0.9528820890, -0.5403536357, 0.0873524432, 0.6502878402, 0.9596509228, 0.9702044876, 0.7513049894, 0.4201670368, 0.0826456535, -0.1957809393, -0.3901970096, -0.5010191903, -0.5365729180, -0.5010191903, -0.3901970096, -0.1957809393, 0.0826456535, 0.4201670368, 0.7513049894, 0.9702044876, 0.9596509228, 0.6502878402, 0.0873524432, -0.5403536357, -0.9528820890, -0.9159022382, -0.3990375863, 0.3521027624, 0.9129452507, 0.9255541197, 0.3502527398, -0.4627160093, -0.9717790529, -0.8110635436, -0.0727487342, 0.7239439306, 0.9916552086], [0.0961793703, 0.8302999956, 0.9599849293, 0.4087860050, -0.4210142025, -0.9577345186, -0.8575975897, -0.2108600771, 0.5565388448, 0.9810135748, 0.8414046940, 0.2526491471, -0.4482258018, -0.9159022382, -0.9690672971, -0.6390451337, -0.1032407464, 0.4292170574, 0.8094061726, 0.9837263751, 0.9782847848, 0.8599133509, 0.6999256919, 0.5535124794, 0.4546989718, 0.4201670368, 0.4546989718, 0.5535124794, 0.6999256919, 0.8599133509, 0.9782847848, 0.9837263751, 0.8094061726, 0.4292170574, -0.1032407464, -0.6390451337, -0.9690672971, -0.9159022382, -0.4482258018, 0.2526491471, 0.8414046940, 0.9810135748, 0.5565388448, -0.2108600771, -0.8575975897, -0.9577345186, -0.4210142025, 0.4087860050, 0.9599849293, 0.8302999956], [-0.3697720609, 0.4701369183, 0.9753959211, 0.8099508995, 0.1059186470, -0.6591064567, -0.9992433916, -0.7259123219, -0.0315617281, 0.6675079670, 0.9952084656, 0.8130861138, 0.2526491471, -0.3990375863, -0.8649557078, -0.9972551802, -0.8048090668, -0.4046099139, 0.0554589569, 0.4585981654, 0.7459063050, 0.9118398610, 0.9837263751, 0.9999876561, 0.9948534890, 0.9906073557, 0.9948534890, 0.9999876561, 0.9837263751, 0.9118398610, 0.7459063050, 0.4585981654, 0.0554589569, -0.4046099139, -0.8048090668, -0.9972551802, -0.8649557078, -0.3990375863, 0.2526491471, 0.8130861138, 0.9952084656, 0.6675079670, -0.0315617281, -0.7259123219, -0.9992433916, -0.6591064567, 0.1059186470, 0.8099508995, 0.9753959211, 0.4701369183], [-0.7710099755, -0.0276060063, 0.7279131199, 0.9970765516, 0.6242995591, -0.1323517501, -0.7988038975, -0.9914061586, -0.6291191778, 0.0594013869, 0.7018171073, 0.9952084656, 0.8414046940, 0.3521027624, -0.2459315899, -0.7323723324, -0.9771688420, -0.9613974919, -0.7479592242, -0.4327411451, -0.1032407464, 0.1827556420, 0.3994389089, 0.5440171490, 0.6246372204, 0.6502878402, 0.6246372204, 0.5440171490, 0.3994389089, 0.1827556420, -0.1032407464, -0.4327411451, -0.7479592242, -0.9613974919, -0.9771688420, -0.7323723324, -0.2459315899, 0.3521027624, 0.8414046940, 0.9952084656, 0.7018171073, 0.0594013869, -0.6291191778, -0.9914061586, -0.7988038975, -0.1323517501, 0.6242995591, 0.9970765516, 0.7279131199, -0.0276060063], [-0.9866658946, -0.5396963022, 0.2536796241, 0.8778684013, 0.9545112552, 0.4615624875, -0.2890712551, -0.8672002621, -0.9766101759, -0.5941982082, 0.0594013869, 0.6675079670, 0.9810135748, 0.9129452507, 0.5370464912, 0.0184053033, -0.4723862365, -0.8197716091, -0.9828460723, -0.9818619158, -0.8699452786, -0.7064425466, -0.5403536357, -0.4046099139, -0.3176558580, -0.2879033167, -0.3176558580, -0.4046099139, -0.5403536357, -0.7064425466, -0.8699452786, -0.9818619158, -0.9828460723, -0.8197716091, -0.4723862365, 0.0184053033, 0.5370464912, 0.9129452507, 0.9810135748, 0.6675079670, 0.0594013869, -0.5941982082, -0.9766101759, -0.8672002621, -0.2890712551, 0.4615624875, 0.9545112552, 0.8778684013, 0.2536796241, -0.5396963022], [-0.9259311738, -0.9071867414, -0.3206024194, 0.4541842253, 0.9508042428, 0.8983805029, 0.3544785437, -0.3652528662, -0.8871400354, -0.9766101759, -0.6291191778, -0.0315617281, 0.5565388448, 0.9255541197, 0.9852623085, 0.7665984827, 0.3763265269, -0.0612233815, -0.4482258018, -0.7323723324, -0.9042033485, -0.9828460723, -0.9998706698, -0.9869844898, -0.9690672971, -0.9613974919, -0.9690672971, -0.9869844898, -0.9998706698, -0.9828460723, -0.9042033485, -0.7323723324, -0.4482258018, -0.0612233815, 0.3763265269, 0.7665984827, 0.9852623085, 0.9255541197, 0.5565388448, -0.0315617281, -0.6291191778, -0.9766101759, -0.8871400354, -0.3652528662, 0.3544785437, 0.8983805029, 0.9508042428, 0.4541842253, -0.3206024194, -0.9071867414], [-0.5729354351, -0.9880316241, -0.8027125452, -0.1504336747, 0.5775305390, 0.9793226625, 0.8622844455, 0.3175104185, -0.3652528662, -0.8672002621, -0.9914061586, -0.7259123219, -0.2108600771, 0.3502527398, 0.7809125867, 0.9854307373, 0.9565866015, 0.7500645548, 0.4472175178, 0.1237916674, -0.1672248714, -0.3990375863, -0.5656888174, -0.6733906519, -0.7323723324, -0.7509872468, -0.7323723324, -0.6733906519, -0.5656888174, -0.3990375863, -0.1672248714, 0.1237916674, 0.4472175178, 0.7500645548, 0.9565866015, 0.9854307373, 0.7809125867, 0.3502527398, -0.2108600771, -0.7259123219, -0.9914061586, -0.8672002621, -0.3652528662, 0.3175104185, 0.8622844455, 0.9793226625, 0.5775305390, -0.1504336747, -0.8027125452, -0.9880316241], [-0.0152890040, -0.7211568839, -0.9999248174, -0.7135482820, -0.0452551731, 0.6350748643, 0.9861675309, 0.8622844455, 0.3544785437, -0.2890712551, -0.7988038975, -0.9992433916, -0.8575975897, -0.4627160093, 0.0366419706, 0.4970866834, 0.8233862127, 0.9810135748, 0.9852623085, 0.8797342206, 0.7154910816, 0.5370464912, 0.3763265269, 0.2526491471, 0.1758229402, 0.1498772097, 0.1758229402, 0.2526491471, 0.3763265269, 0.5370464912, 0.7154910816, 0.8797342206, 0.9852623085, 0.9810135748, 0.8233862127, 0.4970866834, 0.0366419706, -0.4627160093, -0.8575975897, -0.9992433916, -0.7988038975, -0.2890712551, 0.3544785437, 0.8622844455, 0.9861675309, 0.6350748643, -0.0452551731, -0.7135482820, -0.9999248174, -0.7211568839], [0.5643904319, -0.1740370717, -0.8054445871, -0.9936231122, -0.6636338842, -0.0099372016, 0.6350748643, 0.9793226625, 0.8983805029, 0.4615624875, -0.1323517501, -0.6591064567, -0.9577345186, -0.9717790529, -0.7408102813, -0.3611783171, 0.0594013869, 0.4354061127, 0.7184201511, 0.8959366989, 0.9810135748, 0.9997053962, 0.9807356389, 0.9490461902, 0.9228549488, 0.9129452507, 0.9228549488, 0.9490461902, 0.9807356389, 0.9997053962, 0.9810135748, 0.8959366989, 0.7184201511, 0.4354061127, 0.0594013869, -0.3611783171, -0.7408102813, -0.9717790529, -0.9577345186, -0.6591064567, -0.1323517501, 0.4615624875, 0.8983805029, 0.9793226625, 0.6350748643, -0.0099372016, -0.6636338842, -0.9936231122, -0.8054445871, -0.1740370717], [0.9437285852, 0.4569034415, -0.2677948252, -0.8426112405, -0.9892668188, -0.6636338842, -0.0452551731, 0.5775305390, 0.9508042428, 0.9545112552, 0.6242995591, 0.1059186470, -0.4210142025, -0.8110635436, -0.9895644479, -0.9545833224, -0.7553386617, -0.4627160093, -0.1442896235, 0.1502477941, 0.3932055961, 0.5758065019, 0.7018171073, 0.7809125867, 0.8233862127, 0.8366556385, 0.8233862127, 0.7809125867, 0.7018171073, 0.5758065019, 0.3932055961, 0.1502477941, -0.1442896235, -0.4627160093, -0.7553386617, -0.9545833224, -0.9895644479, -0.8110635436, -0.4210142025, 0.1059186470, 0.6242995591, 0.9545112552, 0.9508042428, 0.5775305390, -0.0452551731, -0.6636338842, -0.9892668188, -0.8426112405, -0.2677948252, 0.4569034415], [0.9508184515, 0.9093481911, 0.4001993726, -0.2986026441, -0.8426112405, -0.9936231122, -0.7135482820, -0.1504336747, 0.4541842253, 0.8778684013, 0.9970765516, 0.8099508995, 0.4087860050, -0.0727487342, -0.5106954441, -0.8229869267, -0.9784905125, -0.9883875439, -0.8892231315, -0.7259123219, -0.5395308233, -0.3611783171, -0.2108600771, -0.0994089978, -0.0315617281, -0.0088513093, -0.0315617281, -0.0994089978, -0.2108600771, -0.3611783171, -0.5395308233, -0.7259123219, -0.8892231315, -0.9883875439, -0.9784905125, -0.8229869267, -0.5106954441, -0.0727487342, 0.4087860050, 0.8099508995, 0.9970765516, 0.8778684013, 0.4541842253, -0.1504336747, -0.7135482820, -0.9936231122, -0.8426112405, -0.2986026441, 0.4001993726, 0.9093481911], [0.5538188132, 0.9677093359, 0.8961364196, 0.4001993726, -0.2677948252, -0.8054445871, -0.9999248174, -0.8027125452, -0.3206024194, 0.2536796241, 0.7279131199, 0.9753959211, 0.9599849293, 0.7239439306, 0.3544785437, -0.0528441951, -0.4210142025, -0.7040964370, -0.8871400354, -0.9784905125, -0.9996939741, -0.9766101759, -0.9333656865, -0.8892231315, -0.8575975897, -0.8462204042, -0.8575975897, -0.8892231315, -0.9333656865, -0.9766101759, -0.9996939741, -0.9784905125, -0.8871400354, -0.7040964370, -0.4210142025, -0.0528441951, 0.3544785437, 0.7239439306, 0.9599849293, 0.9753959211, 0.7279131199, 0.2536796241, -0.3206024194, -0.8027125452, -0.9999248174, -0.8054445871, -0.2677948252, 0.4001993726, 0.8961364196, 0.9677093359], [-0.0977712694, 0.5780962926, 0.9677093359, 0.9093481911, 0.4569034415, -0.1740370717, -0.7211568839, -0.9880316241, -0.9071867414, -0.5396963022, -0.0276060063, 0.4701369183, 0.8302999956, 0.9916552086, 0.9545112552, 0.7625584505, 0.4787847820, 0.1647258448, -0.1323517501, -0.3839842382, -0.5789496358, -0.7185332705, -0.8110635436, -0.8672002621, -0.8965494244, -0.9055783620, -0.8965494244, -0.8672002621, -0.8110635436, -0.7185332705, -0.5789496358, -0.3839842382, -0.1323517501, 0.1647258448, 0.4787847820, 0.7625584505, 0.9545112552, 0.9916552086, 0.8302999956, 0.4701369183, -0.0276060063, -0.5396963022, -0.9071867414, -0.9880316241, -0.7211568839, -0.1740370717, 0.4569034415, 0.9093481911, 0.9677093359, 0.5780962926]], size = [100, 100]);
	}
}
