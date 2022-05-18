.class public Lcn/nubia/camera/aa/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aa/b$b;,
        Lcn/nubia/camera/aa/b$a;,
        Lcn/nubia/camera/aa/b$c;
    }
.end annotation


# instance fields
.field a:Lcn/nubia/camera/aa/b$c;

.field b:Lcn/nubia/camera/aa/b$a;

.field private c:Lcn/nubia/camera/aj/f;

.field private d:Lcn/nubia/camera/ad/a;

.field private e:Lcn/nubia/camera/aa/a;

.field private f:Lcn/nubia/videogenerator/d/a;

.field private g:Lcn/nubia/videogenerator/d/a;

.field private h:Lcn/nubia/camera/aa/c;

.field private i:Lcn/nubia/camera/v/d;

.field private j:Lcn/nubia/videogenerator/codec/a;

.field private k:Lcn/nubia/videogenerator/codec/h;

.field private l:Ljava/lang/String;

.field private m:Landroid/net/Uri;

.field private n:I

.field private o:I

.field private p:Landroid/util/Size;

.field private q:Lcn/nubia/camera/aa/b$b;

.field private r:Lcn/nubia/camera/aj/i;

.field private s:Lcn/nubia/camera/g/f;

.field private t:Ljava/lang/Runnable;

.field private u:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/aj/f;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Lcn/nubia/camera/aa/b$c;->a:Lcn/nubia/camera/aa/b$c;

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    .line 87
    sget-object v0, Lcn/nubia/camera/aa/b$a;->a:Lcn/nubia/camera/aa/b$a;

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->b:Lcn/nubia/camera/aa/b$a;

    .line 431
    new-instance v0, Lcn/nubia/camera/aa/b$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aa/b$5;-><init>(Lcn/nubia/camera/aa/b;)V

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->r:Lcn/nubia/camera/aj/i;

    .line 464
    new-instance v0, Lcn/nubia/camera/aa/b$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aa/b$6;-><init>(Lcn/nubia/camera/aa/b;)V

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->s:Lcn/nubia/camera/g/f;

    .line 491
    new-instance v0, Lcn/nubia/camera/aa/b$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aa/b$7;-><init>(Lcn/nubia/camera/aa/b;)V

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->t:Ljava/lang/Runnable;

    .line 501
    new-instance v0, Lcn/nubia/camera/aa/b$8;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aa/b$8;-><init>(Lcn/nubia/camera/aa/b;)V

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->u:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    .line 93
    iput-object p2, p0, Lcn/nubia/camera/aa/b;->c:Lcn/nubia/camera/aj/f;

    .line 94
    new-instance p1, Lcn/nubia/camera/aa/c;

    invoke-direct {p1}, Lcn/nubia/camera/aa/c;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/aa/b;->h:Lcn/nubia/camera/aa/c;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aa/b;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcn/nubia/camera/aa/b;->n:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/aa/b;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/nubia/camera/aa/b;->m:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/v/d;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/camera/aa/b;->i:Lcn/nubia/camera/v/d;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/aa/b;Lcn/nubia/videogenerator/d/a;)Lcn/nubia/videogenerator/d/a;
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/nubia/camera/aa/b;->f:Lcn/nubia/videogenerator/d/a;

    return-object p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .line 539
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/aa/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/nubia/camera/aa/b;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/aa/b;Lcn/nubia/videogenerator/d/a;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/videogenerator/d/a;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcn/nubia/videogenerator/d/a;Ljava/lang/String;)V
    .locals 3

    .line 401
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "livePhotoFile is not exits. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LivePhoto"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0}, Lcn/nubia/camera/aa/b;->j()V

    return-void

    .line 406
    :cond_0
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x1

    .line 407
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_pending"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->m:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 409
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 410
    sget v0, Lcn/nubia/d/a;->ag:I

    const-string v1, "livep"

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->m:Landroid/net/Uri;

    invoke-static {v0, v1, p2}, Lcn/nubia/k/c/d;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/util/SparseArray;)Z

    .line 412
    iget-object p2, p0, Lcn/nubia/camera/aa/b;->m:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcn/nubia/videogenerator/d/a;->a(Landroid/net/Uri;)V

    .line 413
    invoke-virtual {p1}, Lcn/nubia/videogenerator/d/a;->g()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/aa/b;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcn/nubia/camera/aa/b;->o:I

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/aa/b;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcn/nubia/camera/aa/b;->g()V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/aa/b;)Ljava/lang/Runnable;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/camera/aa/b;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/aa/b;)Landroid/os/Handler;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcn/nubia/camera/aa/b;->n()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/aa/b;)Lcn/nubia/videogenerator/d/a;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/aa/b;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/camera/aa/b;->l:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized g()V
    .locals 5

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 183
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "LivePhoto"

    const-string v1, "turnOnLivePhoto"

    .line 185
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Lcn/nubia/camera/aj/g;

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/camera/aj/g;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    .line 187
    invoke-virtual {v0}, Lcn/nubia/camera/aj/g;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->p:Landroid/util/Size;

    .line 195
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->h:Lcn/nubia/camera/aa/c;

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->i:Lcn/nubia/camera/v/d;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aa/c;->a(Lcn/nubia/camera/v/d;)V

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->c:Lcn/nubia/camera/aj/f;

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->r:Lcn/nubia/camera/aj/i;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/f;->a(Lcn/nubia/camera/aj/i;)V

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->c:Lcn/nubia/camera/aj/f;

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->s:Lcn/nubia/camera/g/f;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/f;->a(Lcn/nubia/camera/g/f;)V

    const/4 v0, 0x6

    .line 198
    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 200
    new-instance v1, Lcn/nubia/videogenerator/codec/a;

    invoke-direct {v1}, Lcn/nubia/videogenerator/codec/a;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/aa/b;->j:Lcn/nubia/videogenerator/codec/a;

    const/16 v2, 0xc

    .line 201
    invoke-virtual {v1, v2}, Lcn/nubia/videogenerator/codec/a;->c(I)V

    .line 202
    iget-object v1, p0, Lcn/nubia/camera/aa/b;->j:Lcn/nubia/videogenerator/codec/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/nubia/videogenerator/codec/a;->e(I)V

    .line 203
    iget-object v1, p0, Lcn/nubia/camera/aa/b;->j:Lcn/nubia/videogenerator/codec/a;

    const v3, 0xbb80

    invoke-virtual {v1, v3}, Lcn/nubia/videogenerator/codec/a;->a(I)V

    .line 204
    iget-object v1, p0, Lcn/nubia/camera/aa/b;->j:Lcn/nubia/videogenerator/codec/a;

    const v3, 0x17700

    iget v4, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcn/nubia/videogenerator/codec/a;->d(I)V

    .line 205
    iget-object v1, p0, Lcn/nubia/camera/aa/b;->j:Lcn/nubia/videogenerator/codec/a;

    invoke-virtual {v1, v2}, Lcn/nubia/videogenerator/codec/a;->b(I)V

    .line 206
    iget-object v1, p0, Lcn/nubia/camera/aa/b;->j:Lcn/nubia/videogenerator/codec/a;

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v1, v2}, Lcn/nubia/videogenerator/codec/a;->a(Ljava/lang/String;)V

    .line 208
    new-instance v1, Lcn/nubia/videogenerator/codec/h;

    invoke-direct {v1}, Lcn/nubia/videogenerator/codec/h;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/aa/b;->k:Lcn/nubia/videogenerator/codec/h;

    const v2, 0xb71b00

    .line 210
    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/nubia/videogenerator/codec/h;->b(I)V

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->k:Lcn/nubia/videogenerator/codec/h;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/h;->d(I)V

    .line 214
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->k:Lcn/nubia/videogenerator/codec/h;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/h;->a(I)V

    .line 215
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->k:Lcn/nubia/videogenerator/codec/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/h;->c(I)V

    .line 216
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->k:Lcn/nubia/videogenerator/codec/h;

    iget v2, p0, Lcn/nubia/camera/aa/b;->n:I

    iget v3, p0, Lcn/nubia/camera/aa/b;->o:I

    invoke-virtual {v0, v2, v3}, Lcn/nubia/videogenerator/codec/h;->a(II)V

    .line 217
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->k:Lcn/nubia/videogenerator/codec/h;

    const-string v2, "video/avc"

    invoke-virtual {v0, v2}, Lcn/nubia/videogenerator/codec/h;->a(Ljava/lang/String;)V

    const-string v0, "LivePhoto"

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioBitRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/aa/b;->j:Lcn/nubia/videogenerator/codec/a;

    invoke-virtual {v3}, Lcn/nubia/videogenerator/codec/a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " videoBitRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/aa/b;->k:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v3}, Lcn/nubia/videogenerator/codec/h;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Lcn/nubia/videogenerator/d/a;

    iget-object v2, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/videogenerator/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    .line 222
    iget-object v2, p0, Lcn/nubia/camera/aa/b;->h:Lcn/nubia/camera/aa/c;

    invoke-virtual {v0, v2, v1}, Lcn/nubia/videogenerator/d/a;->a(Lcn/nubia/videogenerator/b/c;I)V

    .line 223
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->j:Lcn/nubia/videogenerator/codec/a;

    iget-object v2, p0, Lcn/nubia/camera/aa/b;->k:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/d/a;->a(Lcn/nubia/videogenerator/codec/a;Lcn/nubia/videogenerator/codec/h;)V

    .line 224
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->b(I)V

    .line 225
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/d/a;->c()V

    .line 226
    sget-object v0, Lcn/nubia/camera/aa/b$c;->c:Lcn/nubia/camera/aa/b$c;

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcn/nubia/camera/aa/b;)Landroid/net/Uri;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/camera/aa/b;->m:Landroid/net/Uri;

    return-object p0
.end method

.method private h()V
    .locals 4

    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->i:Lcn/nubia/camera/v/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Lcn/nubia/camera/v/d;->a()V

    .line 265
    iput-object v1, p0, Lcn/nubia/camera/aa/b;->i:Lcn/nubia/camera/v/d;

    .line 267
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->h:Lcn/nubia/camera/aa/c;

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v0}, Lcn/nubia/camera/aa/c;->a()V

    .line 270
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    if-nez v0, :cond_2

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->h:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 272
    sget-object v0, Lcn/nubia/camera/aa/b$c;->a:Lcn/nubia/camera/aa/b$c;

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    .line 273
    monitor-exit p0

    return-void

    .line 277
    :cond_2
    iput-object v1, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    .line 278
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    const-string v1, "LivePhoto"

    const-string v2, "turnOffLivePhoto"

    .line 281
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :try_start_1
    invoke-virtual {v0}, Lcn/nubia/videogenerator/d/a;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LivePhoto"

    const-string v3, "stop LivePhotoGenerator fail"

    .line 285
    invoke-static {v2, v3, v1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/videogenerator/d/a;->d()V

    .line 289
    :cond_3
    monitor-enter p0

    .line 290
    :try_start_2
    iget-object v1, p0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    sget-object v2, Lcn/nubia/camera/aa/b$c;->d:Lcn/nubia/camera/aa/b$c;

    if-ne v1, v2, :cond_5

    .line 291
    iget-object v1, p0, Lcn/nubia/camera/aa/b;->l:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 294
    sget-object v1, Lcn/nubia/camera/aa/b$c;->f:Lcn/nubia/camera/aa/b$c;

    iput-object v1, p0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    .line 295
    iget-object v1, p0, Lcn/nubia/camera/aa/b;->l:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/videogenerator/d/a;Ljava/lang/String;)V

    goto :goto_1

    .line 299
    :cond_4
    sget-object v1, Lcn/nubia/camera/aa/b$c;->g:Lcn/nubia/camera/aa/b$c;

    iput-object v1, p0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    .line 300
    iput-object v0, p0, Lcn/nubia/camera/aa/b;->f:Lcn/nubia/videogenerator/d/a;

    goto :goto_1

    .line 304
    :cond_5
    sget-object v0, Lcn/nubia/camera/aa/b$c;->a:Lcn/nubia/camera/aa/b$c;

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    .line 306
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->c:Lcn/nubia/camera/aj/f;

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->r:Lcn/nubia/camera/aj/i;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/i;)V

    return-void

    :catchall_0
    move-exception v0

    .line 306
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 278
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private i()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LivePhoto"

    const-string v1, "exportLivephoto"

    .line 323
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    new-instance v1, Lcn/nubia/camera/aa/b$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aa/b$2;-><init>(Lcn/nubia/camera/aa/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->a(Lcn/nubia/videogenerator/a/d$a;)V

    .line 358
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    new-instance v1, Lcn/nubia/camera/aa/b$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aa/b$3;-><init>(Lcn/nubia/camera/aa/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->a(Lcn/nubia/videogenerator/d/a$a;)V

    .line 373
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    new-instance v1, Lcn/nubia/camera/aa/b$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aa/b$4;-><init>(Lcn/nubia/camera/aa/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->a(Lcn/nubia/videogenerator/a/d$b;)V

    .line 382
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    invoke-direct {p0}, Lcn/nubia/camera/aa/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->b(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->j:Lcn/nubia/videogenerator/codec/a;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->a(Lcn/nubia/videogenerator/codec/a;)V

    .line 384
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->k:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->a(Lcn/nubia/videogenerator/codec/h;)V

    .line 385
    invoke-direct {p0}, Lcn/nubia/camera/aa/b;->k()V

    .line 386
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/d/a;->f()V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/aa/b;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcn/nubia/camera/aa/b;->m()V

    return-void
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcn/nubia/camera/aa/b;->l:Ljava/lang/String;

    .line 392
    sget-object v0, Lcn/nubia/camera/aa/b$c;->c:Lcn/nubia/camera/aa/b$c;

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    .line 393
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->b:Lcn/nubia/camera/aa/b$a;

    sget-object v1, Lcn/nubia/camera/aa/b$a;->b:Lcn/nubia/camera/aa/b$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aa/b;->b:Lcn/nubia/camera/aa/b$a;

    sget-object v1, Lcn/nubia/camera/aa/b$a;->a:Lcn/nubia/camera/aa/b$a;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    sget-object v1, Lcn/nubia/camera/aa/b$c;->c:Lcn/nubia/camera/aa/b$c;

    if-ne v0, v1, :cond_1

    .line 395
    invoke-direct {p0}, Lcn/nubia/camera/aa/b;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    invoke-direct {p0}, Lcn/nubia/camera/aa/b;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/aa/b;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcn/nubia/camera/aa/b;->j()V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/aa/b;)Ljava/lang/Runnable;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/camera/aa/b;->u:Ljava/lang/Runnable;

    return-object p0
.end method

.method private k()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    .line 418
    iget-object v1, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;

    invoke-virtual {v1, v0}, Lcn/nubia/videogenerator/d/a;->c(I)V

    return-void
.end method

.method static synthetic l(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/aa/b$b;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/camera/aa/b;->q:Lcn/nubia/camera/aa/b$b;

    return-object p0
.end method

.method private l()Ljava/lang/String;
    .locals 3

    .line 422
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 423
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 428
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.temp7846891345.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 5

    .line 530
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->m:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    .line 534
    new-instance v1, Lcn/nubia/l/b/f;

    iget-object v2, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/aa/b;->m:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcn/nubia/l/b/f;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 535
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/aa/b;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcn/nubia/camera/aa/b;->i()V

    return-void
.end method

.method private n()Landroid/os/Handler;
    .locals 1

    .line 543
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->G()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/aa/a;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/camera/aa/b;->e:Lcn/nubia/camera/aa/a;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/aj/f;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/camera/aa/b;->c:Lcn/nubia/camera/aj/f;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/camera/aa/b;)Lcn/nubia/videogenerator/d/a;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/camera/aa/b;->f:Lcn/nubia/videogenerator/d/a;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    sget-object v1, Lcn/nubia/camera/aa/b$c;->a:Lcn/nubia/camera/aa/b$c;

    if-eq v0, v1, :cond_0

    const-string v0, "LivePhoto"

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error state in turnOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "LivePhoto"

    const-string v1, "turnOn"

    .line 108
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->h:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 110
    sget-object v0, Lcn/nubia/camera/aa/b$c;->b:Lcn/nubia/camera/aa/b$c;

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    .line 111
    new-instance v0, Lcn/nubia/camera/v/d;

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v2, Lcn/nubia/camera/v/b$a;->c:Lcn/nubia/camera/v/b$a;

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/v/d;-><init>(FLcn/nubia/camera/v/b$a;)V

    iput-object v0, p0, Lcn/nubia/camera/aa/b;->i:Lcn/nubia/camera/v/d;

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aa/b;->i:Lcn/nubia/camera/v/d;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 113
    invoke-virtual {p0}, Lcn/nubia/camera/aa/b;->f()V

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->i:Lcn/nubia/camera/v/d;

    new-instance v1, Lcn/nubia/camera/aa/b$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aa/b$1;-><init>(Lcn/nubia/camera/aa/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/v/d;->a(Lcn/nubia/camera/v/d$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcn/nubia/camera/aa/b$b;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/camera/aa/b;->q:Lcn/nubia/camera/aa/b$b;

    return-void
.end method

.method public b()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->t:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public c()Landroid/util/Size;
    .locals 1

    .line 244
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->p:Landroid/util/Size;

    return-object v0
.end method

.method public declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->g:Lcn/nubia/videogenerator/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->e:Lcn/nubia/camera/aa/a;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Lcn/nubia/camera/aa/a;->b()V

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcn/nubia/camera/aa/b;->e:Lcn/nubia/camera/aa/a;

    .line 257
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/aa/b;->h()V

    return-void
.end method

.method public f()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcn/nubia/camera/aa/b;->i:Lcn/nubia/camera/v/d;

    if-eqz v0, :cond_1

    const v0, 0x7f0f0251

    .line 312
    invoke-direct {p0, v0}, Lcn/nubia/camera/aa/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "pref_mirror_mode_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 314
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 315
    iget-object v1, p0, Lcn/nubia/camera/aa/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v1

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMirror isFacingFront:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isMirrorOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LivePhoto"

    invoke-static {v3, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v2, p0, Lcn/nubia/camera/aa/b;->i:Lcn/nubia/camera/v/d;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcn/nubia/camera/v/d;->a(Z)V

    :cond_1
    return-void
.end method
