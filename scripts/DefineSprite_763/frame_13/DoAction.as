if(this._currentframe == 13)
{
   _root["aso#56196"].player1.myi = -1;
   this.colmap._visible = false;
   GO = true;
   _root["aso#56196"].speedup._visible = false;
   _root["aso#56196"].speedup2._visible = false;
   set("aso#87533",1);
   while(eval("aso#87533") < _root.playerstot)
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 1;
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 0)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 200;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(4);
         _root["aso#56196"]["player" + eval("aso#87533")].w_upg3 = 2;
      }
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 1)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 1600;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(4);
         _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(4);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(12);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 5;
      }
      if(eval("aso#87533") == 1)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 0;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 500;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(9);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(13);
         _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(8);
         _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(8);
         _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(8);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 8;
         _root["aso#56196"]["player" + eval("aso#87533")].w_upg3 = 1;
      }
      eval("aso#87533")++;
   }
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(_root["aso#56196"].player1["aso#12881"] <= 0)
         {
            _root.loose = 1;
         }
         set("aso#87533",0);
         while(eval("aso#87533") < _root.playerstot)
         {
            if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#35024"] == true)
            {
               if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] > 0)
               {
                  if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.kill_reg0) || _root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.kill_reg1) || _root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.kill_reg2))
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = -100;
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "body";
                  }
               }
            }
            eval("aso#87533")++;
         }
         set("aso#87533",0);
         while(eval("aso#87533") < 2)
         {
            if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup2))
            {
               _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] -= 1.5;
               _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] *= 0.99;
               if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup2))
               {
                  _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = Math.min(_root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"],1);
               }
               if(!stand)
               {
                  if((Key.isDown(65) || Key.isDown(37)) && eval("aso#87533") == 0 || eval("aso#87533") != 0 && _root["aso#56196"]["player" + eval("aso#87533")].botaction == 2)
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] -= 0.2;
                  }
                  if((Key.isDown(68) || Key.isDown(39)) && eval("aso#87533") == 0 || eval("aso#87533") != 0 && _root["aso#56196"]["player" + eval("aso#87533")].botaction == 1)
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] += 0.2;
                  }
               }
            }
            if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup))
            {
               _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = 0;
               _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] = 0;
               if(Key.isDown(38) || Key.isDown(87))
               {
                  _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = -4;
               }
               if(Key.isDown(40) || Key.isDown(83))
               {
                  _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = 4;
               }
               if(Key.isDown(39) || Key.isDown(32) || Key.isDown(68))
               {
                  _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] = 6;
               }
               else
               {
                  _root["aso#56196"]["player" + eval("aso#87533")]._x = _root["aso#56196"].speedup._x + 30;
               }
            }
            eval("aso#87533")++;
         }
         set("aso#87533",1);
         if(GO)
         {
            if(_root["aso#56196"]["player" + eval("aso#87533")].hunt == -1 || _root["aso#56196"]["player" + eval("aso#87533")].botaction == 0)
            {
               if(_root["aso#56196"]["player" + eval("aso#87533")]._x < _root["aso#56196"].player0._x - 100)
               {
                  _root["aso#56196"]["player" + eval("aso#87533")].botaction = 1;
               }
               if(_root["aso#56196"]["player" + eval("aso#87533")]._x > _root["aso#56196"].player0._x + 100)
               {
                  _root["aso#56196"]["player" + eval("aso#87533")].botaction = 2;
               }
               if(_root["aso#56196"]["player" + eval("aso#87533")].botaction == 1 || _root["aso#56196"]["player" + eval("aso#87533")].botaction == 2)
               {
                  if(_root["aso#56196"].colmap.hitTest(_root["aso#56196"]._x + _root["aso#56196"]["player" + eval("aso#87533")]._x,_root["aso#56196"]._y + _root["aso#56196"]["player" + eval("aso#87533")]._y + 20,true))
                  {
                     if(_root["aso#56196"].colmap.hitTest(_root["aso#56196"]._x + _root["aso#56196"]["player" + eval("aso#87533")]._x + (_root["aso#56196"]["player" + eval("aso#87533")].botaction - 1.5) * _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] * 15,_root["aso#56196"]._y + _root["aso#56196"]["player" + eval("aso#87533")]._y - 20,true) || !_root["aso#56196"].colmap.hitTest(_root["aso#56196"]._x + _root["aso#56196"]["player" + eval("aso#87533")]._x + (_root["aso#56196"]["player" + eval("aso#87533")].botaction - 1.5) * _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] * 5,_root["aso#56196"]._y + _root["aso#56196"]["player" + eval("aso#87533")]._y + 100,true))
                     {
                        _root["aso#56196"]["player" + eval("aso#87533")].botaction = 3;
                     }
                  }
               }
            }
         }
         if(GO)
         {
            if(_root["aso#56196"].player0.hitTest(_root["aso#56196"].but0))
            {
               GO = false;
            }
         }
         else
         {
            if(_root["aso#56196"]["player" + eval("aso#87533")]._x < -100)
            {
               _root["aso#56196"]["player" + eval("aso#87533")].botaction = 1;
            }
            if(_root["aso#56196"]["player" + eval("aso#87533")]._x > 100)
            {
               _root["aso#56196"]["player" + eval("aso#87533")].botaction = 2;
            }
         }
         if(_root["aso#56196"]["player" + eval("aso#87533")].botaction == 1 || _root["aso#56196"]["player" + eval("aso#87533")].botaction == 2)
         {
            if(_root["aso#56196"].colmap.hitTest(_root["aso#56196"]._x + _root["aso#56196"]["player" + eval("aso#87533")]._x,_root["aso#56196"]._y + _root["aso#56196"]["player" + eval("aso#87533")]._y + 20,true))
            {
               if(_root["aso#56196"].colmap.hitTest(_root["aso#56196"]._x + _root["aso#56196"]["player" + eval("aso#87533")]._x + (_root["aso#56196"]["player" + eval("aso#87533")].botaction - 1.5) * _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] * 15,_root["aso#56196"]._y + _root["aso#56196"]["player" + eval("aso#87533")]._y - 20,true) || !_root["aso#56196"].colmap.hitTest(_root["aso#56196"]._x + _root["aso#56196"]["player" + eval("aso#87533")]._x + (_root["aso#56196"]["player" + eval("aso#87533")].botaction - 1.5) * _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] * 5,_root["aso#56196"]._y + _root["aso#56196"]["player" + eval("aso#87533")]._y + 100,true))
               {
                  _root["aso#56196"]["player" + eval("aso#87533")].botaction = 3;
               }
            }
            if(Math.abs(_root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"]) < 3)
            {
               if(Math.random() > 0.7)
               {
                  _root["aso#56196"]["player" + eval("aso#87533")].botaction = 3;
               }
            }
         }
      }
   };
}