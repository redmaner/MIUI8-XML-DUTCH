.class public Lcom/android/camera/SwitchAnimManager;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"


# instance fields
.field private mAnimStartTime:J

.field private mOrientation:I

.field private mPreviewFrameLayoutWidth:I

.field private mReviewDrawingHeight:I

.field private mReviewDrawingWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    .line 52
    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 74
    return-void
.end method

.method public continueAnimation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 78
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    .line 79
    return-void
.end method

.method public drawAnimationFirst(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 23
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long v21, v2, v6

    .line 87
    .local v21, timeDiff:J
    move-wide/from16 v0, v21

    long-to-float v2, v0

    const/high16 v3, 0x43c8

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 133
    :goto_0
    return v2

    .line 88
    :cond_0
    move-wide/from16 v0, v21

    long-to-float v2, v0

    const/high16 v3, 0x43c8

    div-float v16, v2, v3

    .line 91
    .local v16, fraction:F
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v14, v2, v3

    .line 92
    .local v14, centerX:F
    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v15, v2, v3

    .line 94
    .local v15, centerY:F
    const/high16 v2, 0x3f00

    cmpg-float v2, v16, v2

    if-gez v2, :cond_1

    .line 95
    const/high16 v2, 0x3f80

    const v3, 0x3e4ccccd

    const/high16 v6, 0x3f00

    div-float v6, v16, v6

    mul-float/2addr v3, v6

    sub-float v17, v2, v3

    .line 96
    .local v17, previewAnimScale:F
    move/from16 v0, p4

    int-to-float v2, v0

    mul-float v19, v2, v17

    .line 97
    .local v19, previewWidth:F
    move/from16 v0, p5

    int-to-float v2, v0

    mul-float v18, v2, v17

    .line 98
    .local v18, previewHeight:F
    const/high16 v2, 0x4000

    div-float v2, v19, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 99
    .local v4, previewX:I
    const/high16 v2, 0x4000

    div-float v2, v18, v2

    sub-float v2, v15, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 101
    .local v5, previewY:I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 133
    .end local v17           #previewAnimScale:F
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 104
    .end local v4           #previewX:I
    .end local v5           #previewY:I
    .end local v18           #previewHeight:F
    .end local v19           #previewWidth:F
    :cond_1
    move/from16 v0, p4

    int-to-float v2, v0

    const v3, 0x3f4ccccd

    mul-float v19, v2, v3

    .line 105
    .restart local v19       #previewWidth:F
    move/from16 v0, p5

    int-to-float v2, v0

    const v3, 0x3f4ccccd

    mul-float v18, v2, v3

    .line 107
    .restart local v18       #previewHeight:F
    const/high16 v2, 0x4000

    div-float v2, v19, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 108
    .restart local v4       #previewX:I
    const/high16 v2, 0x4000

    div-float v2, v18, v2

    sub-float v2, v15, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 110
    .restart local v5       #previewY:I
    const/high16 v2, 0x3f00

    sub-float v2, v16, v2

    const/high16 v3, 0x3f00

    div-float v20, v2, v3

    .line 111
    .local v20, rate:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_4

    .line 113
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 114
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    if-nez v2, :cond_3

    .line 115
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v6

    const/high16 v2, 0x42b4

    mul-float v7, v20, v2

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    div-int/lit8 v2, p5, 0x2

    int-to-float v12, v2

    const v13, 0x44bb8000

    invoke-virtual/range {v6 .. v13}, Lcom/android/camera/effect/GLCanvasState;->projection(FFFFFFF)V

    .line 119
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    neg-float v3, v14

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 129
    :goto_3
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_1

    .line 117
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v6

    move/from16 v0, v20

    neg-float v2, v0

    const/high16 v3, 0x42b4

    mul-float v7, v2, v3

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    div-int/lit8 v2, p5, 0x2

    int-to-float v12, v2

    const v13, 0x44bb8000

    invoke-virtual/range {v6 .. v13}, Lcom/android/camera/effect/GLCanvasState;->projection(FFFFFFF)V

    goto :goto_2

    .line 121
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v15}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 122
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_5

    .line 123
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v6

    const/high16 v2, 0x42b4

    mul-float v7, v20, v2

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p4

    int-to-float v11, v0

    const/4 v12, 0x0

    const v13, 0x44bb8000

    invoke-virtual/range {v6 .. v13}, Lcom/android/camera/effect/GLCanvasState;->projection(FFFFFFF)V

    .line 127
    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/4 v3, 0x0

    neg-float v6, v15

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    goto :goto_3

    .line 125
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v6

    move/from16 v0, v20

    neg-float v2, v0

    const/high16 v3, 0x42b4

    mul-float v7, v2, v3

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p4

    int-to-float v11, v0

    const/4 v12, 0x0

    const v13, 0x44bb8000

    invoke-virtual/range {v6 .. v13}, Lcom/android/camera/effect/GLCanvasState;->projection(FFFFFFF)V

    goto :goto_4
.end method

.method public drawAnimationNext(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 21
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "preview"
    .parameter "reviewNext"

    .prologue
    .line 138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long v19, v2, v6

    .line 139
    .local v19, timeDiff:J
    move-wide/from16 v0, v19

    long-to-float v2, v0

    const/high16 v3, 0x43c8

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 184
    :goto_0
    return v2

    .line 140
    :cond_0
    move-wide/from16 v0, v19

    long-to-float v2, v0

    const/high16 v3, 0x43c8

    div-float v12, v2, v3

    .line 143
    .local v12, fraction:F
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v10, v2, v3

    .line 144
    .local v10, centerX:F
    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v11, v2, v3

    .line 146
    .local v11, centerY:F
    const/high16 v2, 0x3f00

    cmpg-float v2, v12, v2

    if-gez v2, :cond_5

    .line 147
    move/from16 v0, p4

    int-to-float v2, v0

    const v3, 0x3f4ccccd

    mul-float v15, v2, v3

    .line 148
    .local v15, previewWidth:F
    move/from16 v0, p5

    int-to-float v2, v0

    const v3, 0x3f4ccccd

    mul-float v14, v2, v3

    .line 150
    .local v14, previewHeight:F
    const/high16 v2, 0x4000

    div-float v2, v15, v2

    sub-float v2, v10, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 151
    .local v16, previewX:I
    const/high16 v2, 0x4000

    div-float v2, v14, v2

    sub-float v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 153
    .local v17, previewY:I
    const/high16 v2, 0x3f00

    div-float v18, v12, v2

    .line 154
    .local v18, rate:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    .line 156
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 157
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    if-nez v2, :cond_2

    .line 158
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/high16 v3, 0x42b4

    mul-float v3, v3, v18

    const/high16 v6, 0x4387

    add-float/2addr v3, v6

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    div-int/lit8 v8, p5, 0x2

    int-to-float v8, v8

    const v9, 0x44bb8000

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/effect/GLCanvasState;->projection(FFFFFFF)V

    .line 162
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    neg-float v3, v10

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 172
    :goto_2
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 184
    .end local v16           #previewX:I
    .end local v17           #previewY:I
    .end local v18           #rate:F
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 160
    .restart local v16       #previewX:I
    .restart local v17       #previewY:I
    .restart local v18       #rate:F
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/high16 v3, 0x42b4

    mul-float v3, v3, v18

    const/high16 v6, 0x4387

    add-float/2addr v3, v6

    neg-float v3, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    div-int/lit8 v8, p5, 0x2

    int-to-float v8, v8

    const v9, 0x44bb8000

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/effect/GLCanvasState;->projection(FFFFFFF)V

    goto :goto_1

    .line 164
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v11}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 165
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_4

    .line 166
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/high16 v3, 0x42b4

    mul-float v3, v3, v18

    const/high16 v6, 0x4387

    add-float/2addr v3, v6

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p4

    int-to-float v7, v0

    const/4 v8, 0x0

    const v9, 0x44bb8000

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/effect/GLCanvasState;->projection(FFFFFFF)V

    .line 170
    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/4 v3, 0x0

    neg-float v6, v11

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    goto :goto_2

    .line 168
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/high16 v3, 0x42b4

    mul-float v3, v3, v18

    const/high16 v6, 0x4387

    add-float/2addr v3, v6

    neg-float v3, v3

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p4

    int-to-float v7, v0

    const/4 v8, 0x0

    const v9, 0x44bb8000

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/effect/GLCanvasState;->projection(FFFFFFF)V

    goto :goto_4

    .line 175
    .end local v14           #previewHeight:F
    .end local v15           #previewWidth:F
    .end local v16           #previewX:I
    .end local v17           #previewY:I
    .end local v18           #rate:F
    :cond_5
    const/high16 v2, 0x3f80

    const v3, 0x3e4ccccd

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v12

    const/high16 v7, 0x3f00

    div-float/2addr v6, v7

    mul-float/2addr v3, v6

    sub-float v13, v2, v3

    .line 176
    .local v13, previewAnimScale:F
    move/from16 v0, p4

    int-to-float v2, v0

    mul-float v15, v2, v13

    .line 177
    .restart local v15       #previewWidth:F
    move/from16 v0, p5

    int-to-float v2, v0

    mul-float v14, v2, v13

    .line 178
    .restart local v14       #previewHeight:F
    const/high16 v2, 0x4000

    div-float v2, v15, v2

    sub-float v2, v10, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 179
    .local v4, previewX:I
    const/high16 v2, 0x4000

    div-float v2, v14, v2

    sub-float v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 181
    .local v5, previewY:I
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto/16 :goto_3
.end method

.method public drawDarkPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z
    .locals 13
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "review"

    .prologue
    .line 190
    int-to-float v1, p2

    move/from16 v0, p4

    int-to-float v2, v0

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float v8, v1, v2

    .line 191
    .local v8, centerX:F
    move/from16 v0, p3

    int-to-float v1, v0

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float v9, v1, v2

    .line 192
    .local v9, centerY:F
    const/high16 v12, 0x3f80

    .line 193
    .local v12, scaleRatio:F
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-eqz v1, :cond_0

    .line 194
    move/from16 v0, p4

    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 198
    :goto_0
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float v1, v1

    mul-float v11, v1, v12

    .line 199
    .local v11, reviewWidth:F
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float v1, v1

    mul-float v10, v1, v12

    .line 200
    .local v10, reviewHeight:F
    const/high16 v1, 0x4000

    div-float v1, v11, v1

    sub-float v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 201
    .local v3, reviewX:I
    const/high16 v1, 0x4000

    div-float v1, v10, v1

    sub-float v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 204
    .local v4, reviewY:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v7

    .line 205
    .local v7, alpha:F
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 207
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 208
    const/4 v1, 0x1

    return v1

    .line 196
    .end local v3           #reviewX:I
    .end local v4           #reviewY:I
    .end local v7           #alpha:F
    .end local v10           #reviewHeight:F
    .end local v11           #reviewWidth:F
    :cond_0
    const-string v1, "SwitchAnimManager"

    const-string v2, "mPreviewFrameLayoutWidth is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    .line 64
    return-void
.end method

.method public setReviewDrawingSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    .line 56
    iput p2, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    .line 57
    return-void
.end method

.method public startAnimation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 69
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    .line 70
    return-void
.end method
