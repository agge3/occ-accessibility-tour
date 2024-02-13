#pragma once

/*
 * @namespace Category
 * Entity/SceneNode Category(ies), used to dispatch Command(s).
 */
namespace Category {
    enum Type {
        // bit-wise category for highest efficiency & bit-wise OR to group
        None = 0,
        SceneGroundLayer = 1 << 0,
        Player = 1 << 1, // player
        FriendlyNpc = 1 << 2, // friendly to player
        NeutralNpc = 1 << 3, // neutral to both sides
        EnemyNpc = 1 << 4, // enemy to player
        // TODO: decide if there needs to be player, friendly, neutral, enemy
        // for every entity

        Creature = Player | FriendlyNpc | NeutralNpc | EnemyNpc,
    };
}
