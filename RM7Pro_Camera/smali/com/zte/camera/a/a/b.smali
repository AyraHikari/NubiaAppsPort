.class public Lcom/zte/camera/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/a/a/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "b"


# instance fields
.field private b:I

.field private c:Landroid/media/MediaPlayer;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:[F

.field private g:Z

.field private h:Lcom/zte/camera/a/a/b$a;

.field private i:Lcom/zte/camera/d/a;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/zte/camera/a/a/b;->b:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/zte/camera/a/a/b;->d:Landroid/content/Context;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/zte/camera/a/a/b;->e:I

    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p0, Lcom/zte/camera/a/a/b;->g:Z

    if-nez p1, :cond_0

    .line 49
    sget-object p1, Lcom/zte/camera/a/a/b;->a:Ljava/lang/String;

    const-string v0, "VlogCustomMediaPlayer context null"

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/zte/camera/a/a/b;->d:Landroid/content/Context;

    .line 53
    iput v0, p0, Lcom/zte/camera/a/a/b;->e:I

    .line 54
    iget-object p1, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    if-nez p1, :cond_1

    .line 55
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method private a(I[F)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 269
    aget v2, p2, v1

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method static synthetic a(Lcom/zte/camera/a/a/b;)Lcom/zte/camera/d/a;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/camera/a/a/b;->i:Lcom/zte/camera/d/a;

    return-object p0
.end method

.method private a(II)V
    .locals 10

    .line 188
    new-instance v9, Lcom/zte/camera/a/a/b$1;

    int-to-long v2, p2

    const-wide/16 v4, 0x64

    const/4 v6, 0x1

    move-object v0, v9

    move-object v1, p0

    move v7, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/zte/camera/a/a/b$1;-><init>(Lcom/zte/camera/a/a/b;JJZII)V

    iput-object v9, p0, Lcom/zte/camera/a/a/b;->i:Lcom/zte/camera/d/a;

    return-void
.end method

.method private a(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 222
    sget-object v0, Lcom/zte/camera/a/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared, state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/camera/a/a/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "onPrepared, mediaPlayer is null"

    .line 224
    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/zte/camera/a/a/b;->g()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x5

    .line 228
    invoke-direct {p0, p1}, Lcom/zte/camera/a/a/b;->c(I)V

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/zte/camera/a/a/b;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared, current state is started, start state is = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/zte/camera/a/a/b;->b:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/zte/camera/a/a/b;->l()V

    const/4 p1, 0x6

    .line 235
    invoke-direct {p0, p1}, Lcom/zte/camera/a/a/b;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/a/a/b;II)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/zte/camera/a/a/b;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/zte/camera/a/a/b;)Landroid/media/MediaPlayer;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private synthetic b(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/zte/camera/a/a/b;->h:Lcom/zte/camera/a/a/b$a;

    invoke-interface {p1}, Lcom/zte/camera/a/a/b$a;->a()V

    .line 181
    iget-object p1, p0, Lcom/zte/camera/a/a/b;->i:Lcom/zte/camera/d/a;

    invoke-virtual {p1}, Lcom/zte/camera/d/a;->c()Lcom/zte/camera/d/a;

    .line 182
    iget-object p1, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private c(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/zte/camera/a/a/b;->b:I

    return-void
.end method

.method private synthetic c(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private e()Z
    .locals 2

    .line 64
    iget v0, p0, Lcom/zte/camera/a/a/b;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()Z
    .locals 2

    .line 68
    iget v0, p0, Lcom/zte/camera/a/a/b;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()Z
    .locals 2

    .line 72
    iget v0, p0, Lcom/zte/camera/a/a/b;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()Z
    .locals 2

    .line 76
    iget v0, p0, Lcom/zte/camera/a/a/b;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()Z
    .locals 2

    .line 80
    iget v0, p0, Lcom/zte/camera/a/a/b;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()Z
    .locals 2

    .line 88
    iget v0, p0, Lcom/zte/camera/a/a/b;->b:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()Z
    .locals 2

    .line 92
    iget v0, p0, Lcom/zte/camera/a/a/b;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l()V
    .locals 3

    .line 169
    iget v0, p0, Lcom/zte/camera/a/a/b;->j:I

    iget-object v1, p0, Lcom/zte/camera/a/a/b;->f:[F

    invoke-direct {p0, v0, v1}, Lcom/zte/camera/a/a/b;->a(I[F)I

    move-result v0

    .line 170
    iget-boolean v1, p0, Lcom/zte/camera/a/a/b;->g:Z

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 172
    iget-object v0, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/zte/camera/a/a/-$$Lambda$b$1hJRLpIbeSCIpLc9PTxMn694gA8;

    invoke-direct {v1, p0}, Lcom/zte/camera/a/a/-$$Lambda$b$1hJRLpIbeSCIpLc9PTxMn694gA8;-><init>(Lcom/zte/camera/a/a/b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/zte/camera/a/a/b;->f:[F

    iget v2, p0, Lcom/zte/camera/a/a/b;->j:I

    aget v1, v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 177
    invoke-direct {p0, v0, v1}, Lcom/zte/camera/a/a/b;->a(II)V

    .line 178
    iget-object v1, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 179
    iget-object v0, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/zte/camera/a/a/-$$Lambda$b$axrbTi0qLuWv5G5GuxL1uKpawEQ;

    invoke-direct {v1, p0}, Lcom/zte/camera/a/a/-$$Lambda$b$axrbTi0qLuWv5G5GuxL1uKpawEQ;-><init>(Lcom/zte/camera/a/a/b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$1hJRLpIbeSCIpLc9PTxMn694gA8(Lcom/zte/camera/a/a/b;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/a/a/b;->c(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic lambda$DoM3f67xgpOHS2RcjvUy3ppvSHg(Lcom/zte/camera/a/a/b;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/a/a/b;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic lambda$axrbTi0qLuWv5G5GuxL1uKpawEQ(Lcom/zte/camera/a/a/b;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/a/a/b;->b(Landroid/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 118
    :try_start_0
    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->d(I)I

    move-result p1

    .line 120
    iget-object v2, p0, Lcom/zte/camera/a/a/b;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->c(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 121
    iput p1, p0, Lcom/zte/camera/a/a/b;->e:I

    if-nez v1, :cond_0

    .line 124
    invoke-direct {p0, v0}, Lcom/zte/camera/a/a/b;->c(I)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    const/4 p1, 0x3

    .line 127
    invoke-direct {p0, p1}, Lcom/zte/camera/a/a/b;->c(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 136
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 130
    :try_start_2
    sget-object v2, Lcom/zte/camera/a/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "determineDataSource error, info is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    invoke-direct {p0, v0}, Lcom/zte/camera/a/a/b;->c(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 136
    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    :cond_2
    :goto_3
    throw p1
.end method

.method public a(Lcom/zte/camera/a/a/b$a;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/zte/camera/a/a/b;->h:Lcom/zte/camera/a/a/b$a;

    return-void
.end method

.method public a()Z
    .locals 2

    .line 84
    iget v0, p0, Lcom/zte/camera/a/a/b;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(I[FZ)Z
    .locals 3

    .line 96
    sget-object v0, Lcom/zte/camera/a/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset, state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/camera/a/a/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "reset, mMediaPlayer is null"

    .line 98
    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 102
    :cond_0
    iput-object p2, p0, Lcom/zte/camera/a/a/b;->f:[F

    .line 103
    iput-boolean p3, p0, Lcom/zte/camera/a/a/b;->g:Z

    .line 105
    iget p2, p0, Lcom/zte/camera/a/a/b;->e:I

    if-eq p1, p2, :cond_1

    .line 106
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 107
    invoke-virtual {p0, p1}, Lcom/zte/camera/a/a/b;->a(I)V

    const/4 p1, 0x1

    return p1

    .line 110
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reset, template is same="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public b()V
    .locals 3

    .line 204
    sget-object v0, Lcom/zte/camera/a/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume, state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/camera/a/a/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/zte/camera/a/a/b;->i:Lcom/zte/camera/d/a;

    invoke-virtual {v0}, Lcom/zte/camera/d/a;->e()V

    .line 206
    iget-object v0, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x6

    .line 207
    invoke-direct {p0, v0}, Lcom/zte/camera/a/a/b;->c(I)V

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 145
    sget-object v0, Lcom/zte/camera/a/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/camera/a/a/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/zte/camera/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "can not be started, is unfinished state."

    .line 147
    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/zte/camera/a/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/zte/camera/a/a/b;->d()V

    .line 155
    :cond_1
    iput p1, p0, Lcom/zte/camera/a/a/b;->j:I

    .line 156
    invoke-direct {p0}, Lcom/zte/camera/a/a/b;->g()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/zte/camera/a/a/b;->j()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/zte/camera/a/a/b;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/zte/camera/a/a/b;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 160
    iget-object p1, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/zte/camera/a/a/-$$Lambda$b$DoM3f67xgpOHS2RcjvUy3ppvSHg;

    invoke-direct {v0, p0}, Lcom/zte/camera/a/a/-$$Lambda$b$DoM3f67xgpOHS2RcjvUy3ppvSHg;-><init>(Lcom/zte/camera/a/a/b;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 161
    invoke-direct {p0}, Lcom/zte/camera/a/a/b;->e()Z

    move-result p1

    if-nez p1, :cond_4

    .line 162
    iget-object p1, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 p1, 0x4

    .line 163
    invoke-direct {p0, p1}, Lcom/zte/camera/a/a/b;->c(I)V

    goto :goto_1

    .line 157
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/zte/camera/a/a/b;->l()V

    const/4 p1, 0x6

    .line 158
    invoke-direct {p0, p1}, Lcom/zte/camera/a/a/b;->c(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 211
    sget-object v0, Lcom/zte/camera/a/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause, state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/camera/a/a/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/zte/camera/a/a/b;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not be paused, state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/camera/a/a/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/a/a/b;->i:Lcom/zte/camera/d/a;

    invoke-virtual {v0}, Lcom/zte/camera/d/a;->d()V

    .line 217
    iget-object v0, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x7

    .line 218
    invoke-direct {p0, v0}, Lcom/zte/camera/a/a/b;->c(I)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 239
    sget-object v0, Lcom/zte/camera/a/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop, state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/camera/a/a/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/zte/camera/a/a/b;->e()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/zte/camera/a/a/b;->i()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/zte/camera/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/a/a/b;->i:Lcom/zte/camera/d/a;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Lcom/zte/camera/d/a;->b()V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/zte/camera/a/a/b;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/16 v0, 0x8

    .line 250
    invoke-direct {p0, v0}, Lcom/zte/camera/a/a/b;->c(I)V

    return-void

    .line 241
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop, current state can\'t stopped, start state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/camera/a/a/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
