.class public Lu/aly/bd;
.super Ljava/lang/Object;
.source "Imprint.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bd$c;,
        Lu/aly/bd$d;,
        Lu/aly/bd$a;,
        Lu/aly/bd$b;,
        Lu/aly/bd$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bp",
        "<",
        "Lu/aly/bd;",
        "Lu/aly/bd$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bd$e;",
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
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/be;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/String;

.field private k:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/16 v12, 0xd

    const/16 v11, 0x8

    const/16 v10, 0xb

    const/4 v9, 0x1

    .line 23
    new-instance v0, Lu/aly/ct;

    const-string v1, "Imprint"

    invoke-direct {v0, v1}, Lu/aly/ct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bd;->e:Lu/aly/ct;

    .line 26
    new-instance v0, Lu/aly/cj;

    const-string v1, "property"

    invoke-direct {v0, v1, v12, v9}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bd;->f:Lu/aly/cj;

    .line 28
    new-instance v0, Lu/aly/cj;

    const-string v1, "version"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v11, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bd;->g:Lu/aly/cj;

    .line 30
    new-instance v0, Lu/aly/cj;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v10, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bd;->h:Lu/aly/cj;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bd;->i:Ljava/util/Map;

    .line 36
    sget-object v0, Lu/aly/bd;->i:Ljava/util/Map;

    const-class v1, Lu/aly/cy;

    new-instance v2, Lu/aly/bd$b;

    invoke-direct {v2, v3}, Lu/aly/bd$b;-><init>(Lu/aly/bd$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lu/aly/bd;->i:Ljava/util/Map;

    const-class v1, Lu/aly/cz;

    new-instance v2, Lu/aly/bd$d;

    invoke-direct {v2, v3}, Lu/aly/bd$d;-><init>(Lu/aly/bd$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bd$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 120
    sget-object v1, Lu/aly/bd$e;->a:Lu/aly/bd$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "property"

    new-instance v4, Lu/aly/ce;

    new-instance v5, Lu/aly/cc;

    invoke-direct {v5, v10}, Lu/aly/cc;-><init>(B)V

    new-instance v6, Lu/aly/cg;

    const/16 v7, 0xc

    const-class v8, Lu/aly/be;

    invoke-direct {v6, v7, v8}, Lu/aly/cg;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5, v6}, Lu/aly/ce;-><init>(BLu/aly/cc;Lu/aly/cc;)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lu/aly/bd$e;->b:Lu/aly/bd$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "version"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v11}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lu/aly/bd$e;->c:Lu/aly/bd$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "checksum"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v10}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bd;->d:Ljava/util/Map;

    .line 137
    const-class v0, Lu/aly/bd;

    sget-object v1, Lu/aly/bd;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cb;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bd;->k:B

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/be;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Lu/aly/bd;-><init>()V

    .line 145
    iput-object p1, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 146
    iput p2, p0, Lu/aly/bd;->b:I

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bd;->b(Z)V

    .line 148
    iput-object p3, p0, Lu/aly/bd;->c:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(Lu/aly/bd;)V
    .locals 5

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bd;->k:B

    .line 155
    iget-byte v0, p1, Lu/aly/bd;->k:B

    iput-byte v0, p0, Lu/aly/bd;->k:B

    .line 156
    invoke-virtual {p1}, Lu/aly/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 158
    iget-object v0, p1, Lu/aly/bd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    .line 165
    new-instance v4, Lu/aly/be;

    invoke-direct {v4, v0}, Lu/aly/be;-><init>(Lu/aly/be;)V

    .line 167
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_0
    iput-object v2, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 171
    :cond_1
    iget v0, p1, Lu/aly/bd;->b:I

    iput v0, p0, Lu/aly/bd;->b:I

    .line 172
    invoke-virtual {p1}, Lu/aly/bd;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p1, Lu/aly/bd;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    .line 175
    :cond_2
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
    .line 350
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/bd;->k:B

    .line 351
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/bd;->a(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
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
    .line 339
    :try_start_0
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/bd;->b(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/bv;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic n()Lu/aly/ct;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bd;->e:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic o()Lu/aly/cj;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bd;->f:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic q()Lu/aly/cj;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bd;->g:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic r()Lu/aly/cj;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bd;->h:Lu/aly/cj;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/bd;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lu/aly/bd;

    invoke-direct {v0, p0}, Lu/aly/bd;-><init>(Lu/aly/bd;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bd;
    .locals 1

    .prologue
    .line 232
    iput p1, p0, Lu/aly/bd;->b:I

    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bd;->b(Z)V

    .line 234
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bd;
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lu/aly/bd;->c:Ljava/lang/String;

    .line 259
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lu/aly/bd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/be;",
            ">;)",
            "Lu/aly/bd;"
        }
    .end annotation

    .prologue
    .line 205
    iput-object p1, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 206
    return-object p0
.end method

.method public a(Ljava/lang/String;Lu/aly/be;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 197
    :cond_0
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public a(Lu/aly/co;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 285
    sget-object v0, Lu/aly/bd;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/co;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-interface {v0}, Lu/aly/cx;->b()Lu/aly/cw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cw;->b(Lu/aly/co;Lu/aly/bp;)V

    .line 286
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 225
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/bw;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lu/aly/bd;->c(I)Lu/aly/bd$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 183
    iput-object v1, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 184
    invoke-virtual {p0, v0}, Lu/aly/bd;->b(Z)V

    .line 185
    iput v0, p0, Lu/aly/bd;->b:I

    .line 186
    iput-object v1, p0, Lu/aly/bd;->c:Ljava/lang/String;

    .line 187
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
    .line 289
    sget-object v0, Lu/aly/bd;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/co;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-interface {v0}, Lu/aly/cx;->b()Lu/aly/cw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cw;->a(Lu/aly/co;Lu/aly/bp;)V

    .line 290
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 250
    iget-byte v0, p0, Lu/aly/bd;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bm;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bd;->k:B

    .line 251
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public c(I)Lu/aly/bd$e;
    .locals 1

    .prologue
    .line 281
    invoke-static {p1}, Lu/aly/bd$e;->a(I)Lu/aly/bd$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    .line 278
    :cond_0
    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/be;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    .line 211
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lu/aly/bd;->b:I

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 238
    iget-byte v0, p0, Lu/aly/bd;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bm;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bd;->k:B

    .line 239
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 246
    iget-byte v0, p0, Lu/aly/bd;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bm;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'property\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 326
    invoke-virtual {p0}, Lu/aly/bd;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    iget-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 331
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 332
    invoke-virtual {p0}, Lu/aly/bd;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_1
    return-void
.end method

.method public synthetic p()Lu/aly/bp;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lu/aly/bd;->a()Lu/aly/bd;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Imprint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    const-string v1, "property:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v1, p0, Lu/aly/bd;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 299
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget v1, p0, Lu/aly/bd;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v1, p0, Lu/aly/bd;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 313
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :cond_0
    iget-object v1, p0, Lu/aly/bd;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 315
    :cond_1
    iget-object v1, p0, Lu/aly/bd;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
