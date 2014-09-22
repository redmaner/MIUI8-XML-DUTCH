.class public Lcom/android/camera/storage/ImageSaver$SaveRequest;
.super Ljava/lang/Object;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveRequest"
.end annotation


# instance fields
.field public data:[B

.field public date:J

.field public exif:Lcom/android/gallery3d/exif/ExifInterface;

.field public height:I

.field public loc:Landroid/location/Location;

.field public orientation:I

.field public title:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
