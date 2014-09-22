.class Lcom/android/camera/ui/V6EffectSurfacePopup$2;
.super Ljava/lang/Object;
.source "V6EffectSurfacePopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6EffectSurfacePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6EffectSurfacePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup$2;->this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup$2;->this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;

    #calls: Lcom/android/camera/ui/V6EffectSurfacePopup;->scrollToChecked()V
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSurfacePopup;->access$200(Lcom/android/camera/ui/V6EffectSurfacePopup;)V

    .line 155
    return-void
.end method
