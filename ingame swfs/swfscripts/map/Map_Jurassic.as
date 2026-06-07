package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class Map_Jurassic extends MovieClip
   {
      
      public var MAP_HARDPATH_BANNER:TextField;
      
      public var ancestor_bones:MapNode_Bones;
      
      public var battle:MapNode_Battle;
      
      public var boss:MovieClip;
      
      public var camera_bounds:MovieClip;
      
      public var dots:MovieClip;
      
      public var event:MapNode_Event;
      
      public var hard:MapNode_Hard;
      
      public var miniboss:MovieClip;
      
      public var oneway:MovieClip;
      
      public var quest_event:MapNode_SpecialEvent;
      
      public var shop:MapNode_Shop;
      
      public var start:MapNode_Enter;
      
      public var time_machine:MapNode_Exit;
      
      public var treasure:MapNode_Treasure;
      
      public var treasure_hard:MapNode_Treasure;
      
      public function Map_Jurassic()
      {
         super();
      }
   }
}

