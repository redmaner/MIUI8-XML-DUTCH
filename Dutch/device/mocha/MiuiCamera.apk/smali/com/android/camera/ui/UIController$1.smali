.class Lcom/android/camera/ui/UIController$1;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/UIController;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/UIController;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/UIController;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/ui/UIController$1;->this$0:Lcom/android/camera/ui/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/UIController$1;->this$0:Lcom/android/camera/ui/UIController;

    iget-object v0, v0, Lcom/android/camera/ui/UIController;->mSettingPanel:Lcom/android/camera/ui/V6SettingPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPanel;->toFirstPanel()V

    .line 55
    return-void
.end method
