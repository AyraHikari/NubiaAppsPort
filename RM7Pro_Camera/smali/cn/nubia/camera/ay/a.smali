.class public Lcn/nubia/camera/ay/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ay/a$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# instance fields
.field private d:[I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcn/nubia/camera/ay/a$a;

.field private i:I

.field private j:I

.field private k:I

.field private l:[B

.field private m:Z

.field private n:Z

.field private o:J

.field private p:Ljava/lang/Thread;

.field private q:Landroid/util/Size;

.field private r:I

.field private s:Lcn/nubia/camera/ay/f;

.field private t:Landroid/os/Handler;

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/Thread;

.field private x:Ljava/lang/Object;

.field private y:Z

.field private z:Lcn/nubia/camera/k/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 45
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/ay/a;->a:[I

    const/16 v0, 0xb

    new-array v1, v0, [I

    .line 46
    fill-array-data v1, :array_1

    sput-object v1, Lcn/nubia/camera/ay/a;->b:[I

    new-array v0, v0, [I

    .line 48
    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/camera/ay/a;->c:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x5
        0x7
        0x9
        0xb
        0xd
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xc
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x4
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data
.end method

.method public constructor <init>(Lcn/nubia/camera/ay/f;Lcn/nubia/camera/ay/a$a;Landroid/os/Handler;)V
    .locals 5

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcn/nubia/camera/ay/a;->d:[I

    const/4 v1, 0x1

    .line 51
    iput v1, p0, Lcn/nubia/camera/ay/a;->e:I

    const/16 v2, 0x64

    .line 52
    iput v2, p0, Lcn/nubia/camera/ay/a;->f:I

    const/16 v2, 0xf

    .line 53
    iput v2, p0, Lcn/nubia/camera/ay/a;->g:I

    .line 54
    iput-object v0, p0, Lcn/nubia/camera/ay/a;->h:Lcn/nubia/camera/ay/a$a;

    const/4 v2, 0x0

    .line 57
    iput v2, p0, Lcn/nubia/camera/ay/a;->k:I

    .line 58
    iput-object v0, p0, Lcn/nubia/camera/ay/a;->l:[B

    .line 59
    iput-boolean v2, p0, Lcn/nubia/camera/ay/a;->m:Z

    .line 60
    iput-boolean v2, p0, Lcn/nubia/camera/ay/a;->n:Z

    const-wide/16 v3, 0x0

    .line 61
    iput-wide v3, p0, Lcn/nubia/camera/ay/a;->o:J

    .line 62
    iput-object v0, p0, Lcn/nubia/camera/ay/a;->p:Ljava/lang/Thread;

    .line 63
    iput-object v0, p0, Lcn/nubia/camera/ay/a;->q:Landroid/util/Size;

    .line 64
    iput v2, p0, Lcn/nubia/camera/ay/a;->r:I

    .line 65
    iput-object v0, p0, Lcn/nubia/camera/ay/a;->s:Lcn/nubia/camera/ay/f;

    .line 66
    iput-object v0, p0, Lcn/nubia/camera/ay/a;->t:Landroid/os/Handler;

    .line 67
    iput-boolean v2, p0, Lcn/nubia/camera/ay/a;->u:Z

    .line 68
    iput-boolean v2, p0, Lcn/nubia/camera/ay/a;->v:Z

    .line 69
    iput-object v0, p0, Lcn/nubia/camera/ay/a;->w:Ljava/lang/Thread;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ay/a;->x:Ljava/lang/Object;

    .line 71
    iput-boolean v1, p0, Lcn/nubia/camera/ay/a;->y:Z

    .line 93
    new-instance v0, Lcn/nubia/camera/ay/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ay/a$1;-><init>(Lcn/nubia/camera/ay/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ay/a;->z:Lcn/nubia/camera/k/z;

    .line 119
    iput-object p1, p0, Lcn/nubia/camera/ay/a;->s:Lcn/nubia/camera/ay/f;

    .line 120
    iput-object p2, p0, Lcn/nubia/camera/ay/a;->h:Lcn/nubia/camera/ay/a$a;

    .line 121
    iput-object p3, p0, Lcn/nubia/camera/ay/a;->t:Landroid/os/Handler;

    .line 122
    invoke-direct {p0}, Lcn/nubia/camera/ay/a;->h()V

    .line 123
    invoke-direct {p0, v1}, Lcn/nubia/camera/ay/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ay/a;J)J
    .locals 0

    .line 26
    iput-wide p1, p0, Lcn/nubia/camera/ay/a;->o:J

    return-wide p1
.end method

.method private a(I)V
    .locals 2

    .line 131
    iput p1, p0, Lcn/nubia/camera/ay/a;->e:I

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Trajectory"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ay/a;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/camera/ay/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ay/a;[B)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/camera/ay/a;->a([B)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ay/a;[BLjava/lang/Thread;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ay/a;->a([BLjava/lang/Thread;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/Thread;)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcn/nubia/camera/ay/a;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    iget v1, p0, Lcn/nubia/camera/ay/a;->r:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/camera/ay/a;->r:I

    .line 251
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Trajectory"

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": mSaveDataNum = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcn/nubia/camera/ay/a;->r:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; ret = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget p1, p0, Lcn/nubia/camera/ay/a;->r:I

    iget p2, p0, Lcn/nubia/camera/ay/a;->g:I

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcn/nubia/camera/ay/a;->k:I

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcn/nubia/camera/ay/a;->n:Z

    if-nez p1, :cond_1

    .line 254
    iput-object p3, p0, Lcn/nubia/camera/ay/a;->p:Ljava/lang/Thread;

    const/4 p1, 0x0

    .line 255
    iput p1, p0, Lcn/nubia/camera/ay/a;->r:I

    .line 256
    invoke-direct {p0}, Lcn/nubia/camera/ay/a;->i()V

    .line 257
    iget-object p1, p0, Lcn/nubia/camera/ay/a;->h:Lcn/nubia/camera/ay/a$a;

    .line 258
    invoke-interface {p1}, Lcn/nubia/camera/ay/a$a;->e()V

    .line 259
    invoke-virtual {p0}, Lcn/nubia/camera/ay/a;->a()I

    move-result p1

    if-eq p1, v2, :cond_0

    .line 260
    invoke-direct {p0}, Lcn/nubia/camera/ay/a;->j()V

    goto :goto_0

    :cond_0
    const-string p1, "Trajectory"

    .line 262
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onProSaveDataDone error! state is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcn/nubia/camera/ay/a;->a()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 251
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a([B)V
    .locals 2

    .line 202
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcn/nubia/camera/ay/a;->l:[B

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveYuvData mIsPreviewRunning = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcn/nubia/camera/ay/a;->m:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; mNumTaken = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/ay/a;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Trajectory"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-boolean p1, p0, Lcn/nubia/camera/ay/a;->n:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcn/nubia/camera/ay/a;->y:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance p1, Lcn/nubia/camera/ay/a$2;

    invoke-direct {p1, p0}, Lcn/nubia/camera/ay/a$2;-><init>(Lcn/nubia/camera/ay/a;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcn/nubia/camera/ay/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 220
    iget p1, p0, Lcn/nubia/camera/ay/a;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/camera/ay/a;->k:I

    .line 221
    iget v0, p0, Lcn/nubia/camera/ay/a;->g:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 222
    iput-boolean p1, p0, Lcn/nubia/camera/ay/a;->m:Z

    const/4 p1, 0x3

    .line 223
    invoke-direct {p0, p1}, Lcn/nubia/camera/ay/a;->a(I)V

    .line 225
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ay/a;->h:Lcn/nubia/camera/ay/a$a;

    iget v0, p0, Lcn/nubia/camera/ay/a;->k:I

    invoke-interface {p1, v0}, Lcn/nubia/camera/ay/a$a;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a([BLjava/lang/Thread;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "Trajectory"

    const-string p2, "saveYuvDate failed. Because yuv_data is null."

    .line 230
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 233
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 234
    iget v1, p0, Lcn/nubia/camera/ay/a;->g:I

    iget v2, p0, Lcn/nubia/camera/ay/a;->i:I

    iget v3, p0, Lcn/nubia/camera/ay/a;->j:I

    invoke-static {v0, v1, v2, v3, p1}, Lcn/nubia/algorithm/camera/TrajectoryAlgorithm;->SaveYuvData(IIII[B)I

    move-result p1

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcn/nubia/camera/ay/a;->d()V

    const-string v1, "Trajectory"

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save yuv filed; ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ay/a;->x:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 241
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/ay/a;->y:Z

    .line 242
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string v0, "Yuv Save finish"

    .line 245
    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/camera/ay/a;->a(Ljava/lang/String;ILjava/lang/Thread;)V

    return-void

    :catchall_0
    move-exception p1

    .line 242
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcn/nubia/camera/ay/a;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcn/nubia/camera/ay/a;->m:Z

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/ay/a;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcn/nubia/camera/ay/a;->y:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/ay/a;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcn/nubia/camera/ay/a;->o:J

    return-wide v0
.end method

.method static synthetic b(Lcn/nubia/camera/ay/a;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcn/nubia/camera/ay/a;->u:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/ay/a;)I
    .locals 0

    .line 26
    iget p0, p0, Lcn/nubia/camera/ay/a;->f:I

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/ay/a;)Ljava/lang/Object;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/camera/ay/a;->x:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/ay/a;)[B
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/camera/ay/a;->l:[B

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/ay/a;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcn/nubia/camera/ay/a;->n:Z

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/ay/a;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcn/nubia/camera/ay/a;->v:Z

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/ay/a;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/camera/ay/a;->t:Landroid/os/Handler;

    return-object p0
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcn/nubia/camera/ay/a;->m:Z

    .line 145
    iput v0, p0, Lcn/nubia/camera/ay/a;->k:I

    .line 146
    iput v0, p0, Lcn/nubia/camera/ay/a;->r:I

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/ay/a;)I
    .locals 0

    .line 26
    iget p0, p0, Lcn/nubia/camera/ay/a;->i:I

    return p0
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcn/nubia/camera/ay/a;->l:[B

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/ay/a;)I
    .locals 0

    .line 26
    iget p0, p0, Lcn/nubia/camera/ay/a;->j:I

    return p0
.end method

.method private j()V
    .locals 2

    const-string v0, "Trajectory"

    const-string v1, "preRegister"

    .line 268
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v1, Lcn/nubia/camera/ay/a$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ay/a$3;-><init>(Lcn/nubia/camera/ay/a;)V

    iput-object v1, p0, Lcn/nubia/camera/ay/a;->w:Ljava/lang/Thread;

    const-string v1, "PreRegister Start"

    .line 292
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcn/nubia/camera/ay/a;->w:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private k()V
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcn/nubia/camera/ay/a;->u:Z

    if-eqz v0, :cond_0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ay/a;->w:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/ay/a;)[I
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/camera/ay/a;->d:[I

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 140
    iget v0, p0, Lcn/nubia/camera/ay/a;->e:I

    return v0
.end method

.method protected a(Z)V
    .locals 2

    const-string v0, "Trajectory"

    const-string v1, "compositionConfirm"

    .line 314
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 315
    invoke-direct {p0, v0}, Lcn/nubia/camera/ay/a;->a(I)V

    if-nez p1, :cond_0

    .line 317
    sget-object v0, Lcn/nubia/camera/ay/a;->a:[I

    iput-object v0, p0, Lcn/nubia/camera/ay/a;->d:[I

    .line 319
    :cond_0
    new-instance v0, Lcn/nubia/camera/ay/a$4;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/ay/a$4;-><init>(Lcn/nubia/camera/ay/a;Z)V

    .line 333
    invoke-virtual {v0}, Lcn/nubia/camera/ay/a$4;->start()V

    return-void
.end method

.method public b()V
    .locals 6

    const/4 v0, 0x2

    .line 153
    invoke-direct {p0, v0}, Lcn/nubia/camera/ay/a;->a(I)V

    .line 154
    iget-object v1, p0, Lcn/nubia/camera/ay/a;->s:Lcn/nubia/camera/ay/f;

    invoke-virtual {v1}, Lcn/nubia/camera/ay/f;->e()V

    const/4 v1, 0x1

    .line 155
    iput-boolean v1, p0, Lcn/nubia/camera/ay/a;->m:Z

    .line 156
    iget-object v2, p0, Lcn/nubia/camera/ay/a;->s:Lcn/nubia/camera/ay/f;

    invoke-virtual {v2}, Lcn/nubia/camera/ay/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/ay/a;->q:Landroid/util/Size;

    .line 157
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, p0, Lcn/nubia/camera/ay/a;->i:I

    .line 158
    iget-object v2, p0, Lcn/nubia/camera/ay/a;->q:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, p0, Lcn/nubia/camera/ay/a;->j:I

    .line 159
    iget-object v2, p0, Lcn/nubia/camera/ay/a;->h:Lcn/nubia/camera/ay/a$a;

    invoke-interface {v2}, Lcn/nubia/camera/ay/a$a;->d()V

    .line 160
    iget-object v2, p0, Lcn/nubia/camera/ay/a;->s:Lcn/nubia/camera/ay/f;

    invoke-virtual {v2}, Lcn/nubia/camera/ay/f;->l()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Lcn/nubia/camera/d/d;

    sget-object v4, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    aput-object v4, v3, v1

    sget-object v1, Lcn/nubia/camera/d/b;->b:Lcn/nubia/camera/d/b;

    aput-object v1, v3, v0

    sget-object v0, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    const/4 v1, 0x3

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcn/nubia/camera/d/a;->a([Lcn/nubia/camera/d/d;)V

    .line 164
    iput v5, p0, Lcn/nubia/camera/ay/a;->k:I

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/ay/a;->s:Lcn/nubia/camera/ay/f;

    iget-object v1, p0, Lcn/nubia/camera/ay/a;->z:Lcn/nubia/camera/k/z;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcn/nubia/camera/ay/f;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    .line 166
    iput-boolean v5, p0, Lcn/nubia/camera/ay/a;->n:Z

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/ay/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/ay/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trajectory"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()I
    .locals 1

    .line 171
    iget v0, p0, Lcn/nubia/camera/ay/a;->g:I

    return v0
.end method

.method public d()V
    .locals 2

    const-string v0, "Trajectory"

    const-string v1, "reset"

    .line 176
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcn/nubia/camera/ay/a;->n:Z

    .line 178
    iget-object v1, p0, Lcn/nubia/camera/ay/a;->p:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lcn/nubia/camera/ay/a;->p:Ljava/lang/Thread;

    .line 182
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ay/a;->h()V

    .line 183
    invoke-direct {p0}, Lcn/nubia/camera/ay/a;->i()V

    .line 184
    invoke-direct {p0, v0}, Lcn/nubia/camera/ay/a;->a(I)V

    .line 185
    iget-object v0, p0, Lcn/nubia/camera/ay/a;->s:Lcn/nubia/camera/ay/f;

    invoke-virtual {v0}, Lcn/nubia/camera/ay/f;->H()V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "Trajectory"

    const-string v1, "savePicture"

    .line 196
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcn/nubia/camera/ay/a;->d()V

    .line 198
    iget-object v0, p0, Lcn/nubia/camera/ay/a;->h:Lcn/nubia/camera/ay/a$a;

    invoke-interface {v0}, Lcn/nubia/camera/ay/a$a;->p_()V

    return-void
.end method

.method protected f()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcn/nubia/camera/ay/a;->d:[I

    sget-object v1, Lcn/nubia/camera/ay/a;->a:[I

    if-ne v0, v1, :cond_0

    .line 301
    sget-object v0, Lcn/nubia/camera/ay/a;->b:[I

    iput-object v0, p0, Lcn/nubia/camera/ay/a;->d:[I

    goto :goto_0

    .line 302
    :cond_0
    sget-object v2, Lcn/nubia/camera/ay/a;->b:[I

    if-ne v0, v2, :cond_1

    .line 303
    sget-object v0, Lcn/nubia/camera/ay/a;->c:[I

    iput-object v0, p0, Lcn/nubia/camera/ay/a;->d:[I

    goto :goto_0

    .line 305
    :cond_1
    iput-object v1, p0, Lcn/nubia/camera/ay/a;->d:[I

    :goto_0
    return-void
.end method

.method protected g()V
    .locals 2

    const-string v0, "Trajectory"

    const-string v1, "onDestroy"

    .line 337
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcn/nubia/camera/ay/a;->v:Z

    .line 339
    invoke-direct {p0}, Lcn/nubia/camera/ay/a;->k()V

    return-void
.end method
