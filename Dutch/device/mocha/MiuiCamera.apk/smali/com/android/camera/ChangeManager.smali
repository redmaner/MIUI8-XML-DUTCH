.class public Lcom/android/camera/ChangeManager;
.super Ljava/lang/Object;
.source "ChangeManager.java"


# instance fields
.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    return-void
.end method


# virtual methods
.method public check(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 17
    iget v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    .line 22
    return-void
.end method

.method public request(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    .line 14
    return-void
.end method
