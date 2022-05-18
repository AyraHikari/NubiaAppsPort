.class public Lu/aly/bf;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bf$c;,
        Lu/aly/bf$d;,
        Lu/aly/bf$a;,
        Lu/aly/bf$b;,
        Lu/aly/bf$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bp",
        "<",
        "Lu/aly/bf;",
        "Lu/aly/bf$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bf$e;",
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
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lu/aly/bd;

.field private k:B

.field private l:[Lu/aly/bf$e;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 24
    new-instance v0, Lu/aly/ct;

    const-string v1, "Response"

    invoke-direct {v0, v1}, Lu/aly/ct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bf;->e:Lu/aly/ct;

    .line 27
    new-instance v0, Lu/aly/cj;

    const-string v1, "resp_code"

    invoke-direct {v0, v1, v7, v5}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->f:Lu/aly/cj;

    .line 29
    new-instance v0, Lu/aly/cj;

    const-string v1, "msg"

    invoke-direct {v0, v1, v8, v6}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->g:Lu/aly/cj;

    .line 31
    new-instance v0, Lu/aly/cj;

    const-string v1, "imprint"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->h:Lu/aly/cj;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bf;->i:Ljava/util/Map;

    .line 37
    sget-object v0, Lu/aly/bf;->i:Ljava/util/Map;

    const-class v1, Lu/aly/cy;

    new-instance v2, Lu/aly/bf$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/bf$b;-><init>(Lu/aly/bf$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lu/aly/bf;->i:Ljava/util/Map;

    const-class v1, Lu/aly/cz;

    new-instance v2, Lu/aly/bf$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/bf$d;-><init>(Lu/aly/bf$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bf$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 122
    sget-object v1, Lu/aly/bf$e;->a:Lu/aly/bf$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "resp_code"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v7}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lu/aly/bf$e;->b:Lu/aly/bf$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "msg"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v8}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lu/aly/bf$e;->c:Lu/aly/bf$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "imprint"

    new-instance v4, Lu/aly/cg;

    const-class v5, Lu/aly/bd;

    invoke-direct {v4, v9, v5}, Lu/aly/cg;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bf;->d:Ljava/util/Map;

    .line 135
    const-class v0, Lu/aly/bf;

    sget-object v1, Lu/aly/bf;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cb;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-byte v2, p0, Lu/aly/bf;->k:B

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/bf$e;

    sget-object v1, Lu/aly/bf$e;->b:Lu/aly/bf$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bf$e;->c:Lu/aly/bf$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bf;->l:[Lu/aly/bf$e;

    .line 139
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lu/aly/bf;-><init>()V

    .line 143
    iput p1, p0, Lu/aly/bf;->a:I

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bf;->a(Z)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lu/aly/bf;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-byte v2, p0, Lu/aly/bf;->k:B

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/bf$e;

    sget-object v1, Lu/aly/bf$e;->b:Lu/aly/bf$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bf$e;->c:Lu/aly/bf$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bf;->l:[Lu/aly/bf$e;

    .line 151
    iget-byte v0, p1, Lu/aly/bf;->k:B

    iput-byte v0, p0, Lu/aly/bf;->k:B

    .line 152
    iget v0, p1, Lu/aly/bf;->a:I

    iput v0, p0, Lu/aly/bf;->a:I

    .line 153
    invoke-virtual {p1}, Lu/aly/bf;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p1, Lu/aly/bf;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bf;->b:Ljava/lang/String;

    .line 156
    :cond_0
    invoke-virtual {p1}, Lu/aly/bf;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Lu/aly/bd;

    iget-object v1, p1, Lu/aly/bf;->c:Lu/aly/bd;

    invoke-direct {v0, v1}, Lu/aly/bd;-><init>(Lu/aly/bd;)V

    iput-object v0, p0, Lu/aly/bf;->c:Lu/aly/bd;

    .line 159
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
    .line 322
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/bf;->k:B

    .line 323
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/bf;->a(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
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
    .line 311
    :try_start_0
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/bf;->b(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
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
    sget-object v0, Lu/aly/bf;->e:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic n()Lu/aly/cj;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bf;->f:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic o()Lu/aly/cj;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bf;->g:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic q()Lu/aly/cj;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bf;->h:Lu/aly/cj;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/bf;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lu/aly/bf;

    invoke-direct {v0, p0}, Lu/aly/bf;-><init>(Lu/aly/bf;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bf;
    .locals 1

    .prologue
    .line 178
    iput p1, p0, Lu/aly/bf;->a:I

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bf;->a(Z)V

    .line 180
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bf;
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lu/aly/bf;->b:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public a(Lu/aly/bd;)Lu/aly/bf;
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lu/aly/bf;->c:Lu/aly/bd;

    .line 232
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
    .line 258
    sget-object v0, Lu/aly/bf;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/co;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-interface {v0}, Lu/aly/cx;->b()Lu/aly/cw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cw;->b(Lu/aly/co;Lu/aly/bp;)V

    .line 259
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 196
    iget-byte v0, p0, Lu/aly/bf;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bm;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bf;->k:B

    .line 197
    return-void
.end method

.method public synthetic b(I)Lu/aly/bw;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lu/aly/bf;->c(I)Lu/aly/bf$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0}, Lu/aly/bf;->a(Z)V

    .line 168
    iput v0, p0, Lu/aly/bf;->a:I

    .line 169
    iput-object v1, p0, Lu/aly/bf;->b:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lu/aly/bf;->c:Lu/aly/bd;

    .line 171
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
    .line 262
    sget-object v0, Lu/aly/bf;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/co;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-interface {v0}, Lu/aly/cx;->b()Lu/aly/cw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cw;->a(Lu/aly/co;Lu/aly/bp;)V

    .line 263
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bf;->b:Ljava/lang/String;

    .line 224
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lu/aly/bf;->a:I

    return v0
.end method

.method public c(I)Lu/aly/bf$e;
    .locals 1

    .prologue
    .line 254
    invoke-static {p1}, Lu/aly/bf$e;->a(I)Lu/aly/bf$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bf;->c:Lu/aly/bd;

    .line 251
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 184
    iget-byte v0, p0, Lu/aly/bf;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bm;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bf;->k:B

    .line 185
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 192
    iget-byte v0, p0, Lu/aly/bf;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bm;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lu/aly/bf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bf;->b:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lu/aly/bf;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Lu/aly/bd;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lu/aly/bf;->c:Lu/aly/bd;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bf;->c:Lu/aly/bd;

    .line 237
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lu/aly/bf;->c:Lu/aly/bd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lu/aly/bf;->c:Lu/aly/bd;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lu/aly/bf;->c:Lu/aly/bd;

    invoke-virtual {v0}, Lu/aly/bd;->m()V

    .line 307
    :cond_0
    return-void
.end method

.method public synthetic p()Lu/aly/bp;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lu/aly/bf;->a()Lu/aly/bf;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    const-string v1, "resp_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget v1, p0, Lu/aly/bf;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p0}, Lu/aly/bf;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object v1, p0, Lu/aly/bf;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 278
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lu/aly/bf;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, "imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, Lu/aly/bf;->c:Lu/aly/bd;

    if-nez v1, :cond_3

    .line 289
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_1
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 280
    :cond_2
    iget-object v1, p0, Lu/aly/bf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 291
    :cond_3
    iget-object v1, p0, Lu/aly/bf;->c:Lu/aly/bd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
