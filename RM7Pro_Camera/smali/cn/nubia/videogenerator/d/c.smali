.class public Lcn/nubia/videogenerator/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/a/d;
.implements Lcn/nubia/videogenerator/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/d/c$a;,
        Lcn/nubia/videogenerator/d/c$b;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/videogenerator/e/a;

.field private b:Lcn/nubia/videogenerator/codec/f;

.field private c:Lcn/nubia/videogenerator/codec/f;

.field private d:Lcn/nubia/videogenerator/codec/e;

.field private e:Lcn/nubia/videogenerator/c/a;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:I

.field private i:Lcn/nubia/videogenerator/a/d$a;

.field private j:Lcn/nubia/videogenerator/a/d$c;

.field private k:Lcn/nubia/videogenerator/a/d$b;

.field private l:I

.field private m:J

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/Thread;

.field private p:Ljava/lang/Thread;

.field private q:Ljava/lang/String;

.field private r:Lcn/nubia/videogenerator/codec/g;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

    .line 28
    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->b:Lcn/nubia/videogenerator/codec/f;

    .line 29
    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->c:Lcn/nubia/videogenerator/codec/f;

    .line 30
    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->d:Lcn/nubia/videogenerator/codec/e;

    .line 31
    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->e:Lcn/nubia/videogenerator/c/a;

    .line 32
    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->f:Ljava/lang/String;

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcn/nubia/videogenerator/d/c;->h:I

    .line 38
    iput v1, p0, Lcn/nubia/videogenerator/d/c;->l:I

    const-wide/16 v1, 0x0

    .line 39
    iput-wide v1, p0, Lcn/nubia/videogenerator/d/c;->m:J

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/videogenerator/d/c;->n:Ljava/util/ArrayList;

    .line 41
    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->o:Ljava/lang/Thread;

    .line 42
    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->p:Ljava/lang/Thread;

    .line 43
    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->q:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->r:Lcn/nubia/videogenerator/codec/g;

    .line 47
    iput-wide p1, p0, Lcn/nubia/videogenerator/d/c;->m:J

    return-void
.end method

.method static synthetic a(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/codec/f;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/d/c;->b:Lcn/nubia/videogenerator/codec/f;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/codec/g;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/d/c;->r:Lcn/nubia/videogenerator/codec/g;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/codec/f;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/d/c;->c:Lcn/nubia/videogenerator/codec/f;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/codec/e;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/d/c;->d:Lcn/nubia/videogenerator/codec/e;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/c/a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/d/c;->e:Lcn/nubia/videogenerator/c/a;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->e:Lcn/nubia/videogenerator/c/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcn/nubia/videogenerator/c/a;->c()V

    .line 200
    iput-object v1, p0, Lcn/nubia/videogenerator/d/c;->e:Lcn/nubia/videogenerator/c/a;

    .line 203
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->d:Lcn/nubia/videogenerator/codec/e;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/e;->c()V

    .line 205
    iput-object v1, p0, Lcn/nubia/videogenerator/d/c;->d:Lcn/nubia/videogenerator/codec/e;

    .line 208
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->c:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/f;->e()V

    .line 210
    iput-object v1, p0, Lcn/nubia/videogenerator/d/c;->c:Lcn/nubia/videogenerator/codec/f;

    :cond_2
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 249
    iput-wide p1, p0, Lcn/nubia/videogenerator/d/c;->g:J

    return-void
.end method

.method public a(Landroid/media/MediaFormat;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/videogenerator/d/c;->h:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->n:Ljava/util/ArrayList;

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onOutputFormatChanged  format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/videogenerator/d/c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMakerGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/e/a;->a(Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/d$a;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcn/nubia/videogenerator/d/c;->i:Lcn/nubia/videogenerator/a/d$a;

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/d$c;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcn/nubia/videogenerator/d/c;->j:Lcn/nubia/videogenerator/a/d$c;

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/codec/a;)V
    .locals 4

    .line 167
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Lcn/nubia/videogenerator/c/a;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/c;->q:Ljava/lang/String;

    iget-wide v2, p0, Lcn/nubia/videogenerator/d/c;->m:J

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/videogenerator/c/a;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->e:Lcn/nubia/videogenerator/c/a;

    .line 171
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->e:Lcn/nubia/videogenerator/c/a;

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0}, Lcn/nubia/videogenerator/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Lcn/nubia/videogenerator/codec/e;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/c;->e:Lcn/nubia/videogenerator/c/a;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/c/a;->a()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/codec/e;-><init>(Landroid/media/MediaFormat;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->d:Lcn/nubia/videogenerator/codec/e;

    .line 174
    iget-object v1, p0, Lcn/nubia/videogenerator/d/c;->e:Lcn/nubia/videogenerator/c/a;

    invoke-virtual {v1, v0, p0}, Lcn/nubia/videogenerator/c/a;->a(Lcn/nubia/videogenerator/a/c;Lcn/nubia/videogenerator/a/g;)V

    .line 175
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->e:Lcn/nubia/videogenerator/c/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/c/a;->a()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "sample-rate"

    .line 176
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 175
    invoke-virtual {p1, v0}, Lcn/nubia/videogenerator/codec/a;->a(I)V

    .line 177
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->e:Lcn/nubia/videogenerator/c/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/c/a;->a()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "channel-count"

    .line 178
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 177
    invoke-virtual {p1, v0}, Lcn/nubia/videogenerator/codec/a;->b(I)V

    .line 179
    new-instance v0, Lcn/nubia/videogenerator/codec/f;

    invoke-direct {v0, p1}, Lcn/nubia/videogenerator/codec/f;-><init>(Lcn/nubia/videogenerator/codec/a;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->c:Lcn/nubia/videogenerator/codec/f;

    goto :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lcn/nubia/videogenerator/d/c;->e:Lcn/nubia/videogenerator/c/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcn/nubia/videogenerator/c/a;->a(Lcn/nubia/videogenerator/a/c;Lcn/nubia/videogenerator/a/g;)V

    .line 184
    :cond_2
    :goto_0
    iget p1, p0, Lcn/nubia/videogenerator/d/c;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/d/c;->h:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 192
    invoke-direct {p0}, Lcn/nubia/videogenerator/d/c;->e()V

    .line 193
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 188
    invoke-direct {p0}, Lcn/nubia/videogenerator/d/c;->e()V

    .line 189
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public a(Lcn/nubia/videogenerator/codec/c;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->d:Lcn/nubia/videogenerator/codec/e;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1, v0}, Lcn/nubia/videogenerator/codec/c;->a(Lcn/nubia/videogenerator/codec/d;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/videogenerator/codec/g;)V
    .locals 1

    .line 216
    iput-object p1, p0, Lcn/nubia/videogenerator/d/c;->r:Lcn/nubia/videogenerator/codec/g;

    .line 217
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->b:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/codec/f;->a(Lcn/nubia/videogenerator/codec/g;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/videogenerator/codec/h;)V
    .locals 5

    .line 149
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->b:Lcn/nubia/videogenerator/codec/f;

    if-nez v0, :cond_0

    .line 151
    :try_start_0
    new-instance v0, Lcn/nubia/videogenerator/codec/f;

    invoke-direct {v0, p1}, Lcn/nubia/videogenerator/codec/f;-><init>(Lcn/nubia/videogenerator/codec/h;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->b:Lcn/nubia/videogenerator/codec/f;

    const-wide/32 v1, 0xf4240

    .line 152
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

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->b:Lcn/nubia/videogenerator/codec/f;

    .line 156
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    :goto_0
    iget p1, p0, Lcn/nubia/videogenerator/d/c;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/d/c;->h:I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/e/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/videogenerator/e/a;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

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

    .line 296
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->k:Lcn/nubia/videogenerator/a/d$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 297
    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/a/d$b;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Lcn/nubia/videogenerator/codec/c;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->c:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/codec/f;->a(Lcn/nubia/videogenerator/codec/c;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 52
    iput-object p1, p0, Lcn/nubia/videogenerator/d/c;->f:Ljava/lang/String;

    .line 53
    new-instance p1, Lcn/nubia/videogenerator/e/a;

    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcn/nubia/videogenerator/e/a;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

    return-void
.end method

.method public c()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_1

    .line 64
    iget v1, p0, Lcn/nubia/videogenerator/d/c;->h:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/e/a;->b(I)V

    .line 65
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

    iget v1, p0, Lcn/nubia/videogenerator/d/c;->l:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/e/a;->a(I)V

    .line 66
    iget-wide v0, p0, Lcn/nubia/videogenerator/d/c;->g:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/videogenerator/e/a;->a(J)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/c;->i:Lcn/nubia/videogenerator/a/d$a;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/e/a;->a(Lcn/nubia/videogenerator/a/d$a;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/c;->j:Lcn/nubia/videogenerator/a/d$c;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/e/a;->a(Lcn/nubia/videogenerator/a/d$c;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->b:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/f;->a(Lcn/nubia/videogenerator/a/g;)V

    .line 75
    :cond_2
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->c:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/f;->a(Lcn/nubia/videogenerator/a/g;)V

    .line 78
    :cond_3
    new-instance v0, Lcn/nubia/videogenerator/d/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/d/c$b;-><init>(Lcn/nubia/videogenerator/d/c;Lcn/nubia/videogenerator/d/c$1;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->o:Ljava/lang/Thread;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    new-instance v0, Lcn/nubia/videogenerator/d/c$a;

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/d/c$a;-><init>(Lcn/nubia/videogenerator/d/c;Lcn/nubia/videogenerator/d/c$1;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/c;->p:Ljava/lang/Thread;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/videogenerator/d/c;->q:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->r:Lcn/nubia/videogenerator/codec/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/g;->c()V

    .line 120
    iput-object v1, p0, Lcn/nubia/videogenerator/d/c;->r:Lcn/nubia/videogenerator/codec/g;

    .line 122
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->e:Lcn/nubia/videogenerator/c/a;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Lcn/nubia/videogenerator/c/a;->c()V

    .line 124
    iput-object v1, p0, Lcn/nubia/videogenerator/d/c;->e:Lcn/nubia/videogenerator/c/a;

    .line 127
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->d:Lcn/nubia/videogenerator/codec/e;

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/e;->c()V

    .line 129
    iput-object v1, p0, Lcn/nubia/videogenerator/d/c;->d:Lcn/nubia/videogenerator/codec/e;

    .line 132
    :cond_2
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->c:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/f;->e()V

    .line 134
    iput-object v1, p0, Lcn/nubia/videogenerator/d/c;->c:Lcn/nubia/videogenerator/codec/f;

    .line 137
    :cond_3
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->b:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/f;->e()V

    .line 139
    iput-object v1, p0, Lcn/nubia/videogenerator/d/c;->b:Lcn/nubia/videogenerator/codec/f;

    .line 142
    :cond_4
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_5

    .line 143
    invoke-virtual {v0}, Lcn/nubia/videogenerator/e/a;->b()V

    .line 144
    iput-object v1, p0, Lcn/nubia/videogenerator/d/c;->a:Lcn/nubia/videogenerator/e/a;

    :cond_5
    return-void
.end method
