.class public Lcom/android/camera/ui/V6RelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "V6RelativeLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 121
    return-void
.end method

.method public animateIn(Ljava/lang/Runnable;I)V
    .locals 0
    .parameter "callback"
    .parameter "duration"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;->animateIn(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public animateIn(Ljava/lang/Runnable;IZ)V
    .locals 0
    .parameter "callback"
    .parameter "duration"
    .parameter "changeVisiblity"

    .prologue
    .line 133
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 126
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;I)V
    .locals 0
    .parameter "callback"
    .parameter "duration"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;->animateOut(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .locals 0
    .parameter "callback"
    .parameter "duration"
    .parameter "changeVisiblity"

    .prologue
    .line 140
    return-void
.end method

.method public enableControls(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 69
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 70
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 71
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/android/camera/ui/V6FunctionUI;->enableControls(Z)V

    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method

.method public findChildrenById(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 25
    iget-object v1, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 88
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 89
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 90
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/camera/ui/V6FunctionUI;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const/4 v2, 0x1

    .line 95
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 3

    .prologue
    .line 60
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 61
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 62
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/camera/ui/V6FunctionUI;->onCameraOpen()V

    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 32
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 33
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 34
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/camera/ui/V6FunctionUI;->onCreate()V

    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 51
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 52
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 53
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/camera/ui/V6FunctionUI;->onPause()V

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 41
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 42
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 43
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/camera/ui/V6FunctionUI;->onResume()V

    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 101
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 102
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/android/camera/ui/V6FunctionUI;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    goto :goto_0

    .line 105
    :cond_1
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 78
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 79
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/Rotatable;

    if-eqz v2, :cond_0

    .line 80
    check-cast v0, Lcom/android/camera/ui/Rotatable;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method
