using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace craigslistCSharp.Services
{
    public class HousesService
    {
        private readonly HousesRepository _housesRepository;

        public HousesService(HousesRepository housesRepository)
        {
            _housesRepository = housesRepository;
        }

        internal House CreateHouse(House houseData)
        {
            int houseId = _housesRepository.CreateHouse(houseData);

            House house = GetHouseById(houseId);

            return house;
        }

        internal House GetHouseById(int houseId)
        {
            House house = _housesRepository.GetHouseById(houseId);
            if (house == null)
            {
                throw new Exception($"{houseId} is not a valid Id");
            }
            return house;
        }

        internal List<House> GetHouses()
        {
            List<House> houses = _housesRepository.GetHouses();
            return houses;
        }

        internal House RemoveHouse(int houseId)
        {
            House house = GetHouseById(houseId);
            _housesRepository.RemoveHouse(houseId);
            return house;
        }

        internal House UpdateHouse(int houseId, House houseData)
        {
            House originalHouse = GetHouseById(houseId);

            originalHouse.Year = houseData.Year ?? originalHouse.Year;
            originalHouse.Bedrooms = houseData.Bedrooms ?? originalHouse.Bedrooms;
            originalHouse.Bathrooms = houseData.Bathrooms ?? originalHouse.Bathrooms;
            originalHouse.Price = houseData.Price ?? originalHouse.Price;
            originalHouse.Sqft = houseData.Sqft ?? originalHouse.Sqft;
            originalHouse.Hoa = houseData.Hoa ?? originalHouse.Hoa;
            originalHouse.HasPool = houseData.HasPool ?? originalHouse.HasPool;
            originalHouse.Description = houseData.Description ?? originalHouse.Description;

            House house = _housesRepository.UpdateHouse(originalHouse);

            return house;
        }
    }
}