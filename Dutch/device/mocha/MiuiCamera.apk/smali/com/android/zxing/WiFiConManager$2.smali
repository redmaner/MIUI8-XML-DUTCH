.class Lcom/android/zxing/WiFiConManager$2;
.super Ljava/lang/Object;
.source "WiFiConManager.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/WiFiConManager;-><init>(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/WiFiConManager;


# direct methods
.method constructor <init>(Lcom/android/zxing/WiFiConManager;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/zxing/WiFiConManager$2;->this$0:Lcom/android/zxing/WiFiConManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$2;->this$0:Lcom/android/zxing/WiFiConManager;

    const/4 v1, 0x1

    #setter for: Lcom/android/zxing/WiFiConManager;->mFinish:Z
    invoke-static {v0, v1}, Lcom/android/zxing/WiFiConManager;->access$502(Lcom/android/zxing/WiFiConManager;Z)Z

    .line 81
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$2;->this$0:Lcom/android/zxing/WiFiConManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/zxing/WiFiConManager;->mConnectResult:Z
    invoke-static {v0, v1}, Lcom/android/zxing/WiFiConManager;->access$402(Lcom/android/zxing/WiFiConManager;Z)Z

    .line 82
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$2;->this$0:Lcom/android/zxing/WiFiConManager;

    #getter for: Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/zxing/WiFiConManager;->access$100(Lcom/android/zxing/WiFiConManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/zxing/WiFiConManager$2;->this$0:Lcom/android/zxing/WiFiConManager;

    #getter for: Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/zxing/WiFiConManager;->access$200(Lcom/android/zxing/WiFiConManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/WiFiConManager$2;->this$0:Lcom/android/zxing/WiFiConManager;

    #getter for: Lcom/android/zxing/WiFiConManager;->mSecurity:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/zxing/WiFiConManager;->access$300(Lcom/android/zxing/WiFiConManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/zxing/WiFiUtil;->getSecurity(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/zxing/WiFiUtil;->isCurrentConnection(Landroid/net/wifi/WifiManager;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$2;->this$0:Lcom/android/zxing/WiFiConManager;

    #setter for: Lcom/android/zxing/WiFiConManager;->mConnectResult:Z
    invoke-static {v0, v3}, Lcom/android/zxing/WiFiConManager;->access$402(Lcom/android/zxing/WiFiConManager;Z)Z

    .line 75
    :goto_1
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$2;->this$0:Lcom/android/zxing/WiFiConManager;

    #setter for: Lcom/android/zxing/WiFiConManager;->mFinish:Z
    invoke-static {v0, v3}, Lcom/android/zxing/WiFiConManager;->access$502(Lcom/android/zxing/WiFiConManager;Z)Z

    .line 76
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$2;->this$0:Lcom/android/zxing/WiFiConManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/zxing/WiFiConManager;->mConnectResult:Z
    invoke-static {v0, v1}, Lcom/android/zxing/WiFiConManager;->access$402(Lcom/android/zxing/WiFiConManager;Z)Z

    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method
