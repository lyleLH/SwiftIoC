# IOC

The IoC principle helps in designing loosely coupled classes which make them testable, maintainable and extensible.

- IoC - Principle
- DIP - Principle
- DI - Pattern
- IoC Container - framework

The IoC container is a framework used to manage automatic dependency injection throughout the application, so that we as programmers do not need to put more time and effort into it.

## Implement IoC using Factory Pattern

```swift
class HomeViewModel:NSObject {
 
    func getHomeData(result:((String , String)->())){
        
        ApiServiceFactory.getHomeApiService().getHomeData { host, api in
            print("get origin data : \(host) \(api)")
            print("do some bussine logic operation")
            print("callback to viewcontroller")
        }
    }
    func updateHomeTitle(name:(( String)->())) {
        ApiServiceFactory.getHomeApiService().getMerchantName { name in
            print("merchant name :\(name)")
        }
    }
}
```

```swift
class ApiServiceFactory:NSObject {
    class func getHomeApiService() -> HomeApiServiceProtocol {
        return HomeApiService()
    }
}

```

```swift
protocol HomeApiServiceProtocol:NSObject {
    
    func getHomeData(result:((String , String)->()))
    
    func getMerchantName(result:((String )->()))
    
}
```

```swift
class HomeApiService: NSObject,HomeApiServiceProtocol{
    func getHomeData(result:((String , String)->())){
        result("www.baidu.com","merchantdetails")
    }
    
    func getMerchantName(result:((String )->())){
        result("金牌代理商")
    }
}
```

## Implement DIP by creating abstraction

```swift
class HomeApiService: NSObject,HomeApiServiceProtocol{
    func getHomeData(result:((String , String)->())){
        result("www.baidu.com","merchantdetails")
    }
    
    func getMerchantName(result:((String )->())){
        result("金牌代理商")
    }
}
```

## Implement DI

- Client Class: The client class (dependent class) is a class which depends on the service class
- Service Class: The service class (dependency) is a class that provides service to the client class.
- Injector Class: The injector class injects the service class object into the client class.

As you can see, the injector class creates an object of the service class, and injects that object to a client object. In this way, the DI pattern separates the responsibility of creating an object of the service class out of the client class.

### Types of Dependency Injection

- Constructor Injection: In the constructor injection, the injector supplies the service (dependency) through the client class constructor.

- Property Injection: In the property injection (aka the Setter Injection), the injector supplies the dependency through a public property of the client class.

- Method Injection: In this type of injection, the client class implements an interface which declares the method(s) to supply the dependency and the injector uses this interface to supply the dependency to the client class.

#### Constructor Injection

调用类,注入一个实现类到 构造方法中

```swift
class BusinessViewModel : NSObject {
    private var dataService:DataSeviceInterface
    
    init(service:DataSeviceInterface) {
        dataService = service
        super.init()
    }
    
    func updateMerchantTitleViewData(merchantID:String) -> String{
        return dataService.getMerchantNameWithID(merchantID)
    }
}

```

#### Property Injection 

```swift
class BusinessViewModel1 : NSObject {
    public var dataService:DataSeviceInterface1?

    override init() {
        super.init()
    }
    
    func updateMerchantTitleViewData(merchantID:String) -> String{
        return dataService?.getMerchantNameWithID(merchantID) ?? ""
    }
}

```

#### Method Injection 

```swift
protocol DataServiceDependency:NSObject {
    func setDataDependency(denpendency:DataSeviceInterface2)
}

class BusinessViewModel2 : NSObject,DataServiceDependency {
   private var dataService:DataSeviceInterface2?

    override init() {
        super.init()
    }
    
    func updateMerchantTitleViewData(merchantID:String) -> String{
        return dataService?.getMerchantNameWithID(merchantID) ?? ""
    }
    
    func setDataDependency(denpendency: DataSeviceInterface2) {
        dataService = denpendency
    }
}

```

## IoC Container

All the containers must provide easy support for the following DI lifecycle.

- Register: The container must know which dependency to instantiate when it encounters a particular type. This process is called **registration**. Basically, it must include some way to register type-mapping.
- Resolve: When using the IoC container, we don't need to create objects manually. The container does it for us. This is called **resolution**. The container must include some methods to resolve the specified type; the container creates an object of the specified type, injects the required dependencies if any and returns the object.
- Dispose: The container must manage the lifetime of the dependent objects. Most IoC containers include different lifetimemanagers to manage an object's lifecycle and dispose it.

## Others

### Factory class

```swift
class ViewController: UIViewController {

    var viewModel:ViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
//        viewModel = ViewModel()
        viewModel = VmFactory().getObjecOfViewModel()
        viewModel.getHomeData { host, api in
            print("host: \(host) -- api: \(api)")
        }
    }
}
```

As you can see above, class ViewController uses VmFactory class to get an object of class ViewModel. Thus, we have inverted the dependent object creation from class ViewModel to VmFactory.

```swift
class VmFactory:NSObject {
    func getObjecOfViewModel() ->ViewModel {
        return ViewModel()
    }   
}
```
