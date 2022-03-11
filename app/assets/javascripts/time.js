const item = document.getElementById('time'); //htmlで、id='time'の時のみ表示します

function time() { //関数名
  let today = new Date(); //初期値 todayはdateで生成する
  item.innerHTML = today.toLocaleString("ja"); //日本時刻を取得する
  window.requestAnimationFrame(time); //時間の更新
}

time(); //関数呼び出し