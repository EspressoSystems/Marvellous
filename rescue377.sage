load("instance_generator.sage")

##########################################################
## rescue381 parameters
##########################################################
## use rescue381 to check the correctness of key_injection function

q381 = 52435875175126190479447740508185965837690552500527637822603658699938581184513
rescue381 = Rescue(128, q381, 4, 5)

init_vec_381 = [0,0,0,0]
init_vec_381[0] = 10251498144790729877114984073212046753223574188577263253763854582885300616634
init_vec_381[1] = 23799697215770479455315980501436150478606639549341703710964277906023879274693
init_vec_381[2] = 3007859742890615231402252990001597094047140204544326329227026628202747223471
init_vec_381[3] = 28206680002640467010077105488518988050496606663258696654543362871739559141116
init_vec_381 = vector(init_vec_381)

key_sched_matrix_381 = matrix(ZZ, 4, 4)
key_sched_matrix_381[0,0] = 20508694040621567351648110034447675442497630601368754313856884903339587777311
key_sched_matrix_381[0,1] = 21833126749675005420257511508741654628498211767962591705355382899857469438170
key_sched_matrix_381[0,2] = 10094259962876866855921243786568400951965635335279511958062644189442373357290
key_sched_matrix_381[0,3] = 19703017446530302026954081842172601421653728134317178448940156258115853425803
key_sched_matrix_381[1,0] = 10251498144790729877114984073212046753223574188577263253763854582885300616634
key_sched_matrix_381[1,1] = 23799697215770479455315980501436150478606639549341703710964277906023879274693
key_sched_matrix_381[1,2] = 3007859742890615231402252990001597094047140204544326329227026628202747223471
key_sched_matrix_381[1,3] = 28206680002640467010077105488518988050496606663258696654543362871739559141116
key_sched_matrix_381[2,0] = 3001386190657217866716811031197002190094834176598601007437349105366277408753
key_sched_matrix_381[2,1] = 3302832234223427084389235892793462946069958738751625733789554798277785616852
key_sched_matrix_381[2,2] = 33828191304584863092326289783666465913001308709873493077072772336792329272781
key_sched_matrix_381[2,3] = 39527082973012175895755035046102602497048600747962062191946750704586900696815
key_sched_matrix_381[3,0] = 28051483866417948291356906371063959987011977735069581088198413305545643762525
key_sched_matrix_381[3,1] = 940230548799789892304826428424685764994822279495712794369041189518965610982
key_sched_matrix_381[3,2] = 51086698257646416011541091115454938869982232807222651212625724712549497545484
key_sched_matrix_381[3,3] = 17476372527237931823914329908105757745889986759257828348803723712031461055028
key_sched_matrix_381 = key_sched_matrix_381.transpose()

key_sched_vec_381 = [0,0,0,0]
key_sched_vec_381[0] = 47547237971610965741643776816276041546468880714675495834455049663798422970459
key_sched_vec_381[1] = 10004118136888058764408398782965078987905732598601545000387602435395348015578
key_sched_vec_381[2] = 41751554506863950612723183999266149980852802057217063263129581065630539355943
key_sched_vec_381[3] = 28630474321717538333837377020183699597240697917209889448356171144508785456174
key_sched_vec_381 = vector(key_sched_vec_381)

def key_injection(init_vec, key_sched_matrix, key_sched_vec, q):
    key_injection = []
    k = (init_vec * key_sched_matrix + key_sched_vec) % q
    key_injection.append(k)
    for i in range(1, 24):
        k = (key_injection[i-1] * key_sched_matrix + key_sched_vec) % q
        key_injection.append(k)
    return key_injection

# remember to check `key_injection_381` against the `rescue_constants_381.rs`
key_injection_381 = key_injection(init_vec_381, key_sched_matrix_381, key_sched_vec_381, q381)

##########################################################
## rescue377 parameters
##########################################################

q377 = 0x12ab655e9a2ca55660b44d1e5c37b00159aa76fed00000010a11800000000001
rescue377 = Rescue(128, q377, 4, 5)

init_vec_377 = [0,0,0,0]
init_vec_377[0]= 7195166260762508599252723804118999247617987830477524724582535753522743429902
init_vec_377[1]= 157568923057870085185801131226812508154648823377393772750758002166934615414
init_vec_377[2]= 8368974368714179058560102222209821528142740294286535716971241458054331447299
init_vec_377[3]= 2193144866846120881109650827139290126159606618067745139279401080525317213903
init_vec_377 = vector(init_vec_377)

key_sched_matrix_377 = matrix(ZZ, 4, 4)
key_sched_matrix_377[0,0]= 7706576124239544837371600760424887325666871237646566433582815095059014199792
key_sched_matrix_377[0,1]= 5866850164576261478222180177187623784425095431438009129648961690750738724033
key_sched_matrix_377[0,2]= 5967963618215854522411152750142075651481461240008734293775989630299855162504
key_sched_matrix_377[0,3]= 4846413119387162211456448903358698082073272134778198460673863015758257657569
key_sched_matrix_377[1,0]= 1245960362769537792640019594237304364405740843817026904000374334904749831719
key_sched_matrix_377[1,1]= 7953944257726793928692708838487408421612439320876245321369789667138797299913
key_sched_matrix_377[1,2]= 4754797182399066897135937139456358243903942729099936743831234828037073492871
key_sched_matrix_377[1,3]= 7499009130375379463556804089865923760153528008940973027774256635004918389563
key_sched_matrix_377[2,0]= 6473093830626604929963072604064598990230085260662177396257715740435130466686
key_sched_matrix_377[2,1]= 4390337253131514942705827559491664950984265110689583880841633000427121081888
key_sched_matrix_377[2,2]= 3522051946840768458577251601407876587632962453320814154152205148191545374550
key_sched_matrix_377[2,3]= 6319999439708992933292400869565273518174083699772881386205747820203056621547
key_sched_matrix_377[3,0]= 5289326583391743443615481307619780473919202444935065353437083634733980820257
key_sched_matrix_377[3,1]= 6938831675933050844113924302108891647008288148791676051457678992328784482036
key_sched_matrix_377[3,2]= 1512276495893019861517996168661692331234716309646677384152244252805703243785
key_sched_matrix_377[3,3]= 1059856104783947562758392666568158542266706238365295453209304533860586199352
key_sched_matrix_377 = key_sched_matrix_377.transpose()

key_sched_vec_377 = [0,0,0,0]
key_sched_vec_377[0]= 6719983214629867114203683304402864967396584522104316535218975820603408161605
key_sched_vec_377[1]= 1631001820510975681976157041507139599858468300000865485702360346888662886649
key_sched_vec_377[2]= 6512151801847166617260532883979631278806942338258734789784404511769472570827
key_sched_vec_377[3]= 396144897873338732377306209560320349606829120111196081730035080973497562014
key_sched_vec_377 = vector(key_sched_vec_377)

key_injection_377 = key_injection(init_vec_377, key_sched_matrix_377, key_sched_vec_377, q377)

# PERMUTATION_ROUND_KEYS
# /// This is obtained by running
# /// ```
# /// use crate::rescue::{Permutation, RescueVector, PRP};
# /// use ark_bls12_381::Fr;
# /// use ark_ff::Zero;
# /// use ark_ff::PrimeField;
# /// use ark_std::vec;
# /// use ark_std::println;
# /// let rescue_perm = PRP::<Fq377>::default();
# /// let rescue_hash = Permutation::<Fq377>::default();
# /// let zero = RescueVector::zero();
# /// let PERMUTATION_ROUND_KEYS = rescue_perm.key_schedule(&zero);
# /// for e in PERMUTATION_ROUND_KEYS {
# ///     for f in e.vec{
# ///         println!("0x{}", f.into_repr());
# ///     }
# /// }
# /// ```
permutation_round_key = []


permutation_round_key.append(0x0FE851DD7F135B71A33F27BC19E293DFFAB4490BCE2B4983BEB1450108214B0E)
permutation_round_key.append(0x00592E4C2F85BD3A064EB3DD41FF7F942A746D4DCFEC540E9C99C77DBD953576)
permutation_round_key.append(0x1280ABF008A7200012B198A7135988DA09F9ADFADDB6CA0C72E2391CEB613803)
permutation_round_key.append(0x04D946A84B6716F4E3A2434CCA950C34D7651B7D149C0553A81DB36CEDB80ECF)
permutation_round_key.append(0x0AF4FAB91DFFA400DCCBD4AD1F804C4534CA91E579BB1B9A500B59DE359FA8FA)
permutation_round_key.append(0x116B749855A33E4553016F2F40CFD9194F5E1ED16A7CE71C8429DF9DD27C316D)
permutation_round_key.append(0x00E3884E8F75247D74E0484BA4EB8D32D1D35480FE23D2E3DEA828403600F1CD)
permutation_round_key.append(0x08D91A277265E949DF84C623079FF7B4244333CDD56B960231A360020DCB8FF1)
permutation_round_key.append(0x10C56EE02F2E1E05CAA16B20D1F83D11A66F38B9B612D27F2E95C315E75CA08B)
permutation_round_key.append(0x09D2C8D439666F09173C47B83030628E7D25F4A87E49305F8B1035348BD23220)
permutation_round_key.append(0x0FE8B3A26AB849881A9E4F2AE7B15CEDF1E0364FAC2AE7F0FA7B1468B61AB4A5)
permutation_round_key.append(0x12AAAC0908691A93A221ECB74DF683D52B4B85675A3DBC64CF9472469DE8935A)
permutation_round_key.append(0x0A4FDE20123B1B264C72ADB1FC3D7B0196727D9EFD43D6CA0BDAC6C460C44DEE)
permutation_round_key.append(0x01E40A05433DB7184E0B29CF05E6BB6FE985FD4E35C1CAC55D26338B1E7CC02C)
permutation_round_key.append(0x0DCAFCAC72BCB7DCEDD9D999C42975DE0B58F832B5770D1EEA9ADBD5532DC928)
permutation_round_key.append(0x0A966A16593B7E56898223338CEFD9C639EA47778A4FFE8D1281FBA7C4F3155E)
permutation_round_key.append(0x05942DD60B1F4559444113603D7B700B600898ED3212BC95E591C26F1E90AFA5)
permutation_round_key.append(0x08B6DAF5E5E3205C7C9BD1FC5E4E0A551883725DD6D53C0E679AF2FDD63B4FEF)
permutation_round_key.append(0x0C18E92F63721E0B86D27F26934B556F87E4209EBFED798E3E7B15A2FFF3F3F2)
permutation_round_key.append(0x101977E965B18D585DA7AFB08D4A01401E350832AC3B70B7812386DAF09E285B)
permutation_round_key.append(0x10E30521F8C49920E878105F793FB7CD6735E98E03EB64E6C61A60EEA02247D2)
permutation_round_key.append(0x0640CD237AB8F5607637785047A84AE50277534C1F5E3B76DDF9DDE390B76331)
permutation_round_key.append(0x0663E9F8C805DC296746D4BDD1B5180DC4EE4DD896C0099192DF29984494612A)
permutation_round_key.append(0x056CF78E72D29BAC09704A9A51D8432416A96F88C3C67780498233030D5531B8)
permutation_round_key.append(0x0486254682E17F20DC7C2629777706325D65AB54DD22F329A5B90E2897A8E007)
permutation_round_key.append(0x083A9C2BED3CF9F8BEA43570B4F68CAEED5AC24E5EB6A2B1AD5BE65922056015)
permutation_round_key.append(0x04D8F332E4D2F670304C87738DCC03770D4F1107FFAC9CE314050A25F37DA888)
permutation_round_key.append(0x06D699F0AE1FFFBC5A99C0AEF45BCBB557C46B00F7DC70162CF7BD26176E52F8)
permutation_round_key.append(0x114E5D9D9AC2DED73245E98048925A7875EBC90C72B052BD35A2D8DCECD561C9)
permutation_round_key.append(0x08795FDE96FD1E1C8C471A134A389579242407A2EFA21FE32C25CED411C1DFFF)
permutation_round_key.append(0x1091837073EF806D9D627F9B9A47E1AE8EBA3E4A13B80DB4A3A1D6FCEFE34253)
permutation_round_key.append(0x069C965239FFB43BC082F8A8B7FF662803216E63CCB575E7CE641C44B8DA7C06)
permutation_round_key.append(0x052F98DF53D901C5A0187F64E23350B3536499023220CE0C3F784D4C0CCDF5A1)
permutation_round_key.append(0x10D1D4DFC136C5C3C1E0CB7B6003B585DC9BFB5D03F4934BD46B06D640E0BCCE)
permutation_round_key.append(0x0550A1A3731AB3C995D027542EF311F2FF75DB5C3E4C5859A3485CD98827F1C4)
permutation_round_key.append(0x07BEC048568DA5A8B880C4A9A86228E46DE26FE3BAD39C7595F47D9D372745BE)
permutation_round_key.append(0x117975A9F51682A378D8A81B8713132ED5EC04EE1FB8B6B64796A33FBA28CECC)
permutation_round_key.append(0x0ED8B568ABEC772E2A7F156B48A064FAEA4232E3E9AEDEF8C791C9F3029F1812)
permutation_round_key.append(0x099E7499126881E919AD7416A633BE8B122084F0390CC00363A8D44248DED31D)
permutation_round_key.append(0x03A756A84DE2F2D926FB67C8E05CE8161470536398932649548791BBF06F949A)
permutation_round_key.append(0x0B98FD95C2428EE4D430922550B83FC8707DADFDFB794F07081FBBF6E3105C45)
permutation_round_key.append(0x119F2F13F459E7CDB58ADDC30A770D46F6B904D9B114650ADEB61FE017580134)
permutation_round_key.append(0x0ABBB571292788C06C4DCA027FD65EF50BDD2AF4CC68424AE29CD607C8ED8682)
permutation_round_key.append(0x0F342EBFC61F699C2240941EB8FE046968CAEBAC7A69A966826454C270ADD646)
permutation_round_key.append(0x04FA32B893D9353417471184DC95D5C116DDBFAF0E8CBB5D6564FC7CCAE2CBE8)
permutation_round_key.append(0x0116D6CC33254ADFF75037731EB18B25F2240DE090223A40437056ED018A8BF1)
permutation_round_key.append(0x006B076CD9D9238B739CCB07383F5845BB91FCA042AA1214112BB660155FA44D)
permutation_round_key.append(0x037B0F0F37634BB2E8717F6C703C31F3B0F0EC8B3F9E4900FDFCF2FB3FE3E238)
permutation_round_key.append(0x112D9E0E346DD82D7BFAD9B31380519A9033956CE64E5257C4709CCE953277ED)
permutation_round_key.append(0x08DBCCB99C1209379E4D2E4EE9D98E65FB43FDA29522BC02CCDC5B63D7DD5D6F)
permutation_round_key.append(0x0CC33DC2BB8ECB51F38849C80216A00297E4CC6B9E0CE5A00844B6F2907AF4A7)
permutation_round_key.append(0x072DBE2773A7D70C4D5E6C5600D9D26B53015EFD48823996ACFB73AF7AA9520C)
permutation_round_key.append(0x06B42549D272307CA3F990A72795745F817E1B0EEAB9C58A960E45B7CCF373A6)
permutation_round_key.append(0x045B205BB6AB88499F01634198D8D9D3BD7250B767B45D828918C51367D0CEEE)
permutation_round_key.append(0x0050E7F6DF0257CFCFE0D57CBA78EF01D2F18F26AD142F275726C03539A43668)
permutation_round_key.append(0x024E917200604E8D5B91F98DA52793B8F0FC51E87973B12CFBE7AE8CA0D061C2)
permutation_round_key.append(0x0449C2A0C3A3B106A0E4AED04A6D63290E389764DCDBA4E5B36BF73501EA7386)
permutation_round_key.append(0x09034A15A88B0250BB49B28BDA2C9CEF77A5449892E9AD9DB0E092FCA2426B13)
permutation_round_key.append(0x1118F2E3B8A4FE57BEF019F4DEED2923E31D1CE01CB89DCAEC633086059027AE)
permutation_round_key.append(0x040B57B1BD48F8FAE64FCB008A114A52A5F2183D85FFCC83D9308E985995A348)
permutation_round_key.append(0x09B2FCC406217B31B644548FE57BA2E8098860AFF11F2D41D32AD182E6D5E057)
permutation_round_key.append(0x064A4A5A1BC801F00A5D1D4C387BF6DD868D8B8D8FF4ADD155BBE489D48466D5)
permutation_round_key.append(0x00E6C3529698EF4F77833C53BED8492F3DDCB3A9FA6FA37F3321F3D2C30DD74C)
permutation_round_key.append(0x04105B2667E85B11AEA6C77C427231DFAEA3CEA8FED9A11BBB016B7DD49D346D)
permutation_round_key.append(0x0BA6A8C853C14FFF66A454522F24E996B96F0CE8B902C01D0BA073A5ABABA957)
permutation_round_key.append(0x0C4E98E153A3ED111588C7A68DE047C58363FB3D52E2FB1D9EA79BC0935766E1)
permutation_round_key.append(0x0ED9B419D5F94201E9CB0F7E7D246F2EB8C1B6449187A04FDF2924C3E8F45EAE)
permutation_round_key.append(0x0CD2A1386C28911F191167E04C59854F3AD04FE7A61EC6D57D4331F44D3881C4)
permutation_round_key.append(0x10DF1102969BFD753F9DBD23944366D679B46AFAAA610301104F3E836D931A43)
permutation_round_key.append(0x0EFA4A9EFA252BE202B432E55B706831AA46783C5F818DF4A099A7A0F6C1211B)
permutation_round_key.append(0x0D9405C492669DA91ADD9E3FEDC276C1DD948889462B8320DCD61710947A074F)
permutation_round_key.append(0x0FE279D2AF890F35C9987DBE3CAD66CC6DF0E0078562D6C56B9481B1225FFD11)
permutation_round_key.append(0x0CB4752FC6436B0B743E3B0B86A6669B65549798F4FC7A9CC45859142460B726)
permutation_round_key.append(0x0C4F5302C3F2FC711C62E85E027552AECF6B0F714E205C083E24F2102761CCEE)
permutation_round_key.append(0x0FA5437E18336C5178191DBB0A1C846C87A5979EAC99C5D167A11CF32BB7ED4C)
permutation_round_key.append(0x00E7068AC7F7BE6BE044964439A0FF5EF968A5647DA52F25C39254E0EE1AE818)
permutation_round_key.append(0x0278A5697060110D8A413FE44144BF406F4AB94E37455B9922AE93A8274136D1)
permutation_round_key.append(0x08DF0E4B53A90073ADEA88AC26BADBFD401EA6207EBBF92DB53CBFC78A806202)
permutation_round_key.append(0x0255D7339C5385F77AF92BFD0A968061270D0B93B144D13F0D4EBDC821322B82)
permutation_round_key.append(0x020E38969965AAC9008BE028599027F6AEBE5F0F8FA3ADAB521BBEAA9F4FD1AE)
permutation_round_key.append(0x0542ECAF616A20D3F6B31DF1A5F1FD7C9B4EA04BAEAE0013D9B3FB9F6DE8F558)
permutation_round_key.append(0x0D994C5F155B6DD5656E2223877B812BDDDD4FD728F5041EE4D70F6CC7505DFE)
permutation_round_key.append(0x04F762614E74C915BA319CDB56983BEB4C43EDFE24C14B342EA3313B229CA068)
permutation_round_key.append(0x0865C79F490C5BE38F5D66261F20CEF7435435D16C15193055E759874D79891C)
permutation_round_key.append(0x1159864A7827E5B574B9B898F400A5322BE0FBFF2FBF22803858E702BE872D22)
permutation_round_key.append(0x078FFA153F84F37971C9CBA211BBD54E8A726E66E501FC8A72FA89B4934EA871)
permutation_round_key.append(0x006360E271E735D63A2A5A6DE508D247B8CF080EC8A769058B66827F97C6696A)
permutation_round_key.append(0x03A499D0D19534CBE4DB3FEAE72456F4558A0C6C7F480BD17C312B7E923AB5E0)
permutation_round_key.append(0x09E502B6C07BF7781B62BE259F42F18CE2C5A4C76C29EDB81AB29D4FF4FE2BB3)
permutation_round_key.append(0x0B29D23386CC36CC379B12C56EC88FB7D16119DA3AE10A3EE1422AADF135FA65)
permutation_round_key.append(0x035D32BDE8D21E8FAE26DB461D9CDCB704F261033D59FF2A8EA9008FAB58DEC3)
permutation_round_key.append(0x0BF910E8FD5FF1B7B6CC86316695F80BD924082679E7A01ECF6B05E87EE81914)
permutation_round_key.append(0x05924B144F5321E20D8879057B924DA4435A54D984C4AFAC8FC0EC71771E6DEA)
permutation_round_key.append(0x0B73609E436BCEDE77AC3F5E6280255C06E371F4582A308B53AE08182DF5F684)
permutation_round_key.append(0x062CAAE25B816FA35A41D1690A7AD77853F91ADFCF81C5C74FB81F872BAEDC37)
permutation_round_key.append(0x00304E9CACE95865F8CFE77AE6A38181EFEB85C0A15DC27B2934CCE7796B8ED6)
permutation_round_key.append(0x03DA383B2FEAEEB2FF0F414EFCFDB1BF763D6CC195B66CF2D906B5AC3E7AFBFB)
permutation_round_key.append(0x050BA2E6A3CACC46D7BE3581B72FB2EB30331129B713D35CA16346A97F61BE06)
permutation_round_key.append(0x0A72890F89380F5E5B7043FAE381255B4FB2B1444E5BCED452DCB4685070B186)
permutation_round_key.append(0x1025A3891F3042DCE5530BDF09D5EC980903A1208DD84B4D77955731322914A8)




##########################################################
## print parameters
##########################################################
import sys
def convert_bytes(input):
	res = []
	for v in input:
		res.append(int(v))

	res_str = "["

	for v in res:
		res_str +="0x%02X," % v

	res_str += "],"
	res_str = res_str.replace(",]", "]")

	return res_str
print("==========================\n")

for e in init_vec_377:
    print(convert_bytes(int.to_bytes(int(e), 32, 'little')))
print("==========================\n")


for e in key_injection_377:
    print("[")
    for f in e:
        print(convert_bytes(int.to_bytes(int(f), 32, 'little')))
    print("],")
print("==========================\n")

for e in permutation_round_key:
    print(convert_bytes(int.to_bytes(int(e), 32, 'little')))
print("==========================\n")


t = [0x0251A349F0DA422376205E44A60D3908E02927AE9D4686E0B55A7A1574F2F265, 0x0253EDEC680A5F380B08D78162EADDAC1D3DCA70FC7E3DFCE20FB84BBA6AB567, 0x0ACBF0CE2F4BFF086EBE5B9952E34635CFB1C922E9B4C399ADBC8D8EA1A0C510, 0x090201DF19762D16E289A82049CFBF3F0EC426EB04169D8AB21525E958D0B033]
for e in t:
    print(convert_bytes(int.to_bytes(int(e), 32, 'little')))
print("==========================\n")