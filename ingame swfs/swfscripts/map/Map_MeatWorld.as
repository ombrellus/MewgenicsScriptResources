package
{
   import flash.display.MovieClip;
   
   public dynamic class Map_MeatWorld extends MovieClip
   {
      
      public var camera_bounds:MovieClip;
      
      public var dots:MovieClip;
      
      public var mw_altar:MapNode_SpecialEvent;
      
      public var mw_battle1:MapNode_Battle;
      
      public var mw_boss:MovieClip;
      
      public var mw_earlyhome:MapNode_Exit;
      
      public var mw_event1:MapNode_Event;
      
      public var mw_hard1:MapNode_Hard;
      
      public var mw_home:MapNode_Exit;
      
      public var mw_quest_event:MapNode_SpecialEvent;
      
      public var mw_treasure:MapNode_Treasure;
      
      public var oneway:MovieClip;
      
      public var start:MapNode_Enter;
      
      public function Map_MeatWorld()
      {
         super();
      }
   }
}

