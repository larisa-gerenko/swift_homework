//
//  main.swift
//  homework1
//
//  Created by Larisa on 26.12.2021.
//

import Foundation

/* 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 6. Вывести сами объекты в консоль. */

enum EngineStatus {
    case start
    case stop
}

enum WindowStatus {
    case open
    case close
}

protocol CarProtocol {
    var brand: String { get set}
    var model: String { get set}
    var year: Int { get set}
    var country: String { get set}
    var maxSpeed: Double { get set}
    var typeEngine: String { get set}
    var doorAmount: Int { get set}
    var seatAmount: Int { get set}
    var vehicleClass: String { get set}
    var engineVolume: Double { get set}
    var rudderPosition: String { get set}
    var windowStatus: WindowStatus { get set}
    var engineStatus: EngineStatus { get set}
    
    func printInfo()
   
}

extension CarProtocol {
    
    func openWindow() {
        windowStatus == WindowStatus.open ? print("Окно открыто") : print("Откройте окно")
    }
    
    func closeWindow() {
        windowStatus == WindowStatus.close ? print("Окно закрыто") : print("Закройте окно")
    }
    
    func startEngine() {
        engineStatus == EngineStatus.start ? print("Двигатель запущен") : print("Запустите двигатель")
    }
    
    func stopEngine() {
        engineStatus == EngineStatus.stop ? print("Двигатель остановлен") : print("Остановите двигатель")
    }
    
    func printInfo(){
        print("""
                Параметры автомобиля 1:
                - \(brand) \(model),
                - выпущен в: \(year) году,
                - страна производитель: \(country),
                - максимальная скорость: \(maxSpeed),
                - тип двигателя \(typeEngine),
                - количество дверей: \(doorAmount)
                - количество сидений: \(seatAmount)
                - класс автомобиля: \(vehicleClass)
                - объем двигателя \(engineVolume)
                - позиция руля: \(rudderPosition)
                - состояния окна: \(windowStatus)
                - состояния двигателя: \(engineStatus)
                """)
    }
}

final class TrunkCar: CarProtocol {
    
    var brand: String
    
    var model: String
    
    var year: Int
    
    var country: String
    
    var maxSpeed: Double
    
    var typeEngine: String
    
    var doorAmount: Int
    
    var seatAmount: Int
    
    var vehicleClass: String
    
    var engineVolume: Double
    
    var rudderPosition: String
    
    var windowStatus: WindowStatus
    
    var engineStatus: EngineStatus
    
    // MARK: - Custom property
    
    var tonnage: Int
    
    init(brand: String,
         model: String,
         year: Int,
         country: String,
         maxSpeed: Double,
         typeEngine: String,
         doorAmount: Int,
         seatAmount: Int,
         vehicleClass: String,
         engineVolume: Double,
         rudderPosition: String,
         windowStatus: WindowStatus,
         engineStatus: EngineStatus,
         tonnage: Int
    ){
        self.brand = brand
        self.model = model
        self.year = year
        self.country = country
        self.maxSpeed = maxSpeed
        self.typeEngine = typeEngine
        self.doorAmount = doorAmount
        self.seatAmount = seatAmount
        self.vehicleClass = vehicleClass
        self.engineVolume = engineVolume
        self.rudderPosition = rudderPosition
        self.windowStatus = windowStatus
        self.engineStatus = engineStatus
        self.tonnage = tonnage
    }
    
}

final class SportСar: CarProtocol {
    
    var brand: String
    
    var model: String
    
    var year: Int
    
    var country: String
    
    var maxSpeed: Double
    
    var typeEngine: String
    
    var doorAmount: Int
    
    var seatAmount: Int
    
    var vehicleClass: String
    
    var engineVolume: Double
    
    var rudderPosition: String
    
    var windowStatus: WindowStatus
    
    var engineStatus: EngineStatus
    
    // MARK: - Custom property
    
    var isNitrousOxideSystem: Bool
    
    init(brand: String,
         model: String,
         year: Int,
         country: String,
         maxSpeed: Double,
         typeEngine: String,
         doorAmount: Int,
         seatAmount: Int,
         vehicleClass: String,
         engineVolume: Double,
         rudderPosition: String,
         windowStatus: WindowStatus,
         engineStatus: EngineStatus,
         isNitrousOxideSystem: Bool
    ){
        self.brand = brand
        self.model = model
        self.year = year
        self.country = country
        self.maxSpeed = maxSpeed
        self.typeEngine = typeEngine
        self.doorAmount = doorAmount
        self.seatAmount = seatAmount
        self.vehicleClass = vehicleClass
        self.engineVolume = engineVolume
        self.rudderPosition = rudderPosition
        self.windowStatus = windowStatus
        self.engineStatus = engineStatus
        self.isNitrousOxideSystem = isNitrousOxideSystem
    }
    
}

extension SportСar: CustomStringConvertible {
    var description: String {
        return "Это спортивный автомобиль"
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "Это грузовой автомобиль"
    }
}

let sportCarOne = SportСar(brand: "Chevrolet",
                           model: "Camaro",
                           year: 2020,
                           country: "Germany",
                           maxSpeed: 250.60,
                           typeEngine: "Injector",
                           doorAmount: 2,
                           seatAmount: 2,
                           vehicleClass: "M",
                           engineVolume: 350.69,
                           rudderPosition: "Right",
                           windowStatus: WindowStatus.open,
                           engineStatus: EngineStatus.stop,
                           isNitrousOxideSystem: true)

let trunkCarOne = TrunkCar(brand: "Chevrolet",
                           model: "Aveo",
                           year: 2012,
                           country: "Russia",
                           maxSpeed: 139.56,
                           typeEngine: "Injector",
                           doorAmount: 2,
                           seatAmount: 3,
                           vehicleClass: "M",
                           engineVolume: 29.58,
                           rudderPosition: "Right",
                           windowStatus: WindowStatus.open,
                           engineStatus: EngineStatus.stop,
                           tonnage: 100000)

sportCarOne.windowStatus = .close
sportCarOne.engineStatus = .start
sportCarOne.printInfo()

trunkCarOne.engineStatus = .stop
trunkCarOne.windowStatus = .open
trunkCarOne.printInfo()
