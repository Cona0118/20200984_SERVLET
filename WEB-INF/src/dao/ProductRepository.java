package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅
    
    private static ProductRepository instance = new ProductRepository();

   public static ProductRepository getInstance(){
	return instance;
   }

    
	public ProductRepository() {
		Product LOL = new Product("LOL", "리그오브레전드", 1000);
		LOL.setDescription("개인의 숙련도와 팀 시너지를 조합하는 5대5 MOBA, 리그 오브 레전드에서 플레이어님의 실력을 선보이세요. 포지션을 선택하고, 아이템 빌드를 완성하고, 맵에서 치열한 전투를 펼쳐 적의 넥서스를 파괴하세요. 무한한 플레이 방식을 가진 150명 이상의 챔피언 중 자신만의 챔피언을 찾아 승리를 쟁취하세요.");
		LOL.setCategory("MOBA");
		LOL.setManufacturer("라이엇 게임즈");
		LOL.setUserInGame(300000);
        LOL.setFilename("LOL.jpg");
        
		Product ER = new Product("ER", "이터널리턴", 1000);
		ER.setDescription("루미아 섬에 오신 것을 환영합니다! 세상과는 떨어진 섬 루미아에서 과학집단 아글라이아가 인간을 대상으로 신인류가 되기 위한 비밀스러운 생존실험을 벌입니다. 생존에 필요한 무기와 방어구를 제작해 팀원과 함께 같이 생존해나가세요.");
		ER.setCategory("쿼터뷰 배틀로얄");
		ER.setManufacturer("님블뉴런");
		ER.setUserInGame(100000);
        ER.setFilename("ER.jpg");

		Product VLRT = new Product("VLRT", "발로란트", 1000);
		VLRT.setDescription("정밀한 실력 자랑, 굉장한 전리품, 숨 막히는 게임플레이와 짜릿한 경험까지. 모두 발로란트에서 무료로 즐길 수 있습니다. 발로란트에서는 각각 다섯 명으로 이루어진 공격팀과 수비팀이 25라운드 13선승제로 총격전을 벌입니다. 무엇보다 투명하고 공정한 게임플레이가 중요한 게임이기 때문에, 라이엇 게임즈에서는 발로란트를 위해 투자를 아끼지 않고 전례 없이 뛰어난 백엔드 시스템을 구축했습니다. 이 시스템은 전용 128틱 서버, 맞춤 제작 넷코드, 서버 권한 게임 아키텍처, 특유의 부정행위 방지 기능 등을 자랑합니다.");
		VLRT.setCategory("액션 히어로 슈팅");
		VLRT.setManufacturer("라이엇 게임즈");
		VLRT.setUserInGame(1500000);
        VLRT.setFilename("VLRT.jpg");
        
        Product DTD = new Product("DTD", "데이브 더 다이버", 24000);
		DTD.setDescription("신비로운 블루홀을 탐험하세요! 수많은 어종과 거대 생물이 가득한 아름다운 바닷속 언제 어디서 나타날 지 모르는 해양 생물들이 궁금하지 않으신가요? 위협적인 생물의 습격을 피해 싱싱한 식재료를 획득하세요. 환상적인 해양 생태계와 신비한 고대 유물. 바닷속은 수수께끼로 가득합니다.");
		DTD.setCategory("경영 시뮬레이션");
		DTD.setManufacturer("민트로켓");
		DTD.setUserInGame(150050);
        DTD.setFilename("DTD.jpg");
        
        Product DND = new Product("DND", "다크 앤 다커", 35000);
		DND.setDescription("자비없는 하드코어 판타지 1인칭 던전 PvPvE 어드벤처. 친구들과 함께 뭉쳐 용기, 재치, 교활함으로 신화 속 보물을 찾아내고, 무시무시한 괴물들을 물리치고, 다른 사악한 보물 사냥꾼들보다 한 발 앞서가라.");
		DND.setCategory("1인칭 생존 어드벤처, 로그라이트");
		DND.setManufacturer("아이언 메이스");
		DND.setUserInGame(25000);
        DND.setFilename("DND.jpg");
        
        Product LOA = new Product("LOA", "로스트 아크", 1000);
		LOA.setDescription("트라이포드 스튜디오에서 개발하고 스마일게이트 RPG가 운영하는 쿼터뷰 액션 MMORPG.");
		LOA.setCategory("MMORPG");
		LOA.setManufacturer("스마일게이트 RPG");
		LOA.setUserInGame(112000);
        LOA.setFilename("LOA.jpg");
        
        Product DNF = new Product("DNF", "던전 앤 파이터", 1000);
		DNF.setDescription("다양한 스타일, 매력적인 캐릭터몸을 무기로 싸우는 격투가부터 마법을 자유자재로 사용하는 마법사,총과 검 두 가지 무기를 다루는 총검사, 악을 섬멸하고 아군을 보호하는 프리스트까지! 다양한 캐릭터들이 각기 다른 게임 플레이와 모험을 선사합니다.");
		DNF.setCategory("MORPG, 벨트스크롤 액션 게임");
		DNF.setManufacturer("네오플");
		DNF.setUserInGame(112000000);
        DNF.setFilename("DNF.jpg");
        
        Product MPS = new Product("MPS", "메이플스토리", 1000);
		MPS.setDescription("메이플스토리는 2003년 4월 29일 출시된 2D 횡 스크롤 대규모 다중 사용자 온라인 롤플레잉 게임(MMORPG)입니다. 메이플스토리는 메이플 월드를 배경으로 플레이어가 모험하는 게임입니다. 다른 온라인 RPG 게임처럼 플레이어는 몬스터를 물리치고, 스킬과 능력치를 올릴 수 있습니다.");
		MPS.setCategory("MMORPG");
		MPS.setManufacturer("넥슨");
		MPS.setUserInGame(112003220);
        MPS.setFilename("MPS.jpg");
        
        Product FCO = new Product("FCO", "FC 온라인", 1000);
		FCO.setDescription("EA SPORTS FC ONLINE은 다른 곳에서 경험할 수 없는 최고의 현실감을 구단주님의 PC를 통해 제공합니다. 저희는 현실에 존재하는 다양한 축구 리그, 클럽, 축구 선수의 라이선스를 통해서 구단주님이 원하는 축구의 경험을 마음껏 플레이하실 수 있도록 할 것입니다.");
		FCO.setCategory("스포츠 게임");
		FCO.setManufacturer("EA 코리아 스튜디오");
		FCO.setUserInGame(111232000);
		FCO.setFilename("FCO.jpg");
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(LOL);
		listOfProducts.add(ER);
		listOfProducts.add(VLRT);
        listOfProducts.add(DTD);
        listOfProducts.add(DND);
        listOfProducts.add(LOA);
        listOfProducts.add(DNF);
        listOfProducts.add(MPS);
        listOfProducts.add(FCO);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    
    public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
    
    public void addProduct(Product product) {
	listOfProducts.add(product);
   }

}
