.class public final enum Lcom/android/zxing/QRCodeType;
.super Ljava/lang/Enum;
.source "QRCodeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/zxing/QRCodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/zxing/QRCodeType;

.field public static final enum MARKET:Lcom/android/zxing/QRCodeType;

.field public static final enum MECARD:Lcom/android/zxing/QRCodeType;

.field public static final enum NONE:Lcom/android/zxing/QRCodeType;

.field public static final enum TEXT:Lcom/android/zxing/QRCodeType;

.field public static final enum VCARD:Lcom/android/zxing/QRCodeType;

.field public static final enum WEB_URL:Lcom/android/zxing/QRCodeType;

.field public static final enum WEB_URL_APK:Lcom/android/zxing/QRCodeType;

.field public static final enum WEB_URL_CLOUD_ALBUM:Lcom/android/zxing/QRCodeType;

.field public static final enum WEB_URL_QQ:Lcom/android/zxing/QRCodeType;

.field public static final enum WECHAT:Lcom/android/zxing/QRCodeType;

.field public static final enum WIFI:Lcom/android/zxing/QRCodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/android/zxing/QRCodeType;

    const-string v1, "WECHAT"

    invoke-direct {v0, v1, v3}, Lcom/android/zxing/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/zxing/QRCodeType;->WECHAT:Lcom/android/zxing/QRCodeType;

    .line 7
    new-instance v0, Lcom/android/zxing/QRCodeType;

    const-string v1, "WEB_URL_APK"

    invoke-direct {v0, v1, v4}, Lcom/android/zxing/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/zxing/QRCodeType;->WEB_URL_APK:Lcom/android/zxing/QRCodeType;

    new-instance v0, Lcom/android/zxing/QRCodeType;

    const-string v1, "WEB_URL_QQ"

    invoke-direct {v0, v1, v5}, Lcom/android/zxing/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/zxing/QRCodeType;->WEB_URL_QQ:Lcom/android/zxing/QRCodeType;

    new-instance v0, Lcom/android/zxing/QRCodeType;

    const-string v1, "WEB_URL_CLOUD_ALBUM"

    invoke-direct {v0, v1, v6}, Lcom/android/zxing/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/zxing/QRCodeType;->WEB_URL_CLOUD_ALBUM:Lcom/android/zxing/QRCodeType;

    .line 8
    new-instance v0, Lcom/android/zxing/QRCodeType;

    const-string v1, "WEB_URL"

    invoke-direct {v0, v1, v7}, Lcom/android/zxing/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/zxing/QRCodeType;->WEB_URL:Lcom/android/zxing/QRCodeType;

    .line 9
    new-instance v0, Lcom/android/zxing/QRCodeType;

    const-string v1, "WIFI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/zxing/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/zxing/QRCodeType;->WIFI:Lcom/android/zxing/QRCodeType;

    new-instance v0, Lcom/android/zxing/QRCodeType;

    const-string v1, "MARKET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/zxing/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/zxing/QRCodeType;->MARKET:Lcom/android/zxing/QRCodeType;

    new-instance v0, Lcom/android/zxing/QRCodeType;

    const-string v1, "MECARD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/zxing/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/zxing/QRCodeType;->MECARD:Lcom/android/zxing/QRCodeType;

    new-instance v0, Lcom/android/zxing/QRCodeType;

    const-string v1, "VCARD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/zxing/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/zxing/QRCodeType;->VCARD:Lcom/android/zxing/QRCodeType;

    .line 10
    new-instance v0, Lcom/android/zxing/QRCodeType;

    const-string v1, "TEXT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/zxing/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/zxing/QRCodeType;->TEXT:Lcom/android/zxing/QRCodeType;

    .line 11
    new-instance v0, Lcom/android/zxing/QRCodeType;

    const-string v1, "NONE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/zxing/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/zxing/QRCodeType;->NONE:Lcom/android/zxing/QRCodeType;

    .line 5
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/zxing/QRCodeType;

    sget-object v1, Lcom/android/zxing/QRCodeType;->WECHAT:Lcom/android/zxing/QRCodeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/zxing/QRCodeType;->WEB_URL_APK:Lcom/android/zxing/QRCodeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/zxing/QRCodeType;->WEB_URL_QQ:Lcom/android/zxing/QRCodeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/zxing/QRCodeType;->WEB_URL_CLOUD_ALBUM:Lcom/android/zxing/QRCodeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/zxing/QRCodeType;->WEB_URL:Lcom/android/zxing/QRCodeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/zxing/QRCodeType;->WIFI:Lcom/android/zxing/QRCodeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/zxing/QRCodeType;->MARKET:Lcom/android/zxing/QRCodeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/zxing/QRCodeType;->MECARD:Lcom/android/zxing/QRCodeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/zxing/QRCodeType;->VCARD:Lcom/android/zxing/QRCodeType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/zxing/QRCodeType;->TEXT:Lcom/android/zxing/QRCodeType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/zxing/QRCodeType;->NONE:Lcom/android/zxing/QRCodeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/zxing/QRCodeType;->$VALUES:[Lcom/android/zxing/QRCodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/zxing/QRCodeType;
    .locals 1
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/android/zxing/QRCodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/QRCodeType;

    return-object v0
.end method

.method public static values()[Lcom/android/zxing/QRCodeType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/android/zxing/QRCodeType;->$VALUES:[Lcom/android/zxing/QRCodeType;

    invoke-virtual {v0}, [Lcom/android/zxing/QRCodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/zxing/QRCodeType;

    return-object v0
.end method
