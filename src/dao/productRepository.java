package dao;

import java.util.ArrayList;

import dto.Product;

public class productRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static productRepository instance = new productRepository();
	
	public static productRepository getInstance() {
		return instance;
	}
	
	public productRepository() {
		Product phone = new Product("P1234", "iphone12 Pro", 1350000);
		phone.setDescription("4.7-inch, 1334X750 Retina HD display, " + "8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");
		
		Product notbook = new Product("P1235", "LG PC 그램", 1500000);
		phone.setDescription("13.3-inch, IPS LED display, 5rd Generration" + "Intel Core processors");
		notbook.setDescription("Notbook");
		notbook.setManufacturer("LG");
		notbook.setUnitsInStock(1000);
		notbook.setCondition("Refurbished");
		notbook.setFilename("P1235.png");

		Product tablet = new Product("P1236", "Galawy", 900000);
		tablet.setDescription("212.8 * 125.6*6.6mm, Super AMOLED display, " + "Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");
		
		listOfProducts.add(phone);
		listOfProducts.add(notbook);
		listOfProducts.add(tablet);
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}

	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId()
				!= null && product.getProductId().equals(productId)) {
					productById = product;
					break;
			}
		}
		return productById;
	}

// 데이터를 저장해두는 곳
}