.class public Lcom/android/camera/ui/V6EffectSurfacePopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "V6EffectSurfacePopup.java"


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mScrollToChecked:Ljava/lang/Runnable;

.field private mSelectedIndex:I

.field private mViewContainer:Landroid/widget/LinearLayout;

.field private mViewList:[Landroid/view/View;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance v0, Lcom/android/camera/ui/V6EffectSurfacePopup$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6EffectSurfacePopup$1;-><init>(Lcom/android/camera/ui/V6EffectSurfacePopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 151
    new-instance v0, Lcom/android/camera/ui/V6EffectSurfacePopup$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6EffectSurfacePopup$2;-><init>(Lcom/android/camera/ui/V6EffectSurfacePopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mScrollToChecked:Ljava/lang/Runnable;

    .line 32
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mActivity:Lcom/android/camera/ActivityBase;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6EffectSurfacePopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/V6EffectSurfacePopup;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6EffectSurfacePopup;)Lcom/android/camera/ActivityBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mActivity:Lcom/android/camera/ActivityBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6EffectSurfacePopup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectSurfacePopup;->scrollToChecked()V

    return-void
.end method

.method private scrollToChecked()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mViewList:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mSelectedIndex:I

    add-int/lit8 v3, v3, 0x1

    mul-int v0, v2, v3

    .line 160
    .local v0, right:I
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    sub-int v1, v0, v2

    .line 162
    .local v1, scrollValue:I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    .line 163
    return-void
.end method

.method private updateBackground()V
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mViewList:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 179
    iget v1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mSelectedIndex:I

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

    aget-object v1, v1, v0

    const v2, 0x7f0201a2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6EffectSurfaceView;->setBackgroundResource(I)V

    .line 178
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

    aget-object v1, v1, v0

    const v2, 0x7f0201a1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6EffectSurfaceView;->setBackgroundResource(I)V

    goto :goto_1

    .line 185
    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss()V

    .line 147
    iput-boolean v1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mVisible:Z

    .line 148
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setDisplayShow(Z)V

    .line 149
    return-void
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 12
    .parameter "preference"
    .parameter "p"

    .prologue
    const/16 v11, 0xf

    .line 37
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 38
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 40
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectSurfacePopup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 43
    .local v1, entries:[Ljava/lang/CharSequence;
    new-array v8, v11, [Landroid/view/View;

    iput-object v8, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mViewList:[Landroid/view/View;

    .line 44
    new-array v8, v11, [Lcom/android/camera/ui/V6EffectSurfaceView;

    iput-object v8, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

    .line 45
    const-string v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 47
    .local v4, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v11, :cond_0

    .line 48
    const v8, 0x7f04000c

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 49
    .local v7, v:Landroid/view/View;
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    const v8, 0x7f0c0038

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/V6EffectSurfaceView;

    .line 52
    .local v3, img:Lcom/android/camera/ui/V6EffectSurfaceView;
    const v8, 0x7f0c0039

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 53
    .local v6, title:Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 54
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    sget v8, Lcom/android/camera/effect/EffectController;->SURFACE_WIDTH:I

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 55
    sget v8, Lcom/android/camera/effect/EffectController;->SURFACE_WIDTH:I

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {v3, v2}, Lcom/android/camera/ui/V6EffectSurfaceView;->setCacheIndex(I)V

    .line 59
    aget-object v8, v1, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mViewList:[Landroid/view/View;

    aput-object v7, v8, v2

    .line 62
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

    aput-object v3, v8, v2

    .line 63
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v3           #img:Lcom/android/camera/ui/V6EffectSurfaceView;
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v6           #title:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectSurfacePopup;->reloadPreference()V

    .line 67
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 128
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectSurfacePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 129
    const v0, 0x7f0c003b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectSurfacePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mViewContainer:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 131
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mSelectedIndex:I

    .line 169
    iget v1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mSelectedIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectSurfacePopup;->updateBackground()V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v1, "HorizontalSettingPopup"

    const-string v2, "Invalid preference value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mVisible:Z

    if-eqz v2, :cond_3

    .line 97
    const/4 v1, -0x1

    .line 98
    .local v1, start:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mViewList:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/camera/Util;->isViewIntersectWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    move v1, v0

    .line 105
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 106
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectController;->setDisplayStartIndex(I)V

    .line 107
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectController;->setDisplayEndtIndex(I)V

    .line 116
    :goto_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getDisplayStartIndex()I

    move-result v0

    .line 117
    :goto_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getDisplayEndIndex()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/camera/ui/V6EffectSurfaceView;->invalidate()V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 98
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/EffectController;->setDisplayStartIndex(I)V

    .line 110
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    sget v3, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    add-int/2addr v3, v1

    const/16 v4, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectController;->setDisplayEndtIndex(I)V

    goto :goto_1

    .line 123
    .end local v0           #i:I
    .end local v1           #start:I
    :cond_3
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 189
    neg-int p1, p1

    .line 190
    if-ltz p1, :cond_1

    rem-int/lit16 p1, p1, 0x168

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mViewList:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 192
    .local v3, v:Landroid/view/View;
    instance-of v4, v3, Lcom/android/camera/ui/Rotatable;

    if-eqz v4, :cond_0

    .line 193
    check-cast v3, Lcom/android/camera/ui/Rotatable;

    .end local v3           #v:Landroid/view/View;
    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 191
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_1
    rem-int/lit16 v4, p1, 0x168

    add-int/lit16 p1, v4, 0x168

    goto :goto_0

    .line 197
    .restart local v0       #arr$:[Landroid/view/View;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

    .local v0, arr$:[Lcom/android/camera/ui/V6EffectSurfaceView;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 198
    .local v3, v:Lcom/android/camera/ui/V6EffectSurfaceView;
    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/V6EffectSurfaceView;->setOrientation(IZ)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 200
    .end local v3           #v:Lcom/android/camera/ui/V6EffectSurfaceView;
    :cond_3
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 136
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show()V

    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mScrollToChecked:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectSurfacePopup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mScrollToChecked:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/ui/V6EffectSurfacePopup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/effect/EffectController;->setDisplayShow(Z)V

    .line 140
    iput-boolean v3, p0, Lcom/android/camera/ui/V6EffectSurfacePopup;->mVisible:Z

    .line 141
    return-void
.end method
