package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class Map_Crater extends MovieClip
   {
      
      public var MAP_HARDPATH_BANNER:TextField;
      
      public var battle:MapNode_Battle;
      
      public var boss:MovieClip;
      
      public var camera_bounds:MovieClip;
      
      public var dots:MovieClip;
      
      public var event:MapNode_Event;
      
      public var exit0:MapNode_Exit;
      
      public var hard:MapNode_Hard;
      
      public var home:MapNode_Exit;
      
      public var miniboss:MovieClip;
      
      public var oneway:MovieClip;
      
      public var questdestination_moon:MovieClip;
      
      public var shop:MapNode_Shop;
      
      public var smallmeteor:MapNode_SmallMeteor;
      
      public var start:MapNode_Enter;
      
      public var treasure:MapNode_Treasure;
      
      public var treasure_hard:MapNode_Treasure;
      
      public var weather_event:MapNode_SpecialEvent;
      
      public function Map_Crater()
      {
         super();
      }
   }
}

