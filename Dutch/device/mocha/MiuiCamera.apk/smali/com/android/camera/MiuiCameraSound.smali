.class public Lcom/android/camera/MiuiCameraSound;
.super Ljava/lang/Object;
.source "MiuiCameraSound.java"


# static fields
.field private static final SOUND_FILES:[Ljava/lang/String;


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundIdToPlay:I

.field private mSoundIds:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/media/audio/ui/camera_click.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/media/audio/ui/camera_focus.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/media/audio/ui/VideoRecord.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/media/audio/ui/VideoRecord.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "camera_fast_burst.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sound_shuter_delay_bee.wav"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v1, Lcom/android/camera/MiuiCameraSound$1;

    invoke-direct {v1, p0}, Lcom/android/camera/MiuiCameraSound$1;-><init>(Lcom/android/camera/MiuiCameraSound;)V

    iput-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 45
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mAudioManager:Landroid/media/AudioManager;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mAssetManager:Landroid/content/res/AssetManager;

    .line 47
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    .line 49
    iget-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/camera/MiuiCameraSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 50
    sget-object v1, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    aput v5, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iput v5, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/MiuiCameraSound;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/MiuiCameraSound;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    return p1
.end method

.method private loadFromAsset(I)I
    .locals 5
    .parameter "soundName"

    .prologue
    .line 72
    const/4 v1, -0x1

    .line 74
    .local v1, soundId:I
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/camera/MiuiCameraSound;->mAssetManager:Landroid/content/res/AssetManager;

    sget-object v4, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized play(II)V
    .locals 7
    .parameter "soundName"
    .parameter "times"

    .prologue
    .line 82
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 86
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 87
    invoke-direct {p0, p1}, Lcom/android/camera/MiuiCameraSound;->loadFromAsset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    iget v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :goto_1
    monitor-exit p0

    return-void

    .line 89
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    aget v1, v1, p1

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    add-int/lit8 v5, p2, -0x1

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized load(I)V
    .locals 4
    .parameter "soundName"

    .prologue
    .line 58
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 61
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 62
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    invoke-direct {p0, p1}, Lcom/android/camera/MiuiCameraSound;->loadFromAsset(I)I

    move-result v1

    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    iget-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v2, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public playSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/MiuiCameraSound;->playSound(II)V

    .line 129
    return-void
.end method

.method public playSound(II)V
    .locals 2
    .parameter "soundId"
    .parameter "times"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/camera/MiuiCameraSound;->play(II)V

    .line 125
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    .line 119
    :cond_0
    return-void
.end method
