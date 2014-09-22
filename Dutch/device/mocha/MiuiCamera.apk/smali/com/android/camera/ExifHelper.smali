.class public Lcom/android/camera/ExifHelper;
.super Ljava/lang/Object;
.source "ExifHelper.java"


# static fields
.field private static mDateTimeStampFormat:Ljava/text/DateFormat;

.field private static mGPSDateStampFormat:Ljava/text/DateFormat;

.field private static mGPSTimeStampFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/ExifHelper;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 17
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "kk:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/ExifHelper;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    .line 18
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/ExifHelper;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 21
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 22
    .local v0, tzUTC:Ljava/util/TimeZone;
    sget-object v1, Lcom/android/camera/ExifHelper;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 23
    sget-object v1, Lcom/android/camera/ExifHelper;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDoubleToLaLon(D)Ljava/lang/String;
    .locals 11
    .parameter "value"

    .prologue
    const-wide/high16 v9, 0x404e

    .line 75
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 76
    .local v0, degrees:I
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    int-to-double v7, v0

    sub-double/2addr v5, v7

    mul-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    .line 77
    .local v1, minutes:D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    int-to-double v7, v0

    sub-double/2addr v5, v7

    div-double v7, v1, v9

    sub-double/2addr v5, v7

    const-wide v7, 0x414b774000000000L

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    .line 78
    .local v3, seconds:D
    const-wide/16 v5, 0x0

    cmpg-double v5, p0, v5

    if-gez v5, :cond_0

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    :goto_0
    return-object v5

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter "orientation"

    .prologue
    .line 85
    sparse-switch p0, :sswitch_data_0

    .line 95
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 87
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 89
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static writeExif(Ljava/lang/String;ILandroid/location/Location;J)V
    .locals 10
    .parameter "filePath"
    .parameter "orientation"
    .parameter "location"
    .parameter "timeTaken"

    .prologue
    const-wide/16 v8, 0x0

    .line 29
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, exif:Landroid/media/ExifInterface;
    const-string v5, "GPSDateStamp"

    sget-object v6, Lcom/android/camera/ExifHelper;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v5, "GPSTimeStamp"

    sget-object v6, Lcom/android/camera/ExifHelper;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v5, "DateTime"

    sget-object v6, Lcom/android/camera/ExifHelper;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v5, "Orientation"

    invoke-static {p1}, Lcom/android/camera/ExifHelper;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v5, "Make"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 41
    .local v1, latValue:D
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 42
    .local v3, longValue:D
    const-string v5, "GPSLatitude"

    invoke-static {v1, v2}, Lcom/android/camera/ExifHelper;->convertDoubleToLaLon(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v5, "GPSLongitude"

    invoke-static {v3, v4}, Lcom/android/camera/ExifHelper;->convertDoubleToLaLon(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    cmpl-double v5, v1, v8

    if-lez v5, :cond_1

    .line 45
    const-string v5, "GPSLatitudeRef"

    const-string v6, "N"

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    cmpl-double v5, v3, v8

    if-lez v5, :cond_2

    .line 50
    const-string v5, "GPSLongitudeRef"

    const-string v6, "E"

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local v1           #latValue:D
    .end local v3           #longValue:D
    :cond_0
    :goto_1
    sget-boolean v5, Lcom/android/camera/Device;->IS_MI1:Z

    if-eqz v5, :cond_3

    .line 56
    const-string v5, "Model"

    const-string v6, "MiOne"

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v5, "FocalLength"

    const-string v6, "431/100"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_2
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 68
    .end local v0           #exif:Landroid/media/ExifInterface;
    :goto_3
    return-void

    .line 47
    .restart local v0       #exif:Landroid/media/ExifInterface;
    .restart local v1       #latValue:D
    .restart local v3       #longValue:D
    :cond_1
    const-string v5, "GPSLatitudeRef"

    const-string v6, "S"

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0           #exif:Landroid/media/ExifInterface;
    .end local v1           #latValue:D
    .end local v3           #longValue:D
    :catch_0
    move-exception v5

    goto :goto_3

    .line 52
    .restart local v0       #exif:Landroid/media/ExifInterface;
    .restart local v1       #latValue:D
    .restart local v3       #longValue:D
    :cond_2
    const-string v5, "GPSLongitudeRef"

    const-string v6, "W"

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    .end local v1           #latValue:D
    .end local v3           #longValue:D
    :cond_3
    sget-boolean v5, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v5, :cond_5

    .line 59
    :cond_4
    const-string v5, "Model"

    const-string v6, "MiTwo"

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v5, "FocalLength"

    const-string v6, "354/100"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 62
    :cond_5
    const-string v5, "Model"

    sget-object v6, Lcom/android/camera/Device;->MODULE:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
