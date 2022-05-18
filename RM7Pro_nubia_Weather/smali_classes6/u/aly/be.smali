.class public Lu/aly/be;
.super Ljava/lang/Object;
.source "ImprintValue.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/be$c;,
        Lu/aly/be$d;,
        Lu/aly/be$a;,
        Lu/aly/be$b;,
        Lu/aly/be$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bp",
        "<",
        "Lu/aly/be;",
        "Lu/aly/be$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/be$e;",
            "Lu/aly/cb;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lu/aly/ct;

.field private static final f:Lu/aly/cj;

.field private static final g:Lu/aly/cj;

.field private static final h:Lu/aly/cj;

.field private static final i:Ljava/util/Map;
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

.field private static final j:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field private k:B

.field private l:[Lu/aly/be$e;


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

    const-string v1, "ImprintValue"

    invoke-direct {v0, v1}, Lu/aly/ct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/be;->e:Lu/aly/ct;

    .line 28
    new-instance v0, Lu/aly/cj;

    const-string v1, "value"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->f:Lu/aly/cj;

    .line 30
    new-instance v0, Lu/aly/cj;

    const-string v1, "ts"

    invoke-direct {v0, v1, v8, v7}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->g:Lu/aly/cj;

    .line 32
    new-instance v0, Lu/aly/cj;

    const-string v1, "guid"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->h:Lu/aly/cj;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/be;->i:Ljava/util/Map;

    .line 38
    sget-object v0, Lu/aly/be;->i:Ljava/util/Map;

    const-class v1, Lu/aly/cy;

    new-instance v2, Lu/aly/be$b;

    invoke-direct {v2, v3}, Lu/aly/be$b;-><init>(Lu/aly/be$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lu/aly/be;->i:Ljava/util/Map;

    const-class v1, Lu/aly/cz;

    new-instance v2, Lu/aly/be$d;

    invoke-direct {v2, v3}, Lu/aly/be$d;-><init>(Lu/aly/be$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/be$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 123
    sget-object v1, Lu/aly/be$e;->a:Lu/aly/be$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "value"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v5}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lu/aly/be$e;->b:Lu/aly/be$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "ts"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v8}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lu/aly/be$e;->c:Lu/aly/be$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "guid"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v5}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/be;->d:Ljava/util/Map;

    .line 133
    const-class v0, Lu/aly/be;

    sget-object v1, Lu/aly/be;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cb;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-byte v2, p0, Lu/aly/be;->k:B

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/be$e;

    sget-object v1, Lu/aly/be$e;->a:Lu/aly/be$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/be;->l:[Lu/aly/be$e;

    .line 137
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lu/aly/be;-><init>()V

    .line 141
    iput-wide p1, p0, Lu/aly/be;->b:J

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/be;->b(Z)V

    .line 143
    iput-object p3, p0, Lu/aly/be;->c:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public constructor <init>(Lu/aly/be;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-byte v2, p0, Lu/aly/be;->k:B

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/be$e;

    sget-object v1, Lu/aly/be$e;->a:Lu/aly/be$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/be;->l:[Lu/aly/be$e;

    .line 150
    iget-byte v0, p1, Lu/aly/be;->k:B

    iput-byte v0, p0, Lu/aly/be;->k:B

    .line 151
    invoke-virtual {p1}, Lu/aly/be;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p1, Lu/aly/be;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 154
    :cond_0
    iget-wide v0, p1, Lu/aly/be;->b:J

    iput-wide v0, p0, Lu/aly/be;->b:J

    .line 155
    invoke-virtual {p1}, Lu/aly/be;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p1, Lu/aly/be;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    .line 158
    :cond_1
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
    .line 320
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/be;->k:B

    .line 321
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/be;->a(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
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
    .line 309
    :try_start_0
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/be;->b(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/bv;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic m()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/be;->e:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic n()Lu/aly/cj;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/be;->f:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic o()Lu/aly/cj;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/be;->g:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic q()Lu/aly/cj;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/be;->h:Lu/aly/cj;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/be$e;
    .locals 1

    .prologue
    .line 253
    invoke-static {p1}, Lu/aly/be$e;->a(I)Lu/aly/be$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/be;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lu/aly/be;

    invoke-direct {v0, p0}, Lu/aly/be;-><init>(Lu/aly/be;)V

    return-object v0
.end method

.method public a(J)Lu/aly/be;
    .locals 1

    .prologue
    .line 204
    iput-wide p1, p0, Lu/aly/be;->b:J

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/be;->b(Z)V

    .line 206
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/be;
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 178
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
    .line 257
    sget-object v0, Lu/aly/be;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/co;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-interface {v0}, Lu/aly/cx;->b()Lu/aly/cw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cw;->b(Lu/aly/co;Lu/aly/bp;)V

    .line 258
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 197
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/be;
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lu/aly/be;->c:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public synthetic b(I)Lu/aly/bw;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lu/aly/be;->a(I)Lu/aly/be$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    iput-object v2, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu/aly/be;->b(Z)V

    .line 168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/be;->b:J

    .line 169
    iput-object v2, p0, Lu/aly/be;->c:Ljava/lang/String;

    .line 170
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
    .line 261
    sget-object v0, Lu/aly/be;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/co;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-interface {v0}, Lu/aly/cx;->b()Lu/aly/cw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cw;->a(Lu/aly/co;Lu/aly/bp;)V

    .line 262
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 222
    iget-byte v0, p0, Lu/aly/be;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bm;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/be;->k:B

    .line 223
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    .line 250
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lu/aly/be;->b:J

    return-wide v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 210
    iget-byte v0, p0, Lu/aly/be;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bm;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/be;->k:B

    .line 211
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 218
    iget-byte v0, p0, Lu/aly/be;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bm;->a(BI)Z

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    invoke-virtual {p0}, Lu/aly/be;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    return-void
.end method

.method public synthetic p()Lu/aly/bp;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lu/aly/be;->a()Lu/aly/be;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "ImprintValue("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0}, Lu/aly/be;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    const-string v0, "value:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 272
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :goto_0
    const/4 v0, 0x0

    .line 278
    :cond_0
    if-nez v0, :cond_1

    .line 279
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_1
    const-string v0, "ts:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-wide v2, p0, Lu/aly/be;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 284
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v0, "guid:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 287
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :goto_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :cond_2
    iget-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 289
    :cond_3
    iget-object v0, p0, Lu/aly/be;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
