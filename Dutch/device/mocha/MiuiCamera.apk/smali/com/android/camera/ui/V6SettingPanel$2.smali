.class Lcom/android/camera/ui/V6SettingPanel$2;
.super Ljava/lang/Object;
.source "V6SettingPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6SettingPanel;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6SettingPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/camera/ui/V6SettingPanel$2;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x8

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel$2;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingPanel;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel$2;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel$2;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6SettingPanel;->mSettingView:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel$2;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6SettingPanel;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel$2;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    #calls: Lcom/android/camera/ui/V6SettingPanel;->hidePopup()Z
    invoke-static {v0}, Lcom/android/camera/ui/V6SettingPanel;->access$100(Lcom/android/camera/ui/V6SettingPanel;)Z

    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel$2;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    #getter for: Lcom/android/camera/ui/V6SettingPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;
    invoke-static {v0}, Lcom/android/camera/ui/V6SettingPanel;->access$200(Lcom/android/camera/ui/V6SettingPanel;)Lcom/android/camera/ui/MessageDispacher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel$2;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    #getter for: Lcom/android/camera/ui/V6SettingPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;
    invoke-static {v0}, Lcom/android/camera/ui/V6SettingPanel;->access$200(Lcom/android/camera/ui/V6SettingPanel;)Lcom/android/camera/ui/MessageDispacher;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0050

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    :cond_0
    return-void
.end method
