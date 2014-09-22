.class public Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawJPEGAttribute.java"


# instance fields
.field public mData:[B

.field public mDate:J

.field public mEffectIndex:I

.field public mExif:Lcom/android/gallery3d/exif/ExifInterface;

.field public mHeight:I

.field public mInvertRect:I

.field public mJpegOrientation:I

.field public mLoc:Landroid/location/Location;

.field public mMirror:Z

.field public mOrientation:I

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field public mRectF:Landroid/graphics/RectF;

.field public mTitle:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field public mWidth:I


# direct methods
.method public constructor <init>([BIIIIILandroid/graphics/RectF;ILandroid/location/Location;Ljava/lang/String;JIIZ)V
    .locals 2
    .parameter "data"
    .parameter "previewW"
    .parameter "previewH"
    .parameter "w"
    .parameter "h"
    .parameter "effectIndex"
    .parameter "rectF"
    .parameter "invertRect"
    .parameter "loc"
    .parameter "title"
    .parameter "date"
    .parameter "orientation"
    .parameter "jpegOrientation"
    .parameter "mirror"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 36
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    .line 37
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    .line 38
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 39
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 40
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 41
    iput-wide p11, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    .line 42
    iput p6, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    .line 43
    iput-object p7, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRectF:Landroid/graphics/RectF;

    .line 44
    iput p8, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInvertRect:I

    .line 46
    iput-object p9, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    .line 47
    iput-object p10, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    .line 48
    iput p13, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    .line 49
    move/from16 v0, p14

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    .line 50
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    .line 51
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTarget:I

    .line 52
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 56
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 57
    return-void
.end method
