#include "data_tables.h"
#include "creature.h"
#include "projectile.h"
#include "pickup.h"

// for std::bind() placeholders _1, _2, & so on...
using namespace std::placeholders;

std::vector<CreatureData> initialize_creature_data()
{
    // init vector to amt of creatures (typecount enum holds creature count)
    std::vector<CreatureData> data(Creature::TypeCount);

    // PLAYER DATA
    data[Creature::Player].hitpoints = 100.f;
    data[Creature::Player].speed = 75.f;
    data[Creature::Player].texture = Textures::Player;
    data[Creature::Player].attack_interval = sf::seconds(1);

    // ADDITIONAL CREATURE DATA...

    return data;
}

/**
 * @warning Unused, implement for projectile data.
 * @return std::vector<ProjectileData> data (and traits)
 * */
std::vector<ProjectileData> initialize_projectile_data()
{
    std::vector<ProjectileData> data(Projectile::TypeCount);

    /* data[Projectile::PlayerFire].damage = 5.f;
    data[Projectile::PlayerFire].speed = 200.f;
    data[Projectile::PlayerFire].texture = Textures::FireProjectile; */

    return data;
}

/**
 * @warning Unused, implement for pickup data.
 * @return std::vector<PickupData> data (and traits)
 * */
std::vector<PickupData> initialize_pickup_data()
{
    std::vector<PickupData> data(Pickup::TypeCount);

    /* data[Pickup::HealthRefill].texture = Textures::HealthRefill;
    data[Pickup::HealthRefill].action = [] (Creature& c) { c.heal(15.f); }; */

    /* data[Pickup::AttackRate].texture = Textures::AttackRate;
    data[Pickup::AttackRate].action = std::bind(&Creature::increase_attack_rate, _1);

    data[Pickup::Arrows].texture = Textures::Arrows;
    // binds std::placeholder::_1 to first param of Creature::collect_ammunition,
    // and amt 3 to second param
    data[Pickup::Arrows].action = std::bind(&Creature::collect_ammunition, _1, 3); */

    return data;
}
