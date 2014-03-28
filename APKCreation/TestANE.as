package  {
	
	import flash.display.MovieClip;
	import com.adobe.nativeExtensions.Vibration;
	import flash.events.MouseEvent;
	import flash.utils.ByteArray;
	import com.adobe.images.PNGEncoder;
	import flash.display.BitmapData;
	
	
	public class TestANE extends MovieClip {
		
		
		public function TestANE() 
		{
			if (Vibration.isSupported)
			{
				button.txt.text = 'supported'
			}
			else
			{
				button.txt.text = 'not'
			}
			button.addEventListener(MouseEvent.CLICK, onClick);
		}
		
		private function onClick(event:MouseEvent):void
		{
			var bd:BitmapData = new BitmapData(this.stage.stageWidth,stage.stageHeight);
			bd.draw(this);
			var ba:ByteArray = PNGEncoder.encode(bd);
						
			var vibration:Vibration=new Vibration();
			vibration.vibrate(ba);
		}

	}
	
}