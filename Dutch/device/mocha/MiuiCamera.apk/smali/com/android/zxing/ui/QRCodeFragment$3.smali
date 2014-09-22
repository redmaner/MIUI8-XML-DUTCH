.class Lcom/android/zxing/ui/QRCodeFragment$3;
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
    .line 334
    iput-object p1, p0, Lcom/android/zxing/ui/QRCodeFragment$3;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$3;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #getter for: Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;

    move-result-object v0

    sget-object v1, Lcom/android/zxing/QRCodeType;->WEB_URL_APK:Lcom/android/zxing/QRCodeType;

    if-ne v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment$3;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    #calls: Lcom/android/zxing/ui/QRCodeFragment;->launchMIUIMartket()V
    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragment;->access$600(Lcom/android/zxing/ui/QRCodeFragment;)V

    .line 340
    :cond_0
    return-void
.end method
