.class public Lcom/android/zxing/ui/QRCodeFragment;
.super Landroid/preference/PreferenceFragment;
.source "QRCodeFragment.java"


# static fields
.field private static final DOWNLOAD_QQ_URI:Landroid/net/Uri;

.field private static final DOWNLOAD_WECHAT_URI:Landroid/net/Uri;

.field private static final MECARD_MAP_KEY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackView:Landroid/view/View;

.field private mBackViewListener:Landroid/view/View$OnClickListener;

.field private mButtonCenter:Landroid/widget/Button;

.field private mButtonCenterListener:Landroid/view/View$OnClickListener;

.field private mButtonLeft:Landroid/widget/Button;

.field private mButtonLeftListener:Landroid/view/View$OnClickListener;

.field private mButtonRight:Landroid/widget/Button;

.field private mButtonRightListener:Landroid/view/View$OnClickListener;

.field private mContent:Ljava/lang/String;

.field private mContentTitle:Landroid/widget/TextView;

.field private mQQInstalled:Z

.field private mType:Lcom/android/zxing/QRCodeType;

.field private mViewBackground:Landroid/view/View;

.field private mViewSymbol:Landroid/view/View;

.field private mWarningText:Landroid/widget/TextView;

.field private mWeChatInstalled:Z

.field private mWifiConManager:Lcom/android/zxing/WiFiConManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const-string v0, "market://details?id=com.tencent.mm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/zxing/ui/QRCodeFragment;->DOWNLOAD_WECHAT_URI:Landroid/net/Uri;

    .line 56
    const-string v0, "market://details?id=com.tencent.mobileqq"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/zxing/ui/QRCodeFragment;->DOWNLOAD_QQ_URI:Landroid/net/Uri;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "N"

    const-string v2, "pref_mecard_name_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "NICKNAME"

    const-string v2, "pref_mecard_nickname_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "ORG"

    const-string v2, "pref_mecard_company_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "TIL"

    const-string v2, "pref_mecard_title_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "TEL"

    const-string v2, "pref_mecard_phone_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "EMAIL"

    const-string v2, "pref_mecard_email_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "URL"

    const-string v2, "pref_mecard_web_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "ADR"

    const-string v2, "pref_mecard_address_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "BDAY"

    const-string v2, "pref_mecard_birthday_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "NOTE"

    const-string v2, "pref_mecard_note_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 61
    sget-object v0, Lcom/android/zxing/QRCodeType;->NONE:Lcom/android/zxing/QRCodeType;

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    .line 259
    new-instance v0, Lcom/android/zxing/ui/QRCodeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/ui/QRCodeFragment$1;-><init>(Lcom/android/zxing/ui/QRCodeFragment;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeftListener:Landroid/view/View$OnClickListener;

    .line 268
    new-instance v0, Lcom/android/zxing/ui/QRCodeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/zxing/ui/QRCodeFragment$2;-><init>(Lcom/android/zxing/ui/QRCodeFragment;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenterListener:Landroid/view/View$OnClickListener;

    .line 334
    new-instance v0, Lcom/android/zxing/ui/QRCodeFragment$3;

    invoke-direct {v0, p0}, Lcom/android/zxing/ui/QRCodeFragment$3;-><init>(Lcom/android/zxing/ui/QRCodeFragment;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRightListener:Landroid/view/View$OnClickListener;

    .line 343
    new-instance v0, Lcom/android/zxing/ui/QRCodeFragment$4;

    invoke-direct {v0, p0}, Lcom/android/zxing/ui/QRCodeFragment$4;-><init>(Lcom/android/zxing/ui/QRCodeFragment;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mBackViewListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->launchBrowser()V

    return-void
.end method

.method static synthetic access$1000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->DOWNLOAD_QQ_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->visitCloudAlbum()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->copyToClipboard()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/zxing/ui/QRCodeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->launchWeChat()V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->DOWNLOAD_WECHAT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/zxing/ui/QRCodeFragment;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/zxing/ui/QRCodeFragment;->downloadFromUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->launchMIUIMartket()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->insertContact()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->connectWiFi()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/zxing/ui/QRCodeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mQQInstalled:Z

    return v0
.end method

.method private connectWiFi()V
    .locals 7

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/zxing/QRCodeMatcher;->wifiSpliter(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 540
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "S"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 541
    .local v3, ssid:Ljava/lang/String;
    const-string v0, "T"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 542
    .local v4, security:Ljava/lang/String;
    const-string v0, "P"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 543
    .local v5, pwd:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWifiConManager:Lcom/android/zxing/WiFiConManager;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Lcom/android/zxing/WiFiConManager;

    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/android/zxing/WiFiConManager;-><init>(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWifiConManager:Lcom/android/zxing/WiFiConManager;

    .line 549
    :goto_0
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWifiConManager:Lcom/android/zxing/WiFiConManager;

    invoke-virtual {v0}, Lcom/android/zxing/WiFiConManager;->openAndConnectWiFi()V

    .line 550
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWifiConManager:Lcom/android/zxing/WiFiConManager;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/zxing/WiFiConManager;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private copyToClipboard()V
    .locals 4

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 355
    .local v0, clipboard:Landroid/content/ClipboardManager;
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0200

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 357
    return-void
.end method

.method private downloadFromUri(Landroid/net/Uri;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 462
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.xiaomi.market"

    const-string v3, "com.xiaomi.market.ui.AppDetailActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-void

    .line 466
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getLauncherClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "packageName"

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 490
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 494
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    .line 495
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 496
    .local v4, r:Landroid/content/pm/ResolveInfo;
    const-string v5, "com.tencent.mm"

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 497
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 501
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #r:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private insertContact()V
    .locals 28

    .prologue
    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/android/zxing/QRCodeMatcher;->contactsCardSpliter(Ljava/lang/String;Lcom/android/zxing/QRCodeType;)Ljava/util/HashMap;

    move-result-object v11

    .line 361
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v9, extras:Landroid/os/Bundle;
    const-string v23, "N"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 364
    .local v12, name:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 365
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v13, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    const-string v23, "vnd.android.cursor.item/name"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 370
    .end local v13           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const-string v23, "NICKNAME"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 371
    .local v14, nickame:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 372
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v15, nicknameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v23, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 377
    .end local v15           #nicknameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v23, "TEL"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 378
    .local v18, phone:Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 379
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v19, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    const-string v23, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 384
    .end local v19           #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v23, "ORG"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 385
    .local v4, company:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 386
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v5, companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v23, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 391
    .end local v5           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v23, "EMAIL"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 392
    .local v7, email:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 393
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v8, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    const-string v23, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 398
    .end local v8           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v23, "ADR"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 399
    .local v2, address:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 400
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v3, addressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    const-string v23, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 405
    .end local v3           #addressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const-string v23, "NOTE"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 406
    .local v16, note:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 407
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v17, noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    const-string v23, "vnd.android.cursor.item/note"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 412
    .end local v17           #noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-string v23, "URL"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 413
    .local v21, web:Ljava/lang/String;
    if-eqz v21, :cond_7

    .line 414
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v22, webList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    const-string v23, "vnd.android.cursor.item/website"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 418
    .end local v22           #webList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    if-eqz v12, :cond_8

    .line 419
    new-instance v10, Landroid/content/Intent;

    const-string v23, "android.intent.action.VIEW"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 423
    .local v6, display:Landroid/view/Display;
    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    .line 424
    .local v20, point:Landroid/graphics/Point;
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 425
    new-instance v23, Landroid/graphics/Rect;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    invoke-direct/range {v23 .. v27}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 428
    .end local v6           #display:Landroid/view/Display;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v20           #point:Landroid/graphics/Point;
    :cond_8
    return-void
.end method

.method private isAvilible(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 506
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 507
    .local v3, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v1, pName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 509
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 510
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 511
    .local v4, pn:Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    .end local v0           #i:I
    .end local v4           #pn:Ljava/lang/String;
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method private launchBrowser()V
    .locals 3

    .prologue
    .line 530
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->launchMIUIBrowser()V

    goto :goto_0
.end method

.method private launchMIUIBrowser()V
    .locals 5

    .prologue
    .line 519
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 522
    invoke-virtual {p0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchMIUIBrowser : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchMIUIMartket()V
    .locals 4

    .prologue
    .line 445
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    sget-object v3, Lcom/android/zxing/QRCodeType;->MARKET:Lcom/android/zxing/QRCodeType;

    if-ne v2, v3, :cond_0

    .line 447
    const-string v2, "com.xiaomi.market"

    const-string v3, "com.xiaomi.market.ui.AppDetailActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 452
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V

    .line 458
    :goto_1
    return-void

    .line 450
    :cond_0
    const-string v2, "com.xiaomi.market"

    const-string v3, "com.xiaomi.market.ui.MarketTabActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 454
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 456
    invoke-virtual {p0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private launchWeChat()V
    .locals 4

    .prologue
    .line 475
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string v3, "com.tencent.mm"

    invoke-direct {p0, v3}, Lcom/android/zxing/ui/QRCodeFragment;->getLauncherClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, className:Ljava/lang/String;
    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v3, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, v2}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v0           #className:Ljava/lang/String;
    :goto_0
    return-void

    .line 481
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 482
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0, v2}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "root"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 557
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 558
    .local v0, child:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 572
    :goto_0
    return v3

    .line 563
    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 564
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 565
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 566
    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 567
    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/zxing/ui/QRCodeFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 568
    goto :goto_0

    .line 564
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 572
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private visitCloudAlbum()V
    .locals 3

    .prologue
    .line 432
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.ACTION_ALBUM_SHARE_INVITATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "invitation_type"

    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v1, "invitation_url"

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v1, "invitation_opt"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/android/zxing/QRCodeType;Ljava/lang/String;)V
    .locals 13
    .parameter "type"
    .parameter "text"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 81
    .local v1, group:Landroid/preference/PreferenceGroup;
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    .line 82
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 85
    :cond_0
    const v10, 0x7f060002

    invoke-virtual {p0, v10}, Lcom/android/zxing/ui/QRCodeFragment;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 87
    if-eqz p2, :cond_f

    .line 88
    iput-object p2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    .line 90
    sget-object v10, Lcom/android/zxing/QRCodeType;->MECARD:Lcom/android/zxing/QRCodeType;

    if-eq p1, v10, :cond_1

    sget-object v10, Lcom/android/zxing/QRCodeType;->VCARD:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_4

    .line 92
    :cond_1
    invoke-static {p2, p1}, Lcom/android/zxing/QRCodeMatcher;->contactsCardSpliter(Ljava/lang/String;Lcom/android/zxing/QRCodeType;)Ljava/util/HashMap;

    move-result-object v5

    .line 93
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v10, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 94
    .local v4, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 95
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 96
    .local v9, value:Ljava/lang/String;
    if-nez v9, :cond_2

    .line 97
    sget-object v10, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v1, v10}, Lcom/android/zxing/ui/QRCodeFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 99
    :cond_2
    sget-object v10, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    .end local v3           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_3
    const-string v10, "pref_text_group_key"

    invoke-direct {p0, v1, v10}, Lcom/android/zxing/ui/QRCodeFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 104
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f020131

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 105
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f020132

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d01f8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 107
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d01f5

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 115
    :cond_4
    sget-object v10, Lcom/android/zxing/QRCodeType;->WEB_URL:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_6

    .line 116
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f020137

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f020138

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d01f9

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 119
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d01f4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const v11, 0x7f0d020c

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    :cond_5
    :goto_2
    const-string v10, "pref_text_content_key"

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    const-string v10, "pref_mecard_group_key"

    invoke-direct {p0, v1, v10}, Lcom/android/zxing/ui/QRCodeFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_1

    .line 126
    :cond_6
    sget-object v10, Lcom/android/zxing/QRCodeType;->WEB_URL_APK:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_7

    .line 127
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f020137

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f020138

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d01f4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const v11, 0x7f0d020d

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 131
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const v11, 0x7f0d01fa

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 132
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const v11, 0x7f0d01fb

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 134
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 138
    :cond_7
    sget-object v10, Lcom/android/zxing/QRCodeType;->MARKET:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_8

    .line 139
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f02012b

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 140
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f02012c

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 141
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d01f3

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d01fe

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 145
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 149
    :cond_8
    sget-object v10, Lcom/android/zxing/QRCodeType;->WECHAT:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_a

    .line 150
    const-string v10, "com.tencent.mm"

    invoke-direct {p0, v10}, Lcom/android/zxing/ui/QRCodeFragment;->isAvilible(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    .line 151
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f020139

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 152
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f02013a

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 154
    iget-boolean v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    if-eqz v10, :cond_9

    .line 155
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d01fc

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 160
    :goto_3
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d01f6

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 157
    :cond_9
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d01fd

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 166
    :cond_a
    sget-object v10, Lcom/android/zxing/QRCodeType;->TEXT:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_b

    .line 167
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f020135

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f020136

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 169
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d01f7

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d01ff

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 173
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 177
    :cond_b
    sget-object v10, Lcom/android/zxing/QRCodeType;->WIFI:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_c

    .line 178
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f02013b

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f02013c

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 180
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d0211

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const v11, 0x7f0d0216

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d0212

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 184
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 187
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/zxing/QRCodeMatcher;->wifiSpliter(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 191
    .restart local v5       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0d020e

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v10, "S"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, ssid:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0d0210

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v10, "T"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, security:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0d020f

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v10, "P"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, pwd:Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 201
    goto/16 :goto_2

    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v5           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #pwd:Ljava/lang/String;
    .end local v7           #security:Ljava/lang/String;
    .end local v8           #ssid:Ljava/lang/String;
    :cond_c
    sget-object v10, Lcom/android/zxing/QRCodeType;->WEB_URL_QQ:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_e

    .line 202
    const-string v10, "com.tencent.mobileqq"

    invoke-direct {p0, v10}, Lcom/android/zxing/ui/QRCodeFragment;->isAvilible(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mQQInstalled:Z

    .line 203
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f020133

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 204
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f020134

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    iget-boolean v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mQQInstalled:Z

    if-eqz v10, :cond_d

    .line 206
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d0214

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 210
    :goto_4
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d0213

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 208
    :cond_d
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d0215

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 216
    :cond_e
    sget-object v10, Lcom/android/zxing/QRCodeType;->WEB_URL_CLOUD_ALBUM:Lcom/android/zxing/QRCodeType;

    if-ne p1, v10, :cond_5

    .line 217
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v11, 0x7f02012f

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 218
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v11, 0x7f020130

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 220
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v11, 0x7f0d0218

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 221
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v11, 0x7f0d0217

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 225
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    iget-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 233
    :cond_f
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    .line 234
    sget-object v10, Lcom/android/zxing/QRCodeType;->NONE:Lcom/android/zxing/QRCodeType;

    iput-object v10, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    .line 235
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 242
    const v1, 0x7f040002

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 243
    .local v0, parent:Landroid/view/ViewGroup;
    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    .line 244
    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    .line 245
    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mBackView:Landroid/view/View;

    .line 246
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    .line 247
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    .line 248
    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    .line 249
    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    .line 250
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    .line 252
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mBackView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mBackViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenterListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRightListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    return-object v0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 302
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 303
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/zxing/QRCodeManager;->isFragmentShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    sget-object v3, Lcom/android/zxing/QRCodeType;->WECHAT:Lcom/android/zxing/QRCodeType;

    if-ne v2, v3, :cond_2

    .line 305
    const-string v2, "com.tencent.mm"

    invoke-direct {p0, v2}, Lcom/android/zxing/ui/QRCodeFragment;->isAvilible(Ljava/lang/String;)Z

    move-result v1

    .line 306
    .local v1, isWeChatInstalled:Z
    iget-boolean v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    if-eq v1, v2, :cond_0

    .line 307
    iput-boolean v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    .line 308
    iget-boolean v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    if-eqz v2, :cond_1

    .line 309
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v3, 0x7f0d01fc

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 326
    .end local v1           #isWeChatInstalled:Z
    :cond_0
    :goto_0
    return-void

    .line 311
    .restart local v1       #isWeChatInstalled:Z
    :cond_1
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v3, 0x7f0d01fd

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 314
    .end local v1           #isWeChatInstalled:Z
    :cond_2
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    sget-object v3, Lcom/android/zxing/QRCodeType;->WEB_URL_QQ:Lcom/android/zxing/QRCodeType;

    if-ne v2, v3, :cond_0

    .line 315
    const-string v2, "com.tencent.mobileqq"

    invoke-direct {p0, v2}, Lcom/android/zxing/ui/QRCodeFragment;->isAvilible(Ljava/lang/String;)Z

    move-result v0

    .line 316
    .local v0, isQQInstalled:Z
    iget-boolean v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mQQInstalled:Z

    if-eq v0, v2, :cond_0

    .line 317
    iput-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mQQInstalled:Z

    .line 318
    iget-boolean v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    if-eqz v2, :cond_3

    .line 319
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v3, 0x7f0d0214

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 321
    :cond_3
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v3, 0x7f0d0215

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 331
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 332
    return-void
.end method
