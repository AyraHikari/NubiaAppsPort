.class public Lu/aly/bg;
.super Ljava/lang/Object;
.source "UMEnvelope.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bg$c;,
        Lu/aly/bg$d;,
        Lu/aly/bg$a;,
        Lu/aly/bg$b;,
        Lu/aly/bg$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bp",
        "<",
        "Lu/aly/bg;",
        "Lu/aly/bg$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:I = 0x3

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bg$e;",
            "Lu/aly/cb;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lu/aly/ct;

.field private static final m:Lu/aly/cj;

.field private static final n:Lu/aly/cj;

.field private static final o:Lu/aly/cj;

.field private static final p:Lu/aly/cj;

.field private static final q:Lu/aly/cj;

.field private static final r:Lu/aly/cj;

.field private static final s:Lu/aly/cj;

.field private static final t:Lu/aly/cj;

.field private static final u:Lu/aly/cj;

.field private static final v:Lu/aly/cj;

.field private static final w:Ljava/util/Map;
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

.field private static final x:I = 0x0

.field private static final y:I = 0x1

.field private static final z:I = 0x2


# instance fields
.field private B:B

.field private C:[Lu/aly/bg$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 26
    new-instance v0, Lu/aly/ct;

    const-string v1, "UMEnvelope"

    invoke-direct {v0, v1}, Lu/aly/ct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bg;->l:Lu/aly/ct;

    .line 29
    new-instance v0, Lu/aly/cj;

    const-string v1, "version"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->m:Lu/aly/cj;

    .line 31
    new-instance v0, Lu/aly/cj;

    const-string v1, "address"

    invoke-direct {v0, v1, v5, v8}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->n:Lu/aly/cj;

    .line 33
    new-instance v0, Lu/aly/cj;

    const-string v1, "signature"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->o:Lu/aly/cj;

    .line 35
    new-instance v0, Lu/aly/cj;

    const-string v1, "serial_num"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->p:Lu/aly/cj;

    .line 37
    new-instance v0, Lu/aly/cj;

    const-string v1, "ts_secs"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->q:Lu/aly/cj;

    .line 39
    new-instance v0, Lu/aly/cj;

    const-string v1, "length"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->r:Lu/aly/cj;

    .line 41
    new-instance v0, Lu/aly/cj;

    const-string v1, "entity"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->s:Lu/aly/cj;

    .line 43
    new-instance v0, Lu/aly/cj;

    const-string v1, "guid"

    invoke-direct {v0, v1, v5, v7}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->t:Lu/aly/cj;

    .line 45
    new-instance v0, Lu/aly/cj;

    const-string v1, "checksum"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->u:Lu/aly/cj;

    .line 47
    new-instance v0, Lu/aly/cj;

    const-string v1, "codex"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->v:Lu/aly/cj;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bg;->w:Ljava/util/Map;

    .line 53
    sget-object v0, Lu/aly/bg;->w:Ljava/util/Map;

    const-class v1, Lu/aly/cy;

    new-instance v2, Lu/aly/bg$b;

    invoke-direct {v2, v3}, Lu/aly/bg$b;-><init>(Lu/aly/bg$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lu/aly/bg;->w:Ljava/util/Map;

    const-class v1, Lu/aly/cz;

    new-instance v2, Lu/aly/bg$d;

    invoke-direct {v2, v3}, Lu/aly/bg$d;-><init>(Lu/aly/bg$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bg$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 164
    sget-object v1, Lu/aly/bg$e;->a:Lu/aly/bg$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "version"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v5}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lu/aly/bg$e;->b:Lu/aly/bg$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "address"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v5}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lu/aly/bg$e;->c:Lu/aly/bg$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "signature"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v5}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lu/aly/bg$e;->d:Lu/aly/bg$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "serial_num"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v7}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lu/aly/bg$e;->e:Lu/aly/bg$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "ts_secs"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v7}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lu/aly/bg$e;->f:Lu/aly/bg$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "length"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v7}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lu/aly/bg$e;->g:Lu/aly/bg$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "entity"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v5, v6}, Lu/aly/cc;-><init>(BZ)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lu/aly/bg$e;->h:Lu/aly/bg$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "guid"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v5}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lu/aly/bg$e;->i:Lu/aly/bg$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "checksum"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v5}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v1, Lu/aly/bg$e;->j:Lu/aly/bg$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "codex"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v7}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bg;->k:Ljava/util/Map;

    .line 202
    const-class v0, Lu/aly/bg;

    sget-object v1, Lu/aly/bg;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cb;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 203
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-byte v2, p0, Lu/aly/bg;->B:B

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/bg$e;

    sget-object v1, Lu/aly/bg$e;->j:Lu/aly/bg$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/bg;->C:[Lu/aly/bg$e;

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 210
    invoke-direct {p0}, Lu/aly/bg;-><init>()V

    .line 211
    iput-object p1, p0, Lu/aly/bg;->a:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lu/aly/bg;->b:Ljava/lang/String;

    .line 213
    iput-object p3, p0, Lu/aly/bg;->c:Ljava/lang/String;

    .line 214
    iput p4, p0, Lu/aly/bg;->d:I

    .line 215
    invoke-virtual {p0, v0}, Lu/aly/bg;->d(Z)V

    .line 216
    iput p5, p0, Lu/aly/bg;->e:I

    .line 217
    invoke-virtual {p0, v0}, Lu/aly/bg;->e(Z)V

    .line 218
    iput p6, p0, Lu/aly/bg;->f:I

    .line 219
    invoke-virtual {p0, v0}, Lu/aly/bg;->f(Z)V

    .line 220
    iput-object p7, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    .line 221
    iput-object p8, p0, Lu/aly/bg;->h:Ljava/lang/String;

    .line 222
    iput-object p9, p0, Lu/aly/bg;->i:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public constructor <init>(Lu/aly/bg;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-byte v2, p0, Lu/aly/bg;->B:B

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/bg$e;

    sget-object v1, Lu/aly/bg$e;->j:Lu/aly/bg$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/bg;->C:[Lu/aly/bg$e;

    .line 229
    iget-byte v0, p1, Lu/aly/bg;->B:B

    iput-byte v0, p0, Lu/aly/bg;->B:B

    .line 230
    invoke-virtual {p1}, Lu/aly/bg;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p1, Lu/aly/bg;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bg;->a:Ljava/lang/String;

    .line 233
    :cond_0
    invoke-virtual {p1}, Lu/aly/bg;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p1, Lu/aly/bg;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bg;->b:Ljava/lang/String;

    .line 236
    :cond_1
    invoke-virtual {p1}, Lu/aly/bg;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p1, Lu/aly/bg;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bg;->c:Ljava/lang/String;

    .line 239
    :cond_2
    iget v0, p1, Lu/aly/bg;->d:I

    iput v0, p0, Lu/aly/bg;->d:I

    .line 240
    iget v0, p1, Lu/aly/bg;->e:I

    iput v0, p0, Lu/aly/bg;->e:I

    .line 241
    iget v0, p1, Lu/aly/bg;->f:I

    iput v0, p0, Lu/aly/bg;->f:I

    .line 242
    invoke-virtual {p1}, Lu/aly/bg;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p1, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lu/aly/bq;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    .line 246
    :cond_3
    invoke-virtual {p1}, Lu/aly/bg;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p1, Lu/aly/bg;->h:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bg;->h:Ljava/lang/String;

    .line 249
    :cond_4
    invoke-virtual {p1}, Lu/aly/bg;->E()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 250
    iget-object v0, p1, Lu/aly/bg;->i:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bg;->i:Ljava/lang/String;

    .line 252
    :cond_5
    iget v0, p1, Lu/aly/bg;->j:I

    iput v0, p0, Lu/aly/bg;->j:I

    .line 253
    return-void
.end method

.method static synthetic J()Lu/aly/ct;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bg;->l:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic K()Lu/aly/cj;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bg;->m:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic L()Lu/aly/cj;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bg;->n:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic M()Lu/aly/cj;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bg;->o:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic N()Lu/aly/cj;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bg;->p:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic O()Lu/aly/cj;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bg;->q:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic P()Lu/aly/cj;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bg;->r:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic Q()Lu/aly/cj;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bg;->s:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic R()Lu/aly/cj;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bg;->t:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic S()Lu/aly/cj;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bg;->u:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic T()Lu/aly/cj;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bg;->v:Lu/aly/cj;

    return-object v0
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
    .line 696
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/bg;->B:B

    .line 697
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/bg;->a(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    return-void

    .line 699
    :catch_0
    move-exception v0

    .line 700
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
    .line 685
    :try_start_0
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/bg;->b(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    return-void

    .line 687
    :catch_0
    move-exception v0

    .line 688
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/bv;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bg;->h:Ljava/lang/String;

    .line 484
    return-void
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lu/aly/bg;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lu/aly/bg;->i:Ljava/lang/String;

    return-object v0
.end method

.method public D()V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bg;->i:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lu/aly/bg;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lu/aly/bg;->j:I

    return v0
.end method

.method public G()V
    .locals 2

    .prologue
    .line 538
    iget-byte v0, p0, Lu/aly/bg;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/bm;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->B:B

    .line 539
    return-void
.end method

.method public H()Z
    .locals 2

    .prologue
    .line 546
    iget-byte v0, p0, Lu/aly/bg;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/bm;->a(BI)Z

    move-result v0

    return v0
.end method

.method public I()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lu/aly/bg;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 652
    invoke-virtual {p0}, Lu/aly/bg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_0
    iget-object v0, p0, Lu/aly/bg;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 655
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'address\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 656
    invoke-virtual {p0}, Lu/aly/bg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_1
    iget-object v0, p0, Lu/aly/bg;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 659
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'signature\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 660
    invoke-virtual {p0}, Lu/aly/bg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_2
    iget-object v0, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    .line 669
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'entity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 670
    invoke-virtual {p0}, Lu/aly/bg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_3
    iget-object v0, p0, Lu/aly/bg;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 673
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 674
    invoke-virtual {p0}, Lu/aly/bg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_4
    iget-object v0, p0, Lu/aly/bg;->i:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 677
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 678
    invoke-virtual {p0}, Lu/aly/bg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_5
    return-void
.end method

.method public a()Lu/aly/bg;
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lu/aly/bg;

    invoke-direct {v0, p0}, Lu/aly/bg;-><init>(Lu/aly/bg;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bg;
    .locals 1

    .prologue
    .line 363
    iput p1, p0, Lu/aly/bg;->d:I

    .line 364
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bg;->d(Z)V

    .line 365
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bg;
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lu/aly/bg;->a:Ljava/lang/String;

    .line 283
    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lu/aly/bg;
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    .line 452
    return-object p0
.end method

.method public a([B)Lu/aly/bg;
    .locals 1

    .prologue
    .line 446
    if-nez p1, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {p0, v0}, Lu/aly/bg;->a(Ljava/nio/ByteBuffer;)Lu/aly/bg;

    .line 447
    return-object p0

    .line 446
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lu/aly/co;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 558
    sget-object v0, Lu/aly/bg;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/co;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-interface {v0}, Lu/aly/cx;->b()Lu/aly/cw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cw;->b(Lu/aly/co;Lu/aly/bp;)V

    .line 559
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bg;->a:Ljava/lang/String;

    .line 302
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/bg;
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lu/aly/bg;->b:Ljava/lang/String;

    .line 310
    return-object p0
.end method

.method public synthetic b(I)Lu/aly/bw;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lu/aly/bg;->f(I)Lu/aly/bg$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 261
    iput-object v1, p0, Lu/aly/bg;->a:Ljava/lang/String;

    .line 262
    iput-object v1, p0, Lu/aly/bg;->b:Ljava/lang/String;

    .line 263
    iput-object v1, p0, Lu/aly/bg;->c:Ljava/lang/String;

    .line 264
    invoke-virtual {p0, v0}, Lu/aly/bg;->d(Z)V

    .line 265
    iput v0, p0, Lu/aly/bg;->d:I

    .line 266
    invoke-virtual {p0, v0}, Lu/aly/bg;->e(Z)V

    .line 267
    iput v0, p0, Lu/aly/bg;->e:I

    .line 268
    invoke-virtual {p0, v0}, Lu/aly/bg;->f(Z)V

    .line 269
    iput v0, p0, Lu/aly/bg;->f:I

    .line 270
    iput-object v1, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    .line 271
    iput-object v1, p0, Lu/aly/bg;->h:Ljava/lang/String;

    .line 272
    iput-object v1, p0, Lu/aly/bg;->i:Ljava/lang/String;

    .line 273
    invoke-virtual {p0, v0}, Lu/aly/bg;->j(Z)V

    .line 274
    iput v0, p0, Lu/aly/bg;->j:I

    .line 275
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
    .line 562
    sget-object v0, Lu/aly/bg;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/co;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-interface {v0}, Lu/aly/cx;->b()Lu/aly/cw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cw;->a(Lu/aly/co;Lu/aly/bp;)V

    .line 563
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bg;->b:Ljava/lang/String;

    .line 329
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lu/aly/bg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/bg;
    .locals 1

    .prologue
    .line 389
    iput p1, p0, Lu/aly/bg;->e:I

    .line 390
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bg;->e(Z)V

    .line 391
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lu/aly/bg;
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lu/aly/bg;->c:Ljava/lang/String;

    .line 337
    return-object p0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bg;->c:Ljava/lang/String;

    .line 356
    :cond_0
    return-void
.end method

.method public d(I)Lu/aly/bg;
    .locals 1

    .prologue
    .line 415
    iput p1, p0, Lu/aly/bg;->f:I

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bg;->f(Z)V

    .line 417
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lu/aly/bg;
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lu/aly/bg;->h:Ljava/lang/String;

    .line 479
    return-object p0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bg;->a:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 381
    iget-byte v0, p0, Lu/aly/bg;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bm;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->B:B

    .line 382
    return-void
.end method

.method public e(I)Lu/aly/bg;
    .locals 1

    .prologue
    .line 532
    iput p1, p0, Lu/aly/bg;->j:I

    .line 533
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bg;->j(Z)V

    .line 534
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lu/aly/bg;
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lu/aly/bg;->i:Ljava/lang/String;

    .line 506
    return-object p0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 407
    iget-byte v0, p0, Lu/aly/bg;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/bm;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->B:B

    .line 408
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lu/aly/bg;->a:Ljava/lang/String;

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
    .line 305
    iget-object v0, p0, Lu/aly/bg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)Lu/aly/bg$e;
    .locals 1

    .prologue
    .line 554
    invoke-static {p1}, Lu/aly/bg$e;->a(I)Lu/aly/bg$e;

    move-result-object v0

    return-object v0
.end method

.method public f(Z)V
    .locals 2

    .prologue
    .line 433
    iget-byte v0, p0, Lu/aly/bg;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/bm;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->B:B

    .line 434
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bg;->b:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public g(Z)V
    .locals 1

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    .line 471
    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 1

    .prologue
    .line 495
    if-nez p1, :cond_0

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bg;->h:Ljava/lang/String;

    .line 498
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lu/aly/bg;->b:Ljava/lang/String;

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
    .line 332
    iget-object v0, p0, Lu/aly/bg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i(Z)V
    .locals 1

    .prologue
    .line 522
    if-nez p1, :cond_0

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bg;->i:Ljava/lang/String;

    .line 525
    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bg;->c:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public j(Z)V
    .locals 2

    .prologue
    .line 550
    iget-byte v0, p0, Lu/aly/bg;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lu/aly/bm;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->B:B

    .line 551
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lu/aly/bg;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lu/aly/bg;->d:I

    return v0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 369
    iget-byte v0, p0, Lu/aly/bg;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bm;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->B:B

    .line 370
    return-void
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 377
    iget-byte v0, p0, Lu/aly/bg;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bm;->a(BI)Z

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lu/aly/bg;->e:I

    return v0
.end method

.method public synthetic p()Lu/aly/bp;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lu/aly/bg;->a()Lu/aly/bg;

    move-result-object v0

    return-object v0
.end method

.method public q()V
    .locals 2

    .prologue
    .line 395
    iget-byte v0, p0, Lu/aly/bg;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bm;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->B:B

    .line 396
    return-void
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 403
    iget-byte v0, p0, Lu/aly/bg;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bm;->a(BI)Z

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lu/aly/bg;->f:I

    return v0
.end method

.method public t()V
    .locals 2

    .prologue
    .line 421
    iget-byte v0, p0, Lu/aly/bg;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/bm;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->B:B

    .line 422
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UMEnvelope("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v1, p0, Lu/aly/bg;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 572
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v1, "address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v1, p0, Lu/aly/bg;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 581
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v1, "signature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v1, p0, Lu/aly/bg;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 590
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v1, "serial_num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget v1, p0, Lu/aly/bg;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 601
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string v1, "ts_secs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget v1, p0, Lu/aly/bg;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 606
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string v1, "length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    iget v1, p0, Lu/aly/bg;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v1, "entity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    iget-object v1, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_4

    .line 614
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :goto_3
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string v1, "guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v1, p0, Lu/aly/bg;->h:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 623
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :goto_4
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v1, p0, Lu/aly/bg;->i:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 632
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :goto_5
    invoke-virtual {p0}, Lu/aly/bg;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string v1, "codex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget v1, p0, Lu/aly/bg;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :cond_1
    iget-object v1, p0, Lu/aly/bg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 583
    :cond_2
    iget-object v1, p0, Lu/aly/bg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 592
    :cond_3
    iget-object v1, p0, Lu/aly/bg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 616
    :cond_4
    iget-object v1, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lu/aly/bq;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 625
    :cond_5
    iget-object v1, p0, Lu/aly/bg;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 634
    :cond_6
    iget-object v1, p0, Lu/aly/bg;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 429
    iget-byte v0, p0, Lu/aly/bg;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/bm;->a(BI)Z

    move-result v0

    return v0
.end method

.method public v()[B
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lu/aly/bq;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/bg;->a(Ljava/nio/ByteBuffer;)Lu/aly/bg;

    .line 438
    iget-object v0, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0
.end method

.method public w()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public x()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    .line 457
    return-void
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lu/aly/bg;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lu/aly/bg;->h:Ljava/lang/String;

    return-object v0
.end method
