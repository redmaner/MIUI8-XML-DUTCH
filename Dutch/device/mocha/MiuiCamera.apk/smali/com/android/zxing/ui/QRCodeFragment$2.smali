.class Lcom/android/zxing/ui/QRCodeFragment$2;
.super Ljava/lang/Object;
.source "QRCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/ui/QRCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/ui/QRCodeFragment;


# direct methods
.method constructor <init>(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->WEB_URL:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->launchBrowser()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$100(Lcom/android/zxing/ui/QRCodeFragment;)V

    .line 297
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->WECHAT:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$200(Lcom/android/zxing/ui/QRCodeFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->launchWeChat()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$300(Lcom/android/zxing/ui/QRCodeFragment;)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    invoke-static {}, Lcom/android/zxing/ui/QRCodeFragment;->access$400()Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->downloadFromUri(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->access$500(Lcom/android/zxing/ui/QRCodeFragment;Landroid/net/Uri;)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->MARKET:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_3

    .line 280
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->launchMIUIMartket()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$600(Lcom/android/zxing/ui/QRCodeFragment;)V

    goto :goto_0

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->MECARD:Lcom/android/zxing/QRCodeType;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->VCARD:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_5

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->insertContact()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$700(Lcom/android/zxing/ui/QRCodeFragment;)V

    goto :goto_0

    .line 284
    :cond_5
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->WIFI:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_6

    .line 285
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->connectWiFi()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$800(Lcom/android/zxing/ui/QRCodeFragment;)V

    goto :goto_0

    .line 286
    :cond_6
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->WEB_URL_QQ:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_8

    .line 287
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mQQInstalled:Z
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$900(Lcom/android/zxing/ui/QRCodeFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 288
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->launchBrowser()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$100(Lcom/android/zxing/ui/QRCodeFragment;)V

    goto :goto_0

    .line 290
    :cond_7
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    invoke-static {}, Lcom/android/zxing/ui/QRCodeFragment;->access$1000()Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->downloadFromUri(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->access$500(Lcom/android/zxing/ui/QRCodeFragment;Landroid/net/Uri;)V

    goto :goto_0

    .line 292
    :cond_8
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->WEB_URL_CLOUD_ALBUM:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_9

    .line 293
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->visitCloudAlbum()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$1100(Lcom/android/zxing/ui/QRCodeFragment;)V

    goto/16 :goto_0

    .line 295
    :cond_9
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$2;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->copyToClipboard()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$1200(Lcom/android/zxing/ui/QRCodeFragment;)V

    goto/16 :goto_0
.end method
