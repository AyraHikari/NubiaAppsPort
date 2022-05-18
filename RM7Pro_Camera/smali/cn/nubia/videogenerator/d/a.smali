.class public Lcn/nubia/videogenerator/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/a/d;
.implements Lcn/nubia/videogenerator/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/d/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "LivePhotoGenerator"


# instance fields
.field private A:Lcn/nubia/videogenerator/a/d$a;

.field private B:Lcn/nubia/videogenerator/a/d$b;

.field private C:Lcn/nubia/videogenerator/d/a$a;

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/net/Uri;

.field private e:I

.field private f:I

.field private g:J

.field private h:Lcn/nubia/videogenerator/codec/h;

.field private i:Lcn/nubia/videogenerator/b/d;

.field private j:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcn/nubia/videogenerator/b/a;

.field private l:Lcn/nubia/videogenerator/codec/f;

.field private m:Lcn/nubia/videogenerator/b/c;

.field private n:I

.field private o:Lcn/nubia/videogenerator/codec/a;

.field private p:Lcn/nubia/videogenerator/b/b;

.field private q:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcn/nubia/videogenerator/b/a;

.field private s:Lcn/nubia/videogenerator/codec/f;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcn/nubia/videogenerator/codec/c;

.field private v:Lcn/nubia/videogenerator/codec/c;

.field private w:Lcn/nubia/videogenerator/e/a;

.field private x:Ljava/lang/String;

.field private y:J

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcn/nubia/videogenerator/d/a;->b:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcn/nubia/videogenerator/d/a;->f:I

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->h:Lcn/nubia/videogenerator/codec/h;

    .line 46
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->i:Lcn/nubia/videogenerator/b/d;

    .line 47
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcn/nubia/videogenerator/d/a;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 48
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->k:Lcn/nubia/videogenerator/b/a;

    .line 49
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->l:Lcn/nubia/videogenerator/codec/f;

    .line 52
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->o:Lcn/nubia/videogenerator/codec/a;

    .line 53
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->p:Lcn/nubia/videogenerator/b/b;

    .line 54
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcn/nubia/videogenerator/d/a;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 55
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->r:Lcn/nubia/videogenerator/b/a;

    .line 56
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->s:Lcn/nubia/videogenerator/codec/f;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/videogenerator/d/a;->t:Ljava/util/ArrayList;

    .line 60
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->u:Lcn/nubia/videogenerator/codec/c;

    .line 61
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->v:Lcn/nubia/videogenerator/codec/c;

    .line 62
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;

    .line 63
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->x:Ljava/lang/String;

    .line 65
    iput v0, p0, Lcn/nubia/videogenerator/d/a;->z:I

    .line 76
    iput-object p1, p0, Lcn/nubia/videogenerator/d/a;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/nubia/videogenerator/d/a;)Lcn/nubia/videogenerator/codec/f;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/videogenerator/d/a;->s:Lcn/nubia/videogenerator/codec/f;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/videogenerator/d/a;)Lcn/nubia/videogenerator/codec/f;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/videogenerator/d/a;->l:Lcn/nubia/videogenerator/codec/f;

    return-object p0
.end method

.method private i()V
    .locals 11

    .line 180
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->r:Lcn/nubia/videogenerator/b/a;

    iget-wide v1, p0, Lcn/nubia/videogenerator/d/a;->g:J

    iget v3, p0, Lcn/nubia/videogenerator/d/a;->e:I

    div-int/lit8 v4, v3, 0x2

    int-to-long v4, v4

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const/4 v8, 0x2

    div-int/2addr v3, v8

    int-to-long v9, v3

    add-long/2addr v1, v9

    mul-long/2addr v1, v6

    invoke-virtual {v0, v4, v5, v1, v2}, Lcn/nubia/videogenerator/b/a;->a(JJ)V

    .line 182
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->r:Lcn/nubia/videogenerator/b/a;

    invoke-virtual {v0, v8}, Lcn/nubia/videogenerator/b/a;->a(I)V

    .line 183
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->r:Lcn/nubia/videogenerator/b/a;

    new-instance v1, Lcn/nubia/videogenerator/d/a$1;

    invoke-direct {v1, p0}, Lcn/nubia/videogenerator/d/a$1;-><init>(Lcn/nubia/videogenerator/d/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/a;->a(Lcn/nubia/videogenerator/b/a$b;)V

    .line 193
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->r:Lcn/nubia/videogenerator/b/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/a;->a()V

    return-void
.end method

.method private j()V
    .locals 10

    .line 197
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->k:Lcn/nubia/videogenerator/b/a;

    iget-wide v1, p0, Lcn/nubia/videogenerator/d/a;->g:J

    iget v3, p0, Lcn/nubia/videogenerator/d/a;->e:I

    div-int/lit8 v4, v3, 0x2

    int-to-long v4, v4

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    div-int/lit8 v3, v3, 0x2

    int-to-long v8, v3

    add-long/2addr v1, v8

    mul-long/2addr v1, v6

    invoke-virtual {v0, v4, v5, v1, v2}, Lcn/nubia/videogenerator/b/a;->a(JJ)V

    .line 199
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->k:Lcn/nubia/videogenerator/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/a;->a(I)V

    .line 200
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->k:Lcn/nubia/videogenerator/b/a;

    new-instance v1, Lcn/nubia/videogenerator/d/a$2;

    invoke-direct {v1, p0}, Lcn/nubia/videogenerator/d/a$2;-><init>(Lcn/nubia/videogenerator/d/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/a;->a(Lcn/nubia/videogenerator/b/a$b;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->k:Lcn/nubia/videogenerator/b/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/a;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaFormat;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/videogenerator/d/a;->z:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->t:Ljava/util/ArrayList;

    .line 245
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/e/a;->a(Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/nubia/videogenerator/d/a;->d:Landroid/net/Uri;

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/d$a;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcn/nubia/videogenerator/d/a;->A:Lcn/nubia/videogenerator/a/d$a;

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/d$b;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcn/nubia/videogenerator/d/a;->B:Lcn/nubia/videogenerator/a/d$b;

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/b/c;I)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcn/nubia/videogenerator/d/a;->m:Lcn/nubia/videogenerator/b/c;

    .line 93
    iput p2, p0, Lcn/nubia/videogenerator/d/a;->n:I

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/codec/a;)V
    .locals 1

    .line 281
    :try_start_0
    new-instance v0, Lcn/nubia/videogenerator/codec/f;

    invoke-direct {v0, p1}, Lcn/nubia/videogenerator/codec/f;-><init>(Lcn/nubia/videogenerator/codec/a;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->s:Lcn/nubia/videogenerator/codec/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 286
    :goto_0
    iget p1, p0, Lcn/nubia/videogenerator/d/a;->z:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/d/a;->z:I

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/codec/a;Lcn/nubia/videogenerator/codec/h;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcn/nubia/videogenerator/d/a;->o:Lcn/nubia/videogenerator/codec/a;

    .line 98
    iput-object p2, p0, Lcn/nubia/videogenerator/d/a;->h:Lcn/nubia/videogenerator/codec/h;

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/codec/h;)V
    .locals 5

    .line 266
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->l:Lcn/nubia/videogenerator/codec/f;

    if-nez v0, :cond_0

    .line 268
    :try_start_0
    new-instance v0, Lcn/nubia/videogenerator/codec/f;

    invoke-direct {v0, p1}, Lcn/nubia/videogenerator/codec/f;-><init>(Lcn/nubia/videogenerator/codec/h;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->l:Lcn/nubia/videogenerator/codec/f;

    const-wide/32 v1, 0xf4240

    .line 269
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/h;->c()I

    move-result p1

    int-to-long v3, p1

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/codec/f;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 274
    :goto_0
    iget p1, p0, Lcn/nubia/videogenerator/d/a;->z:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/d/a;->z:I

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/videogenerator/d/a$a;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcn/nubia/videogenerator/d/a;->C:Lcn/nubia/videogenerator/d/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/e/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/videogenerator/e/a;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/e/a;->a()Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->B:Lcn/nubia/videogenerator/a/d$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/a/d$b;->a(I)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcn/nubia/videogenerator/d/a;->e:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 291
    iput-object p1, p0, Lcn/nubia/videogenerator/d/a;->x:Ljava/lang/String;

    .line 293
    :try_start_0
    new-instance p1, Lcn/nubia/videogenerator/e/a;

    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->x:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcn/nubia/videogenerator/e/a;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 296
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 106
    sget-object v0, Lcn/nubia/videogenerator/d/a;->a:Ljava/lang/String;

    const-string v1, "turn on"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Lcn/nubia/videogenerator/b/d;

    invoke-direct {v0}, Lcn/nubia/videogenerator/b/d;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->i:Lcn/nubia/videogenerator/b/d;

    .line 108
    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->h:Lcn/nubia/videogenerator/codec/h;

    iget-object v2, p0, Lcn/nubia/videogenerator/d/a;->m:Lcn/nubia/videogenerator/b/c;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/b/d;->a(Lcn/nubia/videogenerator/codec/h;Lcn/nubia/videogenerator/b/c;)V

    .line 109
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->i:Lcn/nubia/videogenerator/b/d;

    iget v1, p0, Lcn/nubia/videogenerator/d/a;->e:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/d;->a(I)V

    .line 110
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->i:Lcn/nubia/videogenerator/b/d;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/d;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 111
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->i:Lcn/nubia/videogenerator/b/d;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/d;->a()V

    .line 113
    new-instance v0, Lcn/nubia/videogenerator/b/b;

    invoke-direct {v0}, Lcn/nubia/videogenerator/b/b;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->p:Lcn/nubia/videogenerator/b/b;

    .line 114
    iget v1, p0, Lcn/nubia/videogenerator/d/a;->n:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/b;->a(I)V

    .line 115
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->p:Lcn/nubia/videogenerator/b/b;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->o:Lcn/nubia/videogenerator/codec/a;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/b;->a(Lcn/nubia/videogenerator/codec/a;)V

    .line 116
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->p:Lcn/nubia/videogenerator/b/b;

    iget v1, p0, Lcn/nubia/videogenerator/d/a;->e:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/b;->b(I)V

    .line 117
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->p:Lcn/nubia/videogenerator/b/b;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/b;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 118
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->p:Lcn/nubia/videogenerator/b/b;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/b;->a()V

    .line 120
    new-instance v0, Lcn/nubia/videogenerator/codec/c;

    invoke-direct {v0}, Lcn/nubia/videogenerator/codec/c;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->u:Lcn/nubia/videogenerator/codec/c;

    .line 121
    new-instance v0, Lcn/nubia/videogenerator/codec/c;

    invoke-direct {v0}, Lcn/nubia/videogenerator/codec/c;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->v:Lcn/nubia/videogenerator/codec/c;

    .line 122
    new-instance v0, Lcn/nubia/videogenerator/b/a;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->o:Lcn/nubia/videogenerator/codec/a;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/b/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->r:Lcn/nubia/videogenerator/b/a;

    .line 123
    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/a;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 124
    new-instance v0, Lcn/nubia/videogenerator/b/a;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->h:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/h;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/videogenerator/d/a;->h:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/codec/h;->f()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/videogenerator/d/a;->h:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v3}, Lcn/nubia/videogenerator/codec/h;->g()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/videogenerator/b/a;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->k:Lcn/nubia/videogenerator/b/a;

    .line 125
    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/b/a;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    const/4 v0, 0x1

    .line 126
    iput v0, p0, Lcn/nubia/videogenerator/d/a;->b:I

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcn/nubia/videogenerator/d/a;->f:I

    return-void
.end method

.method public d()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 130
    iput-wide v0, p0, Lcn/nubia/videogenerator/d/a;->g:J

    .line 131
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->i:Lcn/nubia/videogenerator/b/d;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/d;->b()V

    .line 132
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->p:Lcn/nubia/videogenerator/b/b;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/b;->b()V

    .line 133
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->p:Lcn/nubia/videogenerator/b/b;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/b;->c()V

    .line 134
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 135
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->u:Lcn/nubia/videogenerator/codec/c;

    .line 137
    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->v:Lcn/nubia/videogenerator/codec/c;

    .line 138
    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->r:Lcn/nubia/videogenerator/b/a;

    .line 139
    iput-object v0, p0, Lcn/nubia/videogenerator/d/a;->k:Lcn/nubia/videogenerator/b/a;

    const/4 v0, 0x2

    .line 140
    iput v0, p0, Lcn/nubia/videogenerator/d/a;->b:I

    return-void
.end method

.method public e()Z
    .locals 2

    .line 144
    iget v0, p0, Lcn/nubia/videogenerator/d/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f()V
    .locals 4

    .line 148
    iget v0, p0, Lcn/nubia/videogenerator/d/a;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/videogenerator/d/a;->g:J

    .line 152
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_2

    .line 153
    iget v1, p0, Lcn/nubia/videogenerator/d/a;->z:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/e/a;->b(I)V

    .line 154
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;

    iget v1, p0, Lcn/nubia/videogenerator/d/a;->f:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/e/a;->a(I)V

    .line 155
    iget-wide v0, p0, Lcn/nubia/videogenerator/d/a;->y:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 156
    iget-object v2, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/videogenerator/e/a;->a(J)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->A:Lcn/nubia/videogenerator/a/d$a;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/e/a;->a(Lcn/nubia/videogenerator/a/d$a;)V

    .line 160
    :cond_2
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->u:Lcn/nubia/videogenerator/codec/c;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->s:Lcn/nubia/videogenerator/codec/f;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/c;->a(Lcn/nubia/videogenerator/a/f;)V

    .line 161
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->v:Lcn/nubia/videogenerator/codec/c;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->l:Lcn/nubia/videogenerator/codec/f;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/c;->a(Lcn/nubia/videogenerator/a/f;)V

    .line 162
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->u:Lcn/nubia/videogenerator/codec/c;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->r:Lcn/nubia/videogenerator/b/a;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/c;->a(Lcn/nubia/videogenerator/codec/d;)V

    .line 163
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->v:Lcn/nubia/videogenerator/codec/c;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->k:Lcn/nubia/videogenerator/b/a;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/c;->a(Lcn/nubia/videogenerator/codec/d;)V

    .line 165
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->l:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/f;->a(Lcn/nubia/videogenerator/a/g;)V

    .line 168
    :cond_3
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->s:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_4

    .line 169
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/f;->a(Lcn/nubia/videogenerator/a/g;)V

    .line 171
    :cond_4
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->l:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_5

    .line 172
    invoke-direct {p0}, Lcn/nubia/videogenerator/d/a;->j()V

    .line 174
    :cond_5
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->s:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_6

    .line 175
    invoke-direct {p0}, Lcn/nubia/videogenerator/d/a;->i()V

    :cond_6
    return-void
.end method

.method public g()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/a;->d:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/videogenerator/d/a;->x:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/nubia/h/a;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->C:Lcn/nubia/videogenerator/d/a$a;

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0}, Lcn/nubia/videogenerator/d/a$a;->a()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->l:Lcn/nubia/videogenerator/codec/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/f;->e()V

    .line 304
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->l:Lcn/nubia/videogenerator/codec/f;

    .line 306
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->k:Lcn/nubia/videogenerator/b/a;

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/a;->b()V

    .line 309
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->s:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/f;->e()V

    .line 311
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->s:Lcn/nubia/videogenerator/codec/f;

    .line 313
    :cond_2
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->r:Lcn/nubia/videogenerator/b/a;

    if-eqz v0, :cond_3

    .line 314
    invoke-virtual {v0}, Lcn/nubia/videogenerator/b/a;->b()V

    .line 317
    :cond_3
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_4

    .line 318
    invoke-virtual {v0}, Lcn/nubia/videogenerator/e/a;->b()V

    const/4 v0, 0x0

    .line 319
    iput v0, p0, Lcn/nubia/videogenerator/d/a;->z:I

    .line 320
    iput-object v1, p0, Lcn/nubia/videogenerator/d/a;->w:Lcn/nubia/videogenerator/e/a;

    .line 322
    :cond_4
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 323
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    return-void
.end method
