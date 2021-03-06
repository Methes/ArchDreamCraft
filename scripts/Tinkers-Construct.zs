// ******** Created By Arch-Nihil *******



// #======= Importing Stuff =======#


import mods.ic2.Compressor;
import mods.nei.NEI;



// #======= Variables =======#


val CastingBasin = <TConstruct:SearedBlock:2>;
val String = <minecraft:string>;
val SilkyCloth = <TConstruct:materials:25>;
val SilkyJewel = <TConstruct:materials:26>;
val BallOfMoss = <TConstruct:materials:6>;
val EnderBlock = <TConstruct:MetalBlock:10>;
val StoneTorch = <ore:torchStone>;
val EmptyCanister = <TConstruct:heartCanister>;
val AlPlate = <ore:plateAluminium>;
val AlRod = <ore:stickAluminium>;
val ClearPane = <TConstruct:GlassPane>;
val Moss = <BiomesOPlenty:moss>;
val MossyCobble = <minecraft:mossy_cobblestone>;
val MossyStoneBricks = <minecraft:stonebrick:1>;



// #======= Removing Recipes =======#


// ||||| Blocks |||||


// --- Block of Cobalt
recipes.remove(<TConstruct:MetalBlock>);

// --- Block of Ardite
recipes.remove(<TConstruct:MetalBlock:1>);

// --- Block of Manyullyn
recipes.remove(<TConstruct:MetalBlock:2>);

// --- Block of Copper
recipes.remove(<TConstruct:MetalBlock:3>);

// --- Block of Bronze
recipes.remove(<TConstruct:MetalBlock:4>);

// --- Block of Tin
recipes.remove(<TConstruct:MetalBlock:5>);

// --- Block of Aluminium
recipes.remove(<TConstruct:MetalBlock:6>);

// --- Block of Aluminium Brass
recipes.remove(<TConstruct:MetalBlock:7>);

// --- Block of Alumite
recipes.remove(<TConstruct:MetalBlock:8>);

// --- Block of Steel
recipes.remove(<TConstruct:MetalBlock:9>);




// ||||| Casting Recipes |||||


// --- Aluminium Ingot Casting
mods.tconstruct.Casting.removeTableRecipe(<GalacticraftCore:item.basicItem:5>);

// --- Iron Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<minecraft:iron_block>);

// --- Gold Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<minecraft:gold_block>);

// --- Emerald Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<minecraft:emerald_block>);

// --- Copper Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<IC2:blockMetal>);

// --- Tin Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<IC2:blockMetal:1>);

// --- Bronze Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<IC2:blockMetal:2>);

// --- Lead Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<IC2:blockMetal:4>);

// --- Steel Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<IC2:blockMetal:5>);

// --- Aluminium Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:6>);

// --- Aluminium Brass Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:7>);

// --- Alumite Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:8>);

// --- Cobalt Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock>);

// --- Ardite Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:1>);

// --- Manyullyn Block Casting
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:2>);

// --- Solid Ender Block Casting
mods.tconstruct.Casting.removeBasinRecipe(EnderBlock);


// ||||| Blocks & Items |||||


// --- Casting Basin (Now Useless.)
recipes.remove(CastingBasin);

// --- Empty Canister
recipes.remove(EmptyCanister);

// --- Stone Torch
recipes.remove(StoneTorch);

// --- Silky Cloth
recipes.remove(SilkyCloth);

// --- Silky Jewel
recipes.remove(SilkyJewel);

// --- Ball Of Moss
recipes.remove(BallOfMoss);



// #======= Adding Back Recipes =======#


// --- Block Of Manyullyn
Compressor.addRecipe(<TConstruct:MetalBlock:2>, <ore:ingotManyullyn> * 9);

// --- Block Of Alumite
Compressor.addRecipe(<TConstruct:MetalBlock:8>, <ore:ingotAlumite> * 9);



// ||||| Items |||||


// --- Empty Canister
recipes.addShaped(EmptyCanister, [
[AlRod, AlPlate, AlRod],
[AlPlate, ClearPane, AlPlate],
[AlRod, AlPlate, AlRod]]);

// --- Silky Cloth
recipes.addShaped(SilkyCloth, [
[String, <ore:foilGold>, String],
[<ore:foilGold>, String, <ore:foilGold>],
[String, <ore:foilGold>, String]]);

// --- Silky Jewel
recipes.addShaped(SilkyJewel, [
[SilkyCloth, SilkyCloth, SilkyCloth],
[SilkyCloth, <ore:BlockEmerald>, SilkyCloth],
[SilkyCloth, SilkyCloth, SilkyCloth]]);
// - Alternate Recipe
recipes.addShaped(SilkyJewel, [
[SilkyCloth, SilkyCloth, SilkyCloth],
[SilkyCloth, <ore:BlockDiamond>, SilkyCloth],
[SilkyCloth, SilkyCloth, SilkyCloth]]);

// --- Ball Of Moss
recipes.addShaped(BallOfMoss, [
[Moss, MossyCobble, Moss],
[MossyCobble, MossyStoneBricks, MossyCobble],
[Moss, MossyCobble, Moss]]);


// #======= Hiding Stuff =======#


// --- Casting Basin
NEI.hide(CastingBasin);

// --- Block Of Solid Ender
NEI.hide(EnderBlock);