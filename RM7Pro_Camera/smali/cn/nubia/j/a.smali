.class public Lcn/nubia/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:[Ljava/lang/String;

.field private static final j:[Ljava/lang/String;

.field private static final k:[I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/media/SoundPool;

.field private c:[I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:I

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private l:Landroid/media/SoundPool$OnLoadCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "/product/media/audio/ui/"

    const-string v1, "/system/product/media/audio/ui/"

    const-string v2, "/system/media/audio/ui/"

    .line 76
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/j/a;->h:[Ljava/lang/String;

    const-string v1, "camera_click.ogg"

    const-string v2, "camera_focus.ogg"

    const-string v3, "VideoRecord.ogg"

    const-string v4, "VideoRecord.ogg"

    const-string v5, "ZoomSound.ogg"

    const-string v6, "cameraCountdownSlow.ogg"

    const-string v7, "cameraCountdownFast.ogg"

    const-string v8, "camera_wheel.ogg"

    .line 82
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/j/a;->j:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 94
    sget v1, Lcn/nubia/j/b$a;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcn/nubia/j/b$a;->d:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcn/nubia/j/b$a;->f:I

    const/4 v3, 0x2

    aput v1, v0, v3

    sget v1, Lcn/nubia/j/b$a;->f:I

    const/4 v3, 0x3

    aput v1, v0, v3

    const/4 v1, 0x4

    aput v2, v0, v1

    sget v1, Lcn/nubia/j/b$a;->c:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcn/nubia/j/b$a;->b:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcn/nubia/j/b$a;->e:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sput-object v0, Lcn/nubia/j/a;->k:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/j/a;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcn/nubia/j/a;->e:Z

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcn/nubia/j/a;->f:I

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcn/nubia/j/a;->g:Landroid/util/SparseArray;

    .line 267
    new-instance v1, Lcn/nubia/j/a$1;

    invoke-direct {v1, p0}, Lcn/nubia/j/a$1;-><init>(Lcn/nubia/j/a;)V

    iput-object v1, p0, Lcn/nubia/j/a;->l:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 153
    iput-object p1, p0, Lcn/nubia/j/a;->a:Landroid/content/Context;

    .line 154
    iput p3, p0, Lcn/nubia/j/a;->f:I

    .line 155
    new-instance p1, Landroid/media/SoundPool;

    const/4 p3, 0x5

    invoke-direct {p1, p3, p2, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p1, p0, Lcn/nubia/j/a;->b:Landroid/media/SoundPool;

    .line 157
    iget-object p2, p0, Lcn/nubia/j/a;->l:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 158
    sget-object p1, Lcn/nubia/j/a;->k:[I

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcn/nubia/j/a;->c:[I

    move p1, v0

    .line 159
    :goto_0
    iget-object p2, p0, Lcn/nubia/j/a;->c:[I

    array-length p3, p2

    if-ge p1, p3, :cond_0

    const/4 p3, -0x1

    .line 160
    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcn/nubia/j/a;->g:Landroid/util/SparseArray;

    .line 163
    sget-object p1, Lcn/nubia/j/a;->h:[Ljava/lang/String;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object p3, p1, v0

    .line 164
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "camera_click.ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    iput-object p3, p0, Lcn/nubia/j/a;->i:Ljava/lang/String;

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic a(Lcn/nubia/j/a;)Landroid/media/SoundPool;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/j/a;->b:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/j/a;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/j/a;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method private d(I)Landroid/media/MediaPlayer;
    .locals 7

    .line 335
    iget-object v0, p0, Lcn/nubia/j/a;->b:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string p1, "MediaActionSound"

    const-string v0, "SoundPool has been released"

    .line 336
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 340
    :cond_0
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    .line 341
    invoke-direct {p0, p1}, Lcn/nubia/j/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcn/nubia/j/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcn/nubia/j/a;->k:[I

    aget p1, v1, p1

    .line 343
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 346
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 347
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, v6

    .line 344
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 349
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/j/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/j/a;->j:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    return-object v6
.end method

.method private e(I)I
    .locals 4

    .line 381
    invoke-direct {p0, p1}, Lcn/nubia/j/a;->f(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcn/nubia/j/a;->b:Landroid/media/SoundPool;

    iget-object v2, p0, Lcn/nubia/j/a;->a:Landroid/content/Context;

    sget-object v3, Lcn/nubia/j/a;->k:[I

    aget p1, v3, p1

    invoke-virtual {v0, v2, p1, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    return p1

    .line 384
    :cond_0
    iget-object v0, p0, Lcn/nubia/j/a;->b:Landroid/media/SoundPool;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/j/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/nubia/j/a;->j:[Ljava/lang/String;

    aget-object p1, v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private f(I)Z
    .locals 2

    .line 389
    iget v0, p0, Lcn/nubia/j/a;->f:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcn/nubia/j/a;->b:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcn/nubia/j/a;->b:Landroid/media/SoundPool;

    .line 297
    :cond_0
    iget-object v0, p0, Lcn/nubia/j/a;->g:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 298
    :goto_0
    iget-object v1, p0, Lcn/nubia/j/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 299
    iget-object v1, p0, Lcn/nubia/j/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcn/nubia/j/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 3

    monitor-enter p0

    if-ltz p1, :cond_2

    .line 184
    :try_start_0
    sget-object v0, Lcn/nubia/j/a;->j:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 187
    iget-object v0, p0, Lcn/nubia/j/a;->b:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string p1, "MediaActionSound"

    const-string v0, "SoundPool has been released"

    .line 188
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 191
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/j/a;->c:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 192
    invoke-direct {p0, p1}, Lcn/nubia/j/a;->e(I)I

    move-result v1

    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :cond_1
    monitor-exit p0

    return-void

    .line 185
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(ILandroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcn/nubia/j/a;->b:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string p1, "MediaActionSound"

    const-string p2, "SoundPool has been released"

    .line 363
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcn/nubia/j/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 368
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const/4 p2, 0x0

    .line 369
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 370
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 372
    :cond_1
    invoke-interface {p2, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 377
    iput-boolean p1, p0, Lcn/nubia/j/a;->e:Z

    return-void
.end method

.method public declared-synchronized b(I)V
    .locals 8

    monitor-enter p0

    if-ltz p1, :cond_3

    .line 227
    :try_start_0
    sget-object v0, Lcn/nubia/j/a;->j:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_3

    .line 230
    iget-object v1, p0, Lcn/nubia/j/a;->b:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    const-string p1, "MediaActionSound"

    const-string v0, "SoundPool has been released"

    .line 231
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 234
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcn/nubia/j/a;->e:Z

    if-nez v0, :cond_1

    const-string p1, "MediaActionSound"

    const-string v0, "Shutter sound is closed"

    .line 235
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 238
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcn/nubia/j/a;->c:[I

    aget v2, v0, p1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string v0, "MediaActionSound"

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSoundIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/j/a;->c:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mSoundIdToPlay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/j/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0, p1}, Lcn/nubia/j/a;->e(I)I

    move-result v0

    .line 241
    iget-object v1, p0, Lcn/nubia/j/a;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v1, p0, Lcn/nubia/j/a;->c:[I

    aput v0, v1, p1

    goto :goto_0

    .line 244
    :cond_2
    aget v2, v0, p1

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    :goto_0
    monitor-exit p0

    return-void

    .line 228
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(I)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcn/nubia/j/a;->b:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string p1, "MediaActionSound"

    const-string v0, "SoundPool has been released"

    .line 316
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcn/nubia/j/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 322
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/j/a;->d(I)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    .line 323
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 324
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 325
    iget-object v1, p0, Lcn/nubia/j/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 327
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
