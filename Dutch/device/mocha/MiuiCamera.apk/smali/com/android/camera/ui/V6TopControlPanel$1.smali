.class Lcom/android/camera/ui/V6TopControlPanel$1;
.super Ljava/lang/Object;
.source "V6TopControlPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6TopControlPanel;->animateOut(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6TopControlPanel;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6TopControlPanel;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/ui/V6TopControlPanel$1;->this$0:Lcom/android/camera/ui/V6TopControlPanel;

    iput-object p2, p0, Lcom/android/camera/ui/V6TopControlPanel$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/V6TopControlPanel$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/V6TopControlPanel$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6TopControlPanel$1;->this$0:Lcom/android/camera/ui/V6TopControlPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6TopControlPanel;->setVisibility(I)V

    .line 52
    return-void
.end method
