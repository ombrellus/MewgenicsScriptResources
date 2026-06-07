package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class Map_Alley extends MovieClip
   {
      
      public var MAP_HARDPATH_BANNER:TextField;
      
      public var battle:MapNode_Battle;
      
      public var boss:MapNode_Boss;
      
      public var camera_bounds:MovieClip;
      
      public var dots:MovieClip;
      
      public var event:MapNode_Event;
      
      public var exit0:MapNodeExit_Sewers;
      
      public var exit1:MapNodeExit_Junkyard;
      
      public var foodbox:MapNode_FoodBox;
      
      public var hard:MapNode_Hard;
      
      public var hard_initial:MapNode_Hard;
      
      public var home:MapNode_Exit;
      
      public var miniboss:MapNode_Miniboss;
      
      public var oneway:MovieClip;
      
      public var questdestination_junkyard:MovieClip;
      
      public var questdestination_sewers:MovieClip;
      
      public var shop:MapNode_Shop;
      
      public var start:MapNode_Home;
      
      public var treasure:MapNode_Treasure;
      
      public var treasure_hard:MapNode_Treasure;
      
      public function Map_Alley()
      {
         super();
      }
   }
}

