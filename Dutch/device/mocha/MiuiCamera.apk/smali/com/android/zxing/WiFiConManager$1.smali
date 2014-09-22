.class Lcom/android/zxing/WiFiConManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WiFiConManager.java"


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
    .line 55
    iput-object p1, p0, Lcom/android/zxing/WiFiConManager$1;->this$0:Lcom/android/zxing/WiFiConManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$1;->this$0:Lcom/android/zxing/WiFiConManager;

    #calls: Lcom/android/zxing/WiFiConManager;->handleEvent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/zxing/WiFiConManager;->access$000(Lcom/android/zxing/WiFiConManager;Landroid/content/Intent;)V

    .line 59
    return-void
.end method
