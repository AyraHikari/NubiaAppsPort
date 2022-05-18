.class public Lu/aly/ba;
.super Ljava/lang/Object;
.source "IdJournal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ba$c;,
        Lu/aly/ba$d;,
        Lu/aly/ba$a;,
        Lu/aly/ba$b;,
        Lu/aly/ba$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bp",
        "<",
        "Lu/aly/ba;",
        "Lu/aly/ba$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ba$e;",
            "Lu/aly/cb;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lu/aly/ct;

.field private static final g:Lu/aly/cj;

.field private static final h:Lu/aly/cj;

.field private static final i:Lu/aly/cj;

.field private static final j:Lu/aly/cj;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lu/aly/cw;",
            ">;",
            "Lu/aly/cx;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field private m:B

.field private n:[Lu/aly/ba$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 25
    new-instance v0, Lu/aly/ct;

    const-string v1, "IdJournal"

    invoke-direct {v0, v1}, Lu/aly/ct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ba;->f:Lu/aly/ct;

    .line 28
    new-instance v0, Lu/aly/cj;

    const-string v1, "domain"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ba;->g:Lu/aly/cj;

    .line 30
    new-instance v0, Lu/aly/cj;

    const-string v1, "old_id"

    invoke-direct {v0, v1, v5, v7}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ba;->h:Lu/aly/cj;

    .line 32
    new-instance v0, Lu/aly/cj;

    const-string v1, "new_id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ba;->i:Lu/aly/cj;

    .line 34
    new-instance v0, Lu/aly/cj;

    const-string v1, "ts"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ba;->j:Lu/aly/cj;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ba;->k:Ljava/util/Map;

    .line 40
    sget-object v0, Lu/aly/ba;->k:Ljava/util/Map;

    const-class v1, Lu/aly/cy;

    new-instance v2, Lu/aly/ba$b;

    invoke-direct {v2, v3}, Lu/aly/ba$b;-><init>(Lu/aly/ba$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lu/aly/ba;->k:Ljava/util/Map;

    const-class v1, Lu/aly/cz;

    new-instance v2, Lu/aly/ba$d;

    invoke-direct {v2, v3}, Lu/aly/ba$d;-><init>(Lu/aly/ba$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ba$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 128
    sget-object v1, Lu/aly/ba$e;->a:Lu/aly/ba$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "domain"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v5}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lu/aly/ba$e;->b:Lu/aly/ba$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "old_id"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v5}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lu/aly/ba$e;->c:Lu/aly/ba$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "new_id"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v5}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lu/aly/ba$e;->d:Lu/aly/ba$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "ts"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v8}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ba;->e:Ljava/util/Map;

    .line 144
    const-class v0, Lu/aly/ba;

    sget-object v1, Lu/aly/ba;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cb;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-byte v2, p0, Lu/aly/ba;->m:B

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/ba$e;

    sget-object v1, Lu/aly/ba$e;->b:Lu/aly/ba$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/ba;->n:[Lu/aly/ba$e;

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lu/aly/ba;-><init>()V

    .line 152
    iput-object p1, p0, Lu/aly/ba;->a:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lu/aly/ba;->c:Ljava/lang/String;

    .line 154
    iput-wide p3, p0, Lu/aly/ba;->d:J

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ba;->d(Z)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lu/aly/ba;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-byte v2, p0, Lu/aly/ba;->m:B

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/ba$e;

    sget-object v1, Lu/aly/ba$e;->b:Lu/aly/ba$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/ba;->n:[Lu/aly/ba$e;

    .line 162
    iget-byte v0, p1, Lu/aly/ba;->m:B

    iput-byte v0, p0, Lu/aly/ba;->m:B

    .line 163
    invoke-virtual {p1}, Lu/aly/ba;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p1, Lu/aly/ba;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ba;->a:Ljava/lang/String;

    .line 166
    :cond_0
    invoke-virtual {p1}, Lu/aly/ba;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p1, Lu/aly/ba;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ba;->b:Ljava/lang/String;

    .line 169
    :cond_1
    invoke-virtual {p1}, Lu/aly/ba;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p1, Lu/aly/ba;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ba;->c:Ljava/lang/String;

    .line 172
    :cond_2
    iget-wide v0, p1, Lu/aly/ba;->d:J

    iput-wide v0, p0, Lu/aly/ba;->d:J

    .line 173
    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 376
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/ba;->m:B

    .line 377
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/ba;->a(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/bv;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    :try_start_0
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/ba;->b(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/bv;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic q()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ba;->f:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic r()Lu/aly/cj;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ba;->g:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic s()Lu/aly/cj;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ba;->h:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic t()Lu/aly/cj;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ba;->i:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic u()Lu/aly/cj;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ba;->j:Lu/aly/cj;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/ba$e;
    .locals 1

    .prologue
    .line 296
    invoke-static {p1}, Lu/aly/ba$e;->a(I)Lu/aly/ba$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/ba;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lu/aly/ba;

    invoke-direct {v0, p0}, Lu/aly/ba;-><init>(Lu/aly/ba;)V

    return-object v0
.end method

.method public a(J)Lu/aly/ba;
    .locals 1

    .prologue
    .line 274
    iput-wide p1, p0, Lu/aly/ba;->d:J

    .line 275
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ba;->d(Z)V

    .line 276
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ba;
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lu/aly/ba;->a:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public a(Lu/aly/co;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 300
    sget-object v0, Lu/aly/ba;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/co;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-interface {v0}, Lu/aly/cx;->b()Lu/aly/cw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cw;->b(Lu/aly/co;Lu/aly/bp;)V

    .line 301
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ba;->a:Ljava/lang/String;

    .line 213
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/ba;
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lu/aly/ba;->b:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public synthetic b(I)Lu/aly/bw;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lu/aly/ba;->a(I)Lu/aly/ba$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lu/aly/ba;->a:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lu/aly/ba;->b:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lu/aly/ba;->c:Ljava/lang/String;

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu/aly/ba;->d(Z)V

    .line 185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/ba;->d:J

    .line 186
    return-void
.end method

.method public b(Lu/aly/co;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lu/aly/ba;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/co;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-interface {v0}, Lu/aly/cx;->b()Lu/aly/cw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cw;->a(Lu/aly/co;Lu/aly/bp;)V

    .line 305
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ba;->b:Ljava/lang/String;

    .line 240
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lu/aly/ba;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lu/aly/ba;
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lu/aly/ba;->c:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ba;->c:Ljava/lang/String;

    .line 267
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ba;->a:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 292
    iget-byte v0, p0, Lu/aly/ba;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bm;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ba;->m:B

    .line 293
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lu/aly/ba;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lu/aly/ba;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ba;->b:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lu/aly/ba;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lu/aly/ba;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ba;->c:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lu/aly/ba;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()J
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lu/aly/ba;->d:J

    return-wide v0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 280
    iget-byte v0, p0, Lu/aly/ba;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bm;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ba;->m:B

    .line 281
    return-void
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 288
    iget-byte v0, p0, Lu/aly/ba;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bm;->a(BI)Z

    move-result v0

    return v0
.end method

.method public o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lu/aly/ba;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'domain\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 352
    invoke-virtual {p0}, Lu/aly/ba;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    iget-object v0, p0, Lu/aly/ba;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'new_id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
    invoke-virtual {p0}, Lu/aly/ba;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    return-void
.end method

.method public synthetic p()Lu/aly/bp;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lu/aly/ba;->a()Lu/aly/ba;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdJournal("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    const-string v1, "domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lu/aly/ba;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 314
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :goto_0
    invoke-virtual {p0}, Lu/aly/ba;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, "old_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v1, p0, Lu/aly/ba;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 324
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_0
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, "new_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v1, p0, Lu/aly/ba;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 334
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-wide v2, p0, Lu/aly/ba;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 344
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 316
    :cond_1
    iget-object v1, p0, Lu/aly/ba;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 326
    :cond_2
    iget-object v1, p0, Lu/aly/ba;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 336
    :cond_3
    iget-object v1, p0, Lu/aly/ba;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
