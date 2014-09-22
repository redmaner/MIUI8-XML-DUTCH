.class Lcom/android/camera/ui/V6EffectSurfacePopup$1;
.super Ljava/lang/Object;
.source "V6EffectSurfacePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 69
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 72
    .local v6, index:I
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;

    #getter for: Lcom/android/camera/ui/V6EffectSurfacePopup;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSurfacePopup;->access$000(Lcom/android/camera/ui/V6EffectSurfacePopup;)I

    move-result v0

    if-ne v6, v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;

    #setter for: Lcom/android/camera/ui/V6EffectSurfacePopup;->mSelectedIndex:I
    invoke-static {v0, v6}, Lcom/android/camera/ui/V6EffectSurfacePopup;->access$002(Lcom/android/camera/ui/V6EffectSurfacePopup;I)I

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;

    iget-object v0, v0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;

    #getter for: Lcom/android/camera/ui/V6EffectSurfacePopup;->mSelectedIndex:I
    invoke-static {v1}, Lcom/android/camera/ui/V6EffectSurfacePopup;->access$000(Lcom/android/camera/ui/V6EffectSurfacePopup;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 76
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 77
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;

    #getter for: Lcom/android/camera/ui/V6EffectSurfacePopup;->mSelectedIndex:I
    invoke-static {v1}, Lcom/android/camera/ui/V6EffectSurfacePopup;->access$000(Lcom/android/camera/ui/V6EffectSurfacePopup;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 78
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isNeedRect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;

    #getter for: Lcom/android/camera/ui/V6EffectSurfacePopup;->mActivity:Lcom/android/camera/ActivityBase;
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSurfacePopup;->access$100(Lcom/android/camera/ui/V6EffectSurfacePopup;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;

    iget-object v0, v0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;

    iget-object v0, v0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x2

    new-instance v4, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;

    iget-object v3, v3, Lcom/android/camera/ui/V6EffectSurfacePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/V6EffectSurfacePopup;

    #getter for: Lcom/android/camera/ui/V6EffectSurfacePopup;->mActivity:Lcom/android/camera/ActivityBase;
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSurfacePopup;->access$100(Lcom/android/camera/ui/V6EffectSurfacePopup;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    goto :goto_1
.end method
