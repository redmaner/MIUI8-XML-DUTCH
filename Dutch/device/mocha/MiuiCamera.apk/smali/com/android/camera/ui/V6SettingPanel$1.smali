.class Lcom/android/camera/ui/V6SettingPanel$1;
.super Ljava/lang/Object;
.source "V6SettingPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6SettingPanel;->toSecondPanel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6SettingPanel;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6SettingPanel;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/camera/ui/V6SettingPanel$1;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    iput-object p2, p0, Lcom/android/camera/ui/V6SettingPanel$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel$1;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6SettingPanel;->mPopupParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel$1;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6SettingPanel;->mSettingView:Lcom/android/camera/ui/ScreenView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel$1;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6SettingPanel;->mDismissButton:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02018a

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 220
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel$1;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPanel$1;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    #getter for: Lcom/android/camera/ui/V6SettingPanel;->mAnimationIn:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/camera/ui/V6SettingPanel;->access$000(Lcom/android/camera/ui/V6SettingPanel;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel$1;->this$0:Lcom/android/camera/ui/V6SettingPanel;

    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPanel$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingPanel;->updateLayout(Ljava/lang/String;)V

    .line 222
    return-void
.end method
