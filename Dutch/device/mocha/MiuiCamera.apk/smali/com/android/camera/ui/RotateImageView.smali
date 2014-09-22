.class public Lcom/android/camera/ui/RotateImageView;
.super Lcom/android/camera/ui/TwoStateImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;
    }
.end annotation


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mAxisCurrentDegree:I

.field private mClockwise:Z

.field private mEnableAnimation:Z

.field private mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

.field private mOverturn:Z

.field private mPointCurrentDegree:I

.field private mPointStartDegree:I

.field private mPointTargetDegree:I

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    .line 44
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    .line 45
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    .line 46
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    .line 48
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    .line 52
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    .line 54
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 55
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    .line 45
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    .line 46
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    .line 48
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    .line 52
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    .line 54
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 55
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    .line 70
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .parameter "canvas"

    .prologue
    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 127
    .local v8, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 128
    .local v12, matrix:Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/Camera;

    invoke-direct {v5}, Landroid/graphics/Camera;-><init>()V

    .line 129
    .local v5, camera:Landroid/graphics/Camera;
    if-nez v8, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 131
    .local v4, bounds:Landroid/graphics/Rect;
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v19, v21, v22

    .line 132
    .local v19, w:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v9, v21, v22

    .line 134
    .local v9, h:I
    if-eqz v19, :cond_0

    if-eqz v9, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    move/from16 v21, v0

    const/16 v22, 0xb4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 138
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    .line 139
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;->OnRotateAxisFinished()V

    .line 166
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v11

    .line 167
    .local v11, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v18

    .line 168
    .local v18, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v14

    .line 169
    .local v14, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v3

    .line 170
    .local v3, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getWidth()I

    move-result v21

    sub-int v21, v21, v11

    sub-int v20, v21, v14

    .line 171
    .local v20, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getHeight()I

    move-result v21

    sub-int v21, v21, v18

    sub-int v10, v21, v3

    .line 173
    .local v10, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v15

    .line 174
    .local v15, saveCount:I
    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    move/from16 v21, v0

    const/16 v22, 0xb4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 176
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 180
    :goto_2
    invoke-virtual {v5, v12}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 181
    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 182
    shr-int/lit8 v21, v19, 0x1

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    shr-int/lit8 v22, v9, 0x1

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 183
    shr-int/lit8 v21, v19, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    shr-int/lit8 v22, v9, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 184
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v21

    sget-object v22, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    move/from16 v0, v20

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    if-ge v10, v9, :cond_5

    .line 188
    :cond_4
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    int-to-float v0, v10

    move/from16 v22, v0

    int-to-float v0, v9

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 189
    .local v13, ratio:F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    int-to-float v0, v10

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 191
    .end local v13           #ratio:F
    :cond_5
    div-int/lit8 v21, v20, 0x2

    add-int v21, v21, v11

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-int/lit8 v22, v10, 0x2

    add-int v22, v22, v18

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 192
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 193
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    neg-int v0, v9

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 194
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 144
    .end local v3           #bottom:I
    .end local v10           #height:I
    .end local v11           #left:I
    .end local v14           #right:I
    .end local v15           #saveCount:I
    .end local v18           #top:I
    .end local v20           #width:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0xa

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    goto/16 :goto_1

    .line 148
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 149
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v16

    .line 150
    .local v16, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v21, v0

    cmp-long v21, v16, v21

    if-gez v21, :cond_a

    .line 151
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v21, v0

    sub-long v21, v16, v21

    move-wide/from16 v0, v21

    long-to-int v7, v0

    .line 152
    .local v7, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .end local v7           #deltaTime:I
    :goto_3
    mul-int/lit16 v0, v7, 0x10e

    move/from16 v22, v0

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    add-int v6, v21, v22

    .line 154
    .local v6, degree:I
    if-ltz v6, :cond_9

    rem-int/lit16 v6, v6, 0x168

    .line 155
    :goto_4
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    goto/16 :goto_1

    .line 152
    .end local v6           #degree:I
    .restart local v7       #deltaTime:I
    :cond_8
    neg-int v7, v7

    goto :goto_3

    .line 154
    .end local v7           #deltaTime:I
    .restart local v6       #degree:I
    :cond_9
    rem-int/lit16 v0, v6, 0x168

    move/from16 v21, v0

    move/from16 v0, v21

    add-int/lit16 v6, v0, 0x168

    goto :goto_4

    .line 158
    .end local v6           #degree:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;->OnRotatePointFinished()V

    goto/16 :goto_1

    .line 178
    .end local v16           #time:J
    .restart local v3       #bottom:I
    .restart local v10       #height:I
    .restart local v11       #left:I
    .restart local v14       #right:I
    .restart local v15       #saveCount:I
    .restart local v18       #top:I
    .restart local v20       #width:I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/Camera;->rotateX(F)V

    goto/16 :goto_2
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 205
    if-nez p1, :cond_0

    .line 206
    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 207
    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 208
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 233
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 214
    .local v2, param:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 216
    .local v1, miniThumbWidth:I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 218
    .local v0, miniThumbHeight:I
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 221
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-nez v3, :cond_2

    .line 222
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 223
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 224
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 226
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 227
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 228
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 229
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1
.end method

.method public setOrientation(IZ)V
    .locals 5
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 97
    iput-boolean p2, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 99
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 100
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 122
    :goto_1
    return-void

    .line 99
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 102
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    .line 103
    iget-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-eqz v1, :cond_5

    .line 104
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    .line 105
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 107
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    iget v2, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    sub-int v0, v1, v2

    .line 108
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 112
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 114
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    .line 115
    iget-wide v1, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0x10e

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 121
    .end local v0           #diff:I
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    goto :goto_1

    .line 108
    .restart local v0       #diff:I
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 114
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 118
    .end local v0           #diff:I
    :cond_5
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    goto :goto_4
.end method
