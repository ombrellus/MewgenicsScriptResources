package
{
   import flash.display.MovieClip;
   
   public dynamic class Map_DimensionX extends MovieClip
   {
      
      public var battle:MapNode_Battle;
      
      public var boss:MovieClip;
      
      public var c4hard:MapNode_Hard;
      
      public var camera_bounds:MovieClip;
      
      public var dots:MovieClip;
      
      public var event:MapNode_Event;
      
      public var home:MapNode_Exit;
      
      public var quest_event:MapNode_SpecialEvent;
      
      public var start:MapNode_Enter;
      
      public var treasure:MapNode_Treasure;
      
      public function Map_DimensionX()
      {
         super();
      }
   }
}

