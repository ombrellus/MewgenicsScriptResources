package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class Map_Desert extends MovieClip
   {
      
      public var MAP_HARDPATH_BANNER:TextField;
      
      public var battle:MapNode_Battle;
      
      public var boss:MovieClip;
      
      public var camera_bounds:MovieClip;
      
      public var dots:MovieClip;
      
      public var event:MapNode_Event;
      
      public var exit0:MapNode_Exit;
      
      public var exit1:MapNode_Exit;
      
      public var hard:MapNode_Hard;
      
      public var home:MapNode_Exit;
      
      public var miniboss:MovieClip;
      
      public var oneway:MovieClip;
      
      public var optional_event:MovieClip;
      
      public var questdestination_bunker:MovieClip;
      
      public var questdestination_crater:MovieClip;
      
      public var shop:MapNode_Shop;
      
      public var shop_cheapwater:cheapwatershop;
      
      public var shop_water:cheapwatershop;
      
      public var smallmoneybag:MapNode_SmallMoneyBag;
      
      public var start:MapNode_Enter;
      
      public var treasure:MapNode_Treasure;
      
      public var treasure_hard:MapNode_Treasure;
      
      public function Map_Desert()
      {
         super();
      }
   }
}

