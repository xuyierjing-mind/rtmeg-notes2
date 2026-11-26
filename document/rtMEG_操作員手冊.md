# **rtMEG** 操作員手冊 

(by 曾至新 2022/01/27) 

執行 **rtMEG** 功能 

- (1) 打開資料夾，路徑在 

/home/neuromag/fieldtrip-20121231/realtime/src/acquisition/neuromag/bin/x86_64pc-linux-gnu 



<!-- Start of picture text -->
‘‘aesoaaaGaa gy<br>6 tacaon:[B ememeromageldip 2012:231neaKimerrincuionnewemaginas 6p gms Bw<br>a Be -;<br>ce (cs<br><!-- End of picture text -->

- (2) 在此資料夾空白處按滑鼠右鍵，選 Actions – Open Terminal Here ，開啟執 行視窗，等待實驗者開始實驗 



<!-- Start of picture text -->
_<br>SA eee a a =<br>AY : : . Ei<br><!-- End of picture text -->

- (3) 當實驗者要開始實驗時，在執行視窗輸入如下指令，再按 enter 執行。 

**./neuromag2ft --chunksize 30** 

若是上一 run 實驗已輸入、執行過，可按鍵盤方向鍵 ⬆ 搜尋已輸入過的指令，再 按 enter 執行。 

其中 chunksize 30 代表一次更新 30 點資料 ( 因 sampling rate1000Hz ， 相同於一次更新 30ms) 。 

若實驗者無特別要求， chunksize 設為 30 。 

注意 chunksize 值不可設定低於 28 。 



<!-- Start of picture text -->
4P.4a 20 abana Lig<br>Ce) Se 3a<br>] Dremplate<br>5 : (i C_neuromag@sinuhe:~ffieldtrip-20121231/realtime/src/acquisition’neuromagibin- She = DX<br><!-- End of picture text -->

## (4)MEG 操作 : Go 、 Record raw 

當按下 Go 的時候， rtMEG 就開始把 MEG 資料寫入緩衝區 (buffer) 了。 



<!-- Start of picture text -->
eZ F<br>»> ies apes octet<br><!-- End of picture text -->

- (5) 實驗者一個 run 的實驗結束時， MEG 操作 : Stop 、存檔。 

- ( 此時資料暫停更新，但在還沒停止 rtMEG 功能前，實驗者還可以存取即時資 料 ) 

與受試者確認是否可以暫停 rtMEG 功能之後，在 執行視窗內按下鍵盤 **Ctrl** – **C** ，結束 rtMEG 功能，並確認執行視窗回到可以輸入指令的狀態。 

建議每一 run 實驗後都暫停 rtMEG ，待下一 run 開始，再執行 rtMEG 。 印象中試過 rtMEG 不能串流大約 10 分鐘以上的資料。 



<!-- Start of picture text -->
leaton Bat Yew Sp fede Ibo detays mtew ie<br><paeieoaQaQanR Fi<br>Ag tectorg[5 fareeoeragfntp 201715. ratinahrcneullonhe a roregSABt Spc i<br>@ be a<br>eters<br>Lo oBrak oe<br>Deompat<br>he 2 Dutiities —<br>- eBecg<br>SBeneee neuromag@sinuhe:~fieldtrip-20121231/realtime/src/acquisition neuromag/bin - She = 5 X<br>SB<br>iol wromogafe (0119 16:44:39) Conection ok<br>LL aera neuronagzft (220119 16:45:85) About to disconnect from Neuronag data server...<br>‘Dawe eau ay<br>{aml Fwcrenyes tobe 188.64-9e-Utnar-aets i<br>Shrcres = B<br>DatwaneBrodees |Lessshe i<br>Bree<br>¢Bravenay<br>Droms2 oN<br># GLEEiS ore Rem re re 98 79 Teil Fld<br><!-- End of picture text -->

- (6) 當實驗者要開始執行下一 run ，回到步驟 (3) 

- (7) 當實驗全部結束，請把執行視窗關閉 

## 開啟內部 **trigger** 

實驗者在設計實驗的階段，可能會需要 MEG 產生 trigger 用以量測相關延遲 

(1) 點擊 Change (External stimulus generation 旁邊 ) 



<!-- Start of picture text -->
[L Acquisition: contro! BER<br>————<br>2 ESAT WAR a ean nae ema<br>Settings<br>Change | Projectpa<br>Change | Subjectte st (<br>External stimulus generation.<br>Change | Orline averaging: not active.<br>Acquisition controls<br>Go! OStimulate ClAverage ()Recordraw () cHPI ‘Stop<br>Stopwatch EEG calibration<br>00:00 | start || stop ||| Csendsigna |<br><!-- End of picture text -->

(2) 點擊 Internal stimulus generation 



<!-- Start of picture text -->
T wacaulehtionceontral =ax<br>Sop 1 Bin Nequctet Sa e b akeedbatters tote 0 wissing package quantns)<br>[Lstimolue setup. x 4<br>Settings<br>Change | Priestpa + Jengivms (Sins<br>Change | Subject:te : —+——J<br>ange | Aeavsten]<br>crnee|oeraed «fd<br>aejoimed « [IIL]<br>Sa ee<br>Somes |e > (EE_)<br>Acquisition controlg = |<br>eo |osiq io [| y fcup! [Stop<br>Soon Load] Save.) Generate,<br>D esternal stmulus generation<br>eeNo rw deta recoded —eeE——EEE<br>Event logger competed<br>Head not igtice. HP! wl not be used<br><!-- End of picture text -->

## (3) 若實驗者無特別要求 

在 # 欄位輸入 1 

在 length/ms 欄位輸入 5 

在 ISI/ms 欄位輸入 500 ，然後按下 Ok 



<!-- Start of picture text -->
Acquisition: control BEeg<br>File Ondine Tools Help<br>stop ... 200 Acquisition completed, 60 data buffers (with 0 missing package quantuns)<br>meas ... 200 Master: Acquisition starting, decimation 1 fi<br>LE Stimulus setup x eA<br>Settings<br>Change | Project:;  pa # — Iength’msbt —ISl/ms<br>Change | Acquisition} = (JL|L_|<br>Change | External stil 4, |<br>Change | Online ave} 5:<br>Change | HPI: not dig 6: J<br>Change: | Gantry pos| a<br>Acquisition controls) 3:<br>Go! Sti 10: L 2 FicHPt | Stop<br>Stopwatch Load..| ‘Save..| |Generate.<br>00:00 | Start o Internal stimulus generation<br>© External stimulus generation<br>Acquisition finished. os<br>No raw data recorded Ok ance Help<br>No responses averaged.<br>Event logger completed,<br>Head not digitized, HPI will not be used.<br><!-- End of picture text -->

## trigger 示意圖 : 



<!-- Start of picture text -->
length<br>sms<br>ISI<br>k 500ms |<br><!-- End of picture text -->

(4) 在 Go 的時候，點擊 Stimulate 開始產生 trigger 。 再次點擊 Stimulate 即停止 trigger 



<!-- Start of picture text -->
[. Acquisition: control a BS)es) Bel<br>File On-line Tools Help<br>neas ... 200 aster: Acquisition starting, decimation 1 i<br>ston ... 2200 Now triggering<br>ui<br>Settings<br>Shange | Project pa<br>Shange | Subject te st<br>Change Acquisition: 0.10... 330 Hz @ 1000.0 Hz, 334 channels, IAS On<br>“baage | Internal stimulus generation.<br>Shaage | Onrline averaging: not active.<br>Shange HPI: not digitized!<br>“hange | Gantry position: Detected: Upright(60)<br>Acquisition controls<br>Restart LiAverage ([)Recordraw (| cHPI Stop<br>Stopwatch EEG calibration<br>00:00 | Start | Stop O) Send signal<br>Acquired 30.00 s...<br>No raw data recorded<br>No responses averaged.<br>Nothing rejected!<br>Head not digitized. HP! will not be used.<br>4<br><!-- End of picture text -->

