.class public Lcn/nubia/videogenerator/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/a/b;
.implements Lcn/nubia/videogenerator/a/d;
.implements Lcn/nubia/videogenerator/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/d/b$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Landroid/content/Context;

.field private a:Lcn/nubia/videogenerator/e/a;

.field private b:Lcn/nubia/videogenerator/codec/f;

.field private c:Lcn/nubia/videogenerator/codec/e;

.field private d:Lcn/nubia/videogenerator/c/b;

.field private e:Landroid/net/Uri;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcn/nubia/videogenerator/a/d$a;

.field private q:Lcn/nubia/videogenerator/a/d$c;

.field private r:Lcn/nubia/videogenerator/a/d$b;

.field private s:I

.field private t:J

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/Thread;

.field private w:Lcn/nubia/videogenerator/codec/c;

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;I)V
    .locals 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    .line 31
    iput-object v0, p0, Lcn/nubia/videogenerator/d/b;->b:Lcn/nubia/videogenerator/codec/f;

    .line 32
    iput-object v0, p0, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    .line 33
    iput-object v0, p0, Lcn/nubia/videogenerator/d/b;->d:Lcn/nubia/videogenerator/c/b;

    .line 34
    iput-object v0, p0, Lcn/nubia/videogenerator/d/b;->e:Landroid/net/Uri;

    const-wide/16 v1, 0x0

    .line 35
    iput-wide v1, p0, Lcn/nubia/videogenerator/d/b;->f:J

    .line 36
    iput-wide v1, p0, Lcn/nubia/videogenerator/d/b;->g:J

    const/4 v3, 0x0

    .line 39
    iput v3, p0, Lcn/nubia/videogenerator/d/b;->j:I

    const/16 v4, 0x1e

    .line 42
    iput v4, p0, Lcn/nubia/videogenerator/d/b;->m:I

    const/16 v4, 0x1e0

    .line 43
    iput v4, p0, Lcn/nubia/videogenerator/d/b;->n:I

    const/16 v4, 0x10

    .line 44
    iput v4, p0, Lcn/nubia/videogenerator/d/b;->o:I

    .line 48
    iput v3, p0, Lcn/nubia/videogenerator/d/b;->s:I

    .line 49
    iput-wide v1, p0, Lcn/nubia/videogenerator/d/b;->t:J

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/videogenerator/d/b;->u:Ljava/util/ArrayList;

    .line 51
    iput-object v0, p0, Lcn/nubia/videogenerator/d/b;->v:Ljava/lang/Thread;

    .line 53
    iput-boolean v3, p0, Lcn/nubia/videogenerator/d/b;->x:Z

    .line 54
    iput-boolean v3, p0, Lcn/nubia/videogenerator/d/b;->y:Z

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/b;->z:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/b;->A:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcn/nubia/videogenerator/d/b;->B:Landroid/content/Context;

    .line 61
    iput p4, p0, Lcn/nubia/videogenerator/d/b;->n:I

    .line 62
    invoke-direct {p0, p2, p3}, Lcn/nubia/videogenerator/d/b;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/videogenerator/d/b;)Lcn/nubia/videogenerator/codec/f;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/videogenerator/d/b;->b:Lcn/nubia/videogenerator/codec/f;

    return-object p0
.end method

.method private a(J)V
    .locals 0

    .line 274
    iput-wide p1, p0, Lcn/nubia/videogenerator/d/b;->f:J

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3

    .line 84
    iput-object p1, p0, Lcn/nubia/videogenerator/d/b;->e:Landroid/net/Uri;

    .line 85
    new-instance p1, Lcn/nubia/videogenerator/e/a;

    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->B:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/b;->e:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/videogenerator/e/a;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    iput-object p1, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "mt"

    .line 165
    :try_start_0
    new-instance v0, Lcn/nubia/videogenerator/c/b;

    iget-object v4, v1, Lcn/nubia/videogenerator/d/b;->B:Landroid/content/Context;

    invoke-direct {v0, v4, v2}, Lcn/nubia/videogenerator/c/b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, v1, Lcn/nubia/videogenerator/d/b;->d:Lcn/nubia/videogenerator/c/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 172
    :goto_0
    iget-object v0, v1, Lcn/nubia/videogenerator/d/b;->d:Lcn/nubia/videogenerator/c/b;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/c/b;->c()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v4, "durationUs"

    .line 173
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcn/nubia/videogenerator/d/b;->t:J

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "rotation-degrees"

    .line 175
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcn/nubia/videogenerator/d/b;->s:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 177
    :catch_1
    iput v4, v1, Lcn/nubia/videogenerator/d/b;->s:I

    :goto_1
    :try_start_2
    const-string v5, "frame-rate"

    .line 180
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcn/nubia/videogenerator/d/b;->m:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const/16 v5, 0x1e

    .line 182
    iput v5, v1, Lcn/nubia/videogenerator/d/b;->m:I

    :goto_2
    :try_start_3
    const-string v5, "width"

    .line 185
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcn/nubia/videogenerator/d/b;->k:I

    const-string v5, "height"

    .line 186
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcn/nubia/videogenerator/d/b;->l:I

    .line 187
    iget-wide v5, v1, Lcn/nubia/videogenerator/d/b;->t:J

    const-wide/16 v7, 0x4

    div-long v9, v5, v7

    iput-wide v9, v1, Lcn/nubia/videogenerator/d/b;->h:J

    const-wide/16 v9, 0x3

    mul-long/2addr v5, v9

    .line 188
    div-long/2addr v5, v7

    iput-wide v5, v1, Lcn/nubia/videogenerator/d/b;->i:J

    .line 189
    iget v5, v1, Lcn/nubia/videogenerator/d/b;->n:I

    iget v6, v1, Lcn/nubia/videogenerator/d/b;->m:I

    div-int/2addr v5, v6

    iput v5, v1, Lcn/nubia/videogenerator/d/b;->o:I

    const-string v5, "color-format"

    const/16 v6, 0x15

    .line 191
    invoke-virtual {v0, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 194
    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 196
    iget-object v5, v1, Lcn/nubia/videogenerator/d/b;->B:Landroid/content/Context;

    invoke-static {v5, v2}, Lcn/nubia/videogenerator/a/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcn/nubia/videogenerator/a/h$a;

    move-result-object v2

    .line 197
    invoke-static {v2}, Lcn/nubia/videogenerator/a/h;->a(Lcn/nubia/videogenerator/a/h$a;)Z

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    const-string v8, "SlomoGenerator"

    if-eqz v5, :cond_0

    :try_start_4
    const-string v5, " isMtkHigh "

    .line 198
    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto :goto_3

    :cond_0
    move v5, v4

    .line 201
    :goto_3
    invoke-static {v2}, Lcn/nubia/videogenerator/a/h;->b(Lcn/nubia/videogenerator/a/h$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " isMtkSlow "

    .line 202
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    goto :goto_4

    :cond_1
    move v2, v4

    move v9, v7

    goto :goto_5

    :cond_2
    move v2, v4

    :goto_4
    move v5, v2

    move v9, v5

    .line 207
    :goto_5
    new-instance v8, Lcn/nubia/videogenerator/codec/e;

    invoke-direct {v8, v0}, Lcn/nubia/videogenerator/codec/e;-><init>(Landroid/media/MediaFormat;)V

    iput-object v8, v1, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    .line 208
    iget v10, v1, Lcn/nubia/videogenerator/d/b;->o:I

    invoke-virtual {v8, v10}, Lcn/nubia/videogenerator/codec/e;->a(I)V

    .line 209
    iget-object v11, v1, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    const/4 v12, 0x1

    iget-wide v13, v1, Lcn/nubia/videogenerator/d/b;->h:J

    move/from16 p1, v5

    iget-wide v4, v1, Lcn/nubia/videogenerator/d/b;->i:J

    move-wide v15, v4

    invoke-virtual/range {v11 .. v16}, Lcn/nubia/videogenerator/codec/e;->a(ZJJ)V

    .line 210
    iget-object v4, v1, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    invoke-virtual {v4, v7}, Lcn/nubia/videogenerator/codec/e;->a(Z)V

    .line 211
    iget-object v4, v1, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    invoke-virtual {v4, v7}, Lcn/nubia/videogenerator/codec/e;->b(Z)V

    .line 212
    iget-object v8, v1, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    iget v10, v1, Lcn/nubia/videogenerator/d/b;->s:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcn/nubia/videogenerator/codec/e;->a(IIZLandroid/graphics/RectF;I)V

    .line 213
    invoke-direct/range {p0 .. p0}, Lcn/nubia/videogenerator/d/b;->g()V

    .line 215
    new-instance v4, Lcn/nubia/videogenerator/codec/h;

    invoke-direct {v4}, Lcn/nubia/videogenerator/codec/h;-><init>()V

    const-string v5, "mime"

    .line 216
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/nubia/videogenerator/codec/h;->a(Ljava/lang/String;)V

    .line 217
    iget v0, v1, Lcn/nubia/videogenerator/d/b;->m:I

    invoke-virtual {v4, v0}, Lcn/nubia/videogenerator/codec/h;->a(I)V

    .line 218
    iget v0, v1, Lcn/nubia/videogenerator/d/b;->k:I

    iget v5, v1, Lcn/nubia/videogenerator/d/b;->l:I

    invoke-virtual {v4, v0, v5}, Lcn/nubia/videogenerator/codec/h;->a(II)V

    .line 220
    invoke-virtual {v4, v6}, Lcn/nubia/videogenerator/codec/h;->d(I)V

    .line 222
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    invoke-virtual {v4, v2}, Lcn/nubia/videogenerator/codec/h;->b(Z)V

    move/from16 v5, p1

    .line 224
    invoke-virtual {v4, v5}, Lcn/nubia/videogenerator/codec/h;->a(Z)V

    goto :goto_6

    :cond_3
    move/from16 v5, p1

    .line 226
    :goto_6
    invoke-virtual {v4, v5}, Lcn/nubia/videogenerator/codec/h;->a(Z)V

    .line 227
    new-instance v0, Lcn/nubia/videogenerator/codec/f;

    invoke-direct {v0, v4}, Lcn/nubia/videogenerator/codec/f;-><init>(Lcn/nubia/videogenerator/codec/h;)V

    iput-object v0, v1, Lcn/nubia/videogenerator/d/b;->b:Lcn/nubia/videogenerator/codec/f;

    const/4 v2, 0x0

    .line 228
    invoke-virtual {v0, v2}, Lcn/nubia/videogenerator/codec/f;->a(Z)V

    .line 229
    iget-object v0, v1, Lcn/nubia/videogenerator/d/b;->b:Lcn/nubia/videogenerator/codec/f;

    const-wide/32 v2, 0xf4240

    iget v4, v1, Lcn/nubia/videogenerator/d/b;->m:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcn/nubia/videogenerator/codec/f;->a(J)V

    .line 230
    iget-object v0, v1, Lcn/nubia/videogenerator/d/b;->d:Lcn/nubia/videogenerator/c/b;

    iget-object v2, v1, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    invoke-virtual {v0, v2, v1, v1}, Lcn/nubia/videogenerator/c/b;->a(Lcn/nubia/videogenerator/a/c;Lcn/nubia/videogenerator/a/g;Lcn/nubia/videogenerator/a/b;)V

    .line 231
    iget-object v8, v1, Lcn/nubia/videogenerator/d/b;->d:Lcn/nubia/videogenerator/c/b;

    const-wide/16 v9, 0x0

    iget-wide v2, v1, Lcn/nubia/videogenerator/d/b;->t:J

    const-wide/16 v4, 0x3e8

    div-long v11, v2, v4

    div-long v13, v2, v4

    invoke-virtual/range {v8 .. v14}, Lcn/nubia/videogenerator/c/b;->a(JJJ)V

    .line 232
    iget-object v0, v1, Lcn/nubia/videogenerator/d/b;->d:Lcn/nubia/videogenerator/c/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/videogenerator/c/b;->a(I)V

    .line 233
    iget-object v0, v1, Lcn/nubia/videogenerator/d/b;->d:Lcn/nubia/videogenerator/c/b;

    invoke-virtual {v0, v2}, Lcn/nubia/videogenerator/c/b;->a(Z)V

    .line 234
    iget-object v0, v1, Lcn/nubia/videogenerator/d/b;->d:Lcn/nubia/videogenerator/c/b;

    invoke-virtual {v0, v2}, Lcn/nubia/videogenerator/c/b;->b(Z)V

    .line 236
    new-instance v0, Lcn/nubia/videogenerator/codec/c;

    invoke-direct {v0}, Lcn/nubia/videogenerator/codec/c;-><init>()V

    iput-object v0, v1, Lcn/nubia/videogenerator/d/b;->w:Lcn/nubia/videogenerator/codec/c;

    .line 237
    invoke-direct {v1, v0}, Lcn/nubia/videogenerator/d/b;->a(Lcn/nubia/videogenerator/codec/c;)V

    .line 238
    iget-object v0, v1, Lcn/nubia/videogenerator/d/b;->w:Lcn/nubia/videogenerator/codec/c;

    invoke-direct {v1, v0}, Lcn/nubia/videogenerator/d/b;->b(Lcn/nubia/videogenerator/codec/c;)V

    move-object/from16 v2, p2

    .line 239
    invoke-direct {v1, v2}, Lcn/nubia/videogenerator/d/b;->a(Landroid/net/Uri;)V

    .line 240
    iget-wide v2, v1, Lcn/nubia/videogenerator/d/b;->t:J

    iget v0, v1, Lcn/nubia/videogenerator/d/b;->o:I

    mul-int/lit8 v0, v0, 0x2

    int-to-long v4, v0

    div-long v4, v2, v4

    const-wide/16 v8, 0x2

    mul-long/2addr v2, v8

    add-long/2addr v4, v2

    .line 241
    invoke-direct {v1, v4, v5}, Lcn/nubia/videogenerator/d/b;->a(J)V

    .line 242
    iget v0, v1, Lcn/nubia/videogenerator/d/b;->j:I

    add-int/2addr v0, v7

    iput v0, v1, Lcn/nubia/videogenerator/d/b;->j:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    return-void
.end method

.method private a(Lcn/nubia/videogenerator/codec/c;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1, v0}, Lcn/nubia/videogenerator/codec/c;->a(Lcn/nubia/videogenerator/codec/d;)V

    :cond_0
    return-void
.end method

.method private b(Lcn/nubia/videogenerator/codec/c;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->b:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/codec/f;->a(Lcn/nubia/videogenerator/codec/c;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/videogenerator/d/b;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcn/nubia/videogenerator/d/b;->x:Z

    return p0
.end method

.method static synthetic c(Lcn/nubia/videogenerator/d/b;)Lcn/nubia/videogenerator/codec/e;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/videogenerator/d/b;)Lcn/nubia/videogenerator/c/b;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/videogenerator/d/b;->d:Lcn/nubia/videogenerator/c/b;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcn/nubia/videogenerator/d/b;->y:Z

    if-eqz v0, :cond_1

    .line 71
    iget v0, p0, Lcn/nubia/videogenerator/d/b;->k:I

    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 73
    iput v0, p0, Lcn/nubia/videogenerator/d/b;->k:I

    .line 75
    :cond_0
    iget v0, p0, Lcn/nubia/videogenerator/d/b;->l:I

    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 77
    iput v0, p0, Lcn/nubia/videogenerator/d/b;->l:I

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mInfo.mVideoWidth= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/videogenerator/d/b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInfo.mVideoHeight= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/videogenerator/d/b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlomoGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaFormat;)V
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onOutputFormatChanged  format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlomoGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/e/a;->a(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/d$a;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcn/nubia/videogenerator/d/b;->p:Lcn/nubia/videogenerator/a/d$a;

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/d$b;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcn/nubia/videogenerator/d/b;->r:Lcn/nubia/videogenerator/a/d$b;

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/d$c;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcn/nubia/videogenerator/d/b;->q:Lcn/nubia/videogenerator/a/d$c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/e/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 5

    .line 294
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->z:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/videogenerator/d/b;->x:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/videogenerator/e/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "video/"

    .line 296
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lcn/nubia/videogenerator/d/b;->g:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 298
    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, p0, Lcn/nubia/videogenerator/d/b;->g:J

    .line 299
    iget-object v1, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    invoke-virtual {v1, p1, p2, p3}, Lcn/nubia/videogenerator/e/a;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 301
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 312
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcn/nubia/videogenerator/e/a;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(I)Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->b:Lcn/nubia/videogenerator/codec/f;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/codec/f;->a(I)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    const-string v0, "SlomoGenerator"

    const-string v1, " encoder error"

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->r:Lcn/nubia/videogenerator/a/d$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/a/d$b;->a(I)V

    return-void
.end method

.method public c()Z
    .locals 4

    .line 326
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/d/b;->b:Lcn/nubia/videogenerator/codec/f;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    if-eqz v3, :cond_1

    .line 328
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 329
    :cond_1
    iget-object v3, p0, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    if-eqz v3, :cond_2

    .line 330
    invoke-virtual {v3}, Lcn/nubia/videogenerator/codec/e;->a()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_2
    if-eqz v1, :cond_3

    .line 332
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/f;->a()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 334
    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/videogenerator/d/b;->x:Z

    if-nez v1, :cond_1

    .line 91
    iget v1, p0, Lcn/nubia/videogenerator/d/b;->j:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/e/a;->b(I)V

    .line 92
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    iget v1, p0, Lcn/nubia/videogenerator/d/b;->s:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/e/a;->a(I)V

    .line 93
    iget-wide v0, p0, Lcn/nubia/videogenerator/d/b;->f:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/videogenerator/e/a;->a(J)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/b;->p:Lcn/nubia/videogenerator/a/d$a;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/e/a;->a(Lcn/nubia/videogenerator/a/d$a;)V

    .line 97
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    iget-object v1, p0, Lcn/nubia/videogenerator/d/b;->q:Lcn/nubia/videogenerator/a/d$c;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/e/a;->a(Lcn/nubia/videogenerator/a/d$c;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->b:Lcn/nubia/videogenerator/codec/f;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcn/nubia/videogenerator/d/b;->x:Z

    if-nez v1, :cond_2

    .line 101
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/f;->a(Lcn/nubia/videogenerator/a/g;)V

    .line 103
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/videogenerator/d/b;->x:Z

    if-nez v0, :cond_3

    .line 104
    new-instance v0, Lcn/nubia/videogenerator/d/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/d/b$a;-><init>(Lcn/nubia/videogenerator/d/b;Lcn/nubia/videogenerator/d/b$1;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/d/b;->v:Ljava/lang/Thread;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void
.end method

.method public e()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/d/b;->d:Lcn/nubia/videogenerator/c/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1}, Lcn/nubia/videogenerator/c/b;->b()V

    .line 136
    iput-object v2, p0, Lcn/nubia/videogenerator/d/b;->d:Lcn/nubia/videogenerator/c/b;

    .line 138
    :cond_0
    iget-object v1, p0, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/e;->c()V

    .line 140
    iput-object v2, p0, Lcn/nubia/videogenerator/d/b;->c:Lcn/nubia/videogenerator/codec/e;

    .line 142
    :cond_1
    iget-object v1, p0, Lcn/nubia/videogenerator/d/b;->b:Lcn/nubia/videogenerator/codec/f;

    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/f;->e()V

    .line 144
    iput-object v2, p0, Lcn/nubia/videogenerator/d/b;->b:Lcn/nubia/videogenerator/codec/f;

    .line 146
    :cond_2
    iget-object v1, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {v1}, Lcn/nubia/videogenerator/e/a;->b()V

    .line 148
    iput-object v2, p0, Lcn/nubia/videogenerator/d/b;->a:Lcn/nubia/videogenerator/e/a;

    .line 150
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 2

    const-string v0, "SlomoGenerator"

    const-string v1, "cancel editor "

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 156
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/videogenerator/d/b;->x:Z

    .line 157
    invoke-virtual {p0}, Lcn/nubia/videogenerator/d/b;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
