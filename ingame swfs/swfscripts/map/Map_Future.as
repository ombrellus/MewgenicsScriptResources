package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class Map_Future extends MovieClip
   {
      
      public var MAP_HARDPATH_BANNER:TextField;
      
      public var battle:MapNode_Battle;
      
      public var boss:MovieClip;
      
      public var camera_bounds:MovieClip;
      
      public var dots:MovieClip;
      
      public var event:MapNode_Event;
      
      public var furniturebox3:MapNode_FurnitureBox3;
      
      public var hard:MapNode_Hard;
      
      public var miniboss:MovieClip;
      
      public var oneway:MovieClip;
      
      public var shop:MapNode_Shop;
      
      public var start:MapNode_Enter;
      
      public var time_machine:MapNode_Exit;
      
      public var treasure:MapNode_Treasure;
      
      public var treasure_hard:MapNode_Treasure;
      
      public function Map_Future()
      {
         super();
      }
   }
}

