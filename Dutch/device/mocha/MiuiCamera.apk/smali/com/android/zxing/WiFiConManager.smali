.class public Lcom/android/zxing/WiFiConManager;
.super Ljava/lang/Object;
.source "WiFiConManager.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectResult:Z

.field private mDialog:Landroid/app/ProgressDialog;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFinish:Z

.field private mIsRegister:Z

.field private mIsStartScan:Z

.field private mPassWord:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSSID:Ljava/lang/String;

.field private mSecurity:Ljava/lang/String;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "textView"
    .parameter "ssid"
    .parameter "security"
    .parameter "pwd"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    .line 48
    iput-object p3, p0, Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/android/zxing/WiFiConManager;->mSecurity:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/android/zxing/WiFiConManager;->mPassWord:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/zxing/WiFiConManager;->mFilter:Landroid/content/IntentFilter;

    .line 53
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/android/zxing/WiFiConManager$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/WiFiConManager$1;-><init>(Lcom/android/zxing/WiFiConManager;)V

    iput-object v0, p0, Lcom/android/zxing/WiFiConManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    new-instance v0, Lcom/android/zxing/WiFiConManager$2;

    invoke-direct {v0, p0}, Lcom/android/zxing/WiFiConManager$2;-><init>(Lcom/android/zxing/WiFiConManager;)V

    iput-object v0, p0, Lcom/android/zxing/WiFiConManager;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/zxing/WiFiConManager;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/zxing/WiFiConManager;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/zxing/WiFiConManager;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/zxing/WiFiConManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/zxing/WiFiConManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mSecurity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/zxing/WiFiConManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/zxing/WiFiConManager;->mConnectResult:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/zxing/WiFiConManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/zxing/WiFiConManager;->mFinish:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/zxing/WiFiConManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/zxing/WiFiConManager;->connect()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/zxing/WiFiConManager;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/zxing/WiFiConManager;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/zxing/WiFiConManager;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/zxing/WiFiConManager;->getResultMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private connect()I
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v9, 0x4

    .line 138
    iget-object v10, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    iget-object v11, p0, Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/zxing/WiFiConManager;->mSecurity:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/zxing/WiFiUtil;->getSecurity(Ljava/lang/String;)I

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/android/zxing/WiFiUtil;->isCurrentConnection(Landroid/net/wifi/WifiManager;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 139
    const/4 v9, 0x5

    .line 200
    :cond_0
    :goto_0
    return v9

    .line 142
    :cond_1
    iget-object v10, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 143
    .local v8, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v10, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, configList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_3

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 147
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/zxing/WiFiUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v0}, Lcom/android/zxing/WiFiUtil;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    iget-object v11, p0, Lcom/android/zxing/WiFiConManager;->mSecurity:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/zxing/WiFiUtil;->getSecurity(Ljava/lang/String;)I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 149
    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 150
    iget-object v10, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_1

    .line 156
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v3, 0x0

    .line 157
    .local v3, found:Z
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_5

    .line 158
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 159
    .local v7, result:Landroid/net/wifi/ScanResult;
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 160
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/zxing/WiFiUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v7}, Lcom/android/zxing/WiFiUtil;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v10

    iget-object v11, p0, Lcom/android/zxing/WiFiConManager;->mSecurity:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/zxing/WiFiUtil;->getSecurity(Ljava/lang/String;)I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 162
    const/4 v3, 0x1

    goto :goto_2

    .line 168
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #result:Landroid/net/wifi/ScanResult;
    :cond_5
    if-eqz v3, :cond_0

    .line 172
    iget-object v10, p0, Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/zxing/WiFiConManager;->mSecurity:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/zxing/WiFiConManager;->mPassWord:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/android/zxing/WiFiUtil;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 174
    .local v2, connectConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_0

    .line 178
    const/4 v6, 0x0

    .local v6, k:I
    :goto_3
    if-ge v6, v9, :cond_7

    .line 179
    iput-boolean v13, p0, Lcom/android/zxing/WiFiConManager;->mFinish:Z

    .line 180
    iput-boolean v13, p0, Lcom/android/zxing/WiFiConManager;->mConnectResult:Z

    .line 181
    iget-object v10, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    iget-object v11, p0, Lcom/android/zxing/WiFiConManager;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v10, v2, v11}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 182
    const/4 v4, 0x0

    .line 183
    .local v4, i:I
    :goto_4
    iget-boolean v10, p0, Lcom/android/zxing/WiFiConManager;->mFinish:Z

    if-nez v10, :cond_6

    const/16 v10, 0x32

    if-ge v4, v10, :cond_6

    .line 185
    const-wide/16 v10, 0x64

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 192
    :cond_6
    iget-boolean v10, p0, Lcom/android/zxing/WiFiConManager;->mConnectResult:Z

    if-eqz v10, :cond_8

    .line 197
    .end local v4           #i:I
    :cond_7
    iget-boolean v9, p0, Lcom/android/zxing/WiFiConManager;->mConnectResult:Z

    if-eqz v9, :cond_9

    .line 198
    const/4 v9, 0x3

    goto/16 :goto_0

    .line 178
    .restart local v4       #i:I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 200
    .end local v4           #i:I
    :cond_9
    const/4 v9, 0x2

    goto/16 :goto_0

    .line 187
    .restart local v4       #i:I
    :catch_0
    move-exception v10

    goto :goto_4
.end method

.method private getResultMessage(I)Ljava/lang/String;
    .locals 2
    .parameter "ret"

    .prologue
    .line 204
    packed-switch p1, :pswitch_data_0

    .line 218
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d021b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d021c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d021d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_3
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d021a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_4
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d021e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :pswitch_5
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d021f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 109
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/zxing/WiFiConManager;->mIsStartScan:Z

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/zxing/WiFiConManager;->mIsStartScan:Z

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/zxing/WiFiConManager;->connectInBackground()V

    .line 116
    invoke-virtual {p0}, Lcom/android/zxing/WiFiConManager;->unregisterReceiver()V

    goto :goto_0
.end method


# virtual methods
.method public connectInBackground()V
    .locals 3

    .prologue
    .line 121
    new-instance v1, Lcom/android/zxing/WiFiConManager$3;

    invoke-direct {v1, p0}, Lcom/android/zxing/WiFiConManager$3;-><init>(Lcom/android/zxing/WiFiConManager;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/zxing/WiFiConManager$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    return-void
.end method

.method public openAndConnectWiFi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 222
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 224
    iput-boolean v2, p0, Lcom/android/zxing/WiFiConManager;->mIsStartScan:Z

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/android/zxing/WiFiConManager;->getResultMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/android/zxing/WiFiConManager;->registerReceiver()V

    .line 235
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-direct {p0, v3}, Lcom/android/zxing/WiFiConManager;->getResultMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/WiFiConManager;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/zxing/WiFiConManager;->mIsRegister:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/zxing/WiFiConManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/zxing/WiFiConManager;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/zxing/WiFiConManager;->mIsRegister:Z

    .line 99
    :cond_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/zxing/WiFiConManager;->mIsRegister:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/zxing/WiFiConManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/zxing/WiFiConManager;->mIsRegister:Z

    .line 106
    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ssid"
    .parameter "security"
    .parameter "pwd"

    .prologue
    .line 88
    iput-object p2, p0, Lcom/android/zxing/WiFiConManager;->mSecurity:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/android/zxing/WiFiConManager;->mPassWord:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/zxing/WiFiConManager;->mIsStartScan:Z

    .line 92
    return-void
.end method
