.class public Lcom/android/camera/ui/V6PreviewPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mCaptureDelayNumber:Lcom/android/camera/ui/RotateImageView;

.field public mCropView:Lcom/android/camera/ui/V6EffectCropView;

.field public mFaceView:Lcom/android/camera/ui/FaceView;

.field public mFocusView:Lcom/android/camera/ui/FocusView;

.field private mGestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field public mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

.field public mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

.field public mProgressBar:Landroid/view/View;

.field public mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

.field public mVideoReviewImage:Landroid/widget/ImageView;

.field public mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/android/camera/ui/V6GestureRecognizer;

    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mGestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    .line 29
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    if-ne v0, p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c004a

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCreate()V

    .line 63
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 46
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateImageView;

    .line 47
    const v0, 0x7f0c0043

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateTextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    .line 48
    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    .line 49
    const v0, 0x7f0c0041

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6RecordingTimeView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    .line 50
    const v0, 0x7f0c0048

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FocusView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFocusView:Lcom/android/camera/ui/FocusView;

    .line 51
    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewFrame;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    .line 53
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EffectCropView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCropView:Lcom/android/camera/ui/V6EffectCropView;

    .line 55
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0c0047

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mProgressBar:Landroid/view/View;

    .line 57
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onPause()V

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 69
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 73
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mGestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 33
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 34
    return-void
.end method
