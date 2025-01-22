# generate the skyblock island
# generate the ground
fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 minecraft:grass_block
fill ~4 ~-1 ~-2 ~4 ~-1 ~2 minecraft:grass_block
fill ~-4 ~-1 ~-2 ~-4 ~-1 ~2 minecraft:grass_block
fill ~-2 ~-1 ~4 ~2 ~-1 ~4 minecraft:grass_block
fill ~-2 ~-1 ~-4 ~2 ~-1 ~-4 minecraft:grass_block

# generate the tree leaves
fill ~-1 ~2 ~-1 ~1 ~2 ~1 minecraft:oak_leaves[distance=1,persistent=false]
fill ~-1 ~3 ~-2 ~1 ~3 ~2 minecraft:oak_leaves[distance=1,persistent=false]
fill ~-2 ~3 ~-1 ~2 ~3 ~1 minecraft:oak_leaves[distance=1,persistent=false]
fill ~-2 ~4 ~-2 ~2 ~5 ~2 minecraft:oak_leaves[distance=1,persistent=false]
fill ~-1 ~6 ~-2 ~1 ~6 ~2 minecraft:oak_leaves[distance=1,persistent=false]
fill ~-2 ~6 ~-1 ~2 ~6 ~1 minecraft:oak_leaves[distance=1,persistent=false]
fill ~-1 ~7 ~-1 ~1 ~8 ~1 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~-2 ~7 ~ minecraft:oak_leaves[distance=1,persistent=false]
setblock ~2 ~7 ~ minecraft:oak_leaves[distance=1,persistent=false]
setblock ~ ~7 ~-2 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~ ~7 ~2 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~ ~9 ~ minecraft:oak_leaves[distance=1,persistent=false]

# generate the tree trunk
fill ~ ~ ~ ~ ~5 ~ minecraft:oak_log