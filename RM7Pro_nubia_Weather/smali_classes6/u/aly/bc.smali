.class public Lu/aly/bc;
.super Ljava/lang/Object;
.source "IdTracking.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bc$c;,
        Lu/aly/bc$d;,
        Lu/aly/bc$a;,
        Lu/aly/bc$b;,
        Lu/aly/bc$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bp",
        "<",
        "Lu/aly/bc;",
        "Lu/aly/bc$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bc$e;",
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


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bb;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/ba;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field private j:[Lu/aly/bc$e;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0xd

    const/16 v11, 0xc

    const/4 v10, 0x1

    const/16 v9, 0xb

    const/4 v8, 0x2

    .line 26
    new-instance v0, Lu/aly/ct;

    const-string v1, "IdTracking"

    invoke-direct {v0, v1}, Lu/aly/ct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bc;->e:Lu/aly/ct;

    .line 29
    new-instance v0, Lu/aly/cj;

    const-string v1, "snapshots"

    invoke-direct {v0, v1, v12, v10}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bc;->f:Lu/aly/cj;

    .line 31
    new-instance v0, Lu/aly/cj;

    const-string v1, "journals"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v8}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bc;->g:Lu/aly/cj;

    .line 33
    new-instance v0, Lu/aly/cj;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bc;->h:Lu/aly/cj;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bc;->i:Ljava/util/Map;

    .line 39
    sget-object v0, Lu/aly/bc;->i:Ljava/util/Map;

    const-class v1, Lu/aly/cy;

    new-instance v2, Lu/aly/bc$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/bc$b;-><init>(Lu/aly/bc$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lu/aly/bc;->i:Ljava/util/Map;

    const-class v1, Lu/aly/cz;

    new-instance v2, Lu/aly/bc$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/bc$d;-><init>(Lu/aly/bc$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bc$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 122
    sget-object v1, Lu/aly/bc$e;->a:Lu/aly/bc$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "snapshots"

    new-instance v4, Lu/aly/ce;

    new-instance v5, Lu/aly/cc;

    invoke-direct {v5, v9}, Lu/aly/cc;-><init>(B)V

    new-instance v6, Lu/aly/cg;

    const-class v7, Lu/aly/bb;

    invoke-direct {v6, v11, v7}, Lu/aly/cg;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5, v6}, Lu/aly/ce;-><init>(BLu/aly/cc;Lu/aly/cc;)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lu/aly/bc$e;->b:Lu/aly/bc$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "journals"

    new-instance v4, Lu/aly/cd;

    const/16 v5, 0xf

    new-instance v6, Lu/aly/cg;

    const-class v7, Lu/aly/ba;

    invoke-direct {v6, v11, v7}, Lu/aly/cg;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v5, v6}, Lu/aly/cd;-><init>(BLu/aly/cc;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lu/aly/bc$e;->c:Lu/aly/bc$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "checksum"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v9}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bc;->d:Ljava/util/Map;

    .line 141
    const-class v0, Lu/aly/bc;

    sget-object v1, Lu/aly/bc;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cb;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 142
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/bc$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/bc$e;->b:Lu/aly/bc$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bc$e;->c:Lu/aly/bc$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bc;->j:[Lu/aly/bc$e;

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0}, Lu/aly/bc;-><init>()V

    .line 149
    iput-object p1, p0, Lu/aly/bc;->a:Ljava/util/Map;

    .line 150
    return-void
.end method

.method public constructor <init>(Lu/aly/bc;)V
    .locals 5

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/bc$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/bc$e;->b:Lu/aly/bc$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bc$e;->c:Lu/aly/bc$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bc;->j:[Lu/aly/bc$e;

    .line 156
    invoke-virtual {p1}, Lu/aly/bc;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 158
    iget-object v0, p1, Lu/aly/bc;->a:Ljava/util/Map;

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

    check-cast v0, Lu/aly/bb;

    .line 165
    new-instance v4, Lu/aly/bb;

    invoke-direct {v4, v0}, Lu/aly/bb;-><init>(Lu/aly/bb;)V

    .line 167
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_0
    iput-object v2, p0, Lu/aly/bc;->a:Ljava/util/Map;

    .line 171
    :cond_1
    invoke-virtual {p1}, Lu/aly/bc;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v0, p1, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ba;

    .line 174
    new-instance v3, Lu/aly/ba;

    invoke-direct {v3, v0}, Lu/aly/ba;-><init>(Lu/aly/ba;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    :cond_2
    iput-object v1, p0, Lu/aly/bc;->b:Ljava/util/List;

    .line 178
    :cond_3
    invoke-virtual {p1}, Lu/aly/bc;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p1, Lu/aly/bc;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bc;->c:Ljava/lang/String;

    .line 181
    :cond_4
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
    .line 371
    :try_start_0
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/bc;->a(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
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
    .line 362
    :try_start_0
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/bc;->b(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/bv;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic q()Lu/aly/ct;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bc;->e:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic r()Lu/aly/cj;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bc;->f:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic s()Lu/aly/cj;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bc;->g:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic t()Lu/aly/cj;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bc;->h:Lu/aly/cj;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/bc$e;
    .locals 1

    .prologue
    .line 302
    invoke-static {p1}, Lu/aly/bc$e;->a(I)Lu/aly/bc$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/bc;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lu/aly/bc;

    invoke-direct {v0, p0}, Lu/aly/bc;-><init>(Lu/aly/bc;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bc;
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lu/aly/bc;->c:Ljava/lang/String;

    .line 280
    return-object p0
.end method

.method public a(Ljava/util/List;)Lu/aly/bc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lu/aly/ba;",
            ">;)",
            "Lu/aly/bc;"
        }
    .end annotation

    .prologue
    .line 252
    iput-object p1, p0, Lu/aly/bc;->b:Ljava/util/List;

    .line 253
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lu/aly/bc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bb;",
            ">;)",
            "Lu/aly/bc;"
        }
    .end annotation

    .prologue
    .line 210
    iput-object p1, p0, Lu/aly/bc;->a:Ljava/util/Map;

    .line 211
    return-object p0
.end method

.method public a(Ljava/lang/String;Lu/aly/bb;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    .line 202
    :cond_0
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public a(Lu/aly/ba;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    .line 244
    :cond_0
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
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
    .line 306
    sget-object v0, Lu/aly/bc;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/co;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-interface {v0}, Lu/aly/cx;->b()Lu/aly/cw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cw;->b(Lu/aly/co;Lu/aly/bp;)V

    .line 307
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    .line 230
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/bw;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lu/aly/bc;->a(I)Lu/aly/bc$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    .line 190
    iput-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    .line 191
    iput-object v0, p0, Lu/aly/bc;->c:Ljava/lang/String;

    .line 192
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
    .line 310
    sget-object v0, Lu/aly/bc;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/co;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-interface {v0}, Lu/aly/cx;->b()Lu/aly/cw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cw;->a(Lu/aly/co;Lu/aly/bp;)V

    .line 311
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    .line 272
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bc;->c:Ljava/lang/String;

    .line 299
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
            "Lu/aly/bb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    .line 216
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

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
    .line 233
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public h()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lu/aly/ba;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lu/aly/ba;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    .line 258
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lu/aly/bc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bc;->c:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lu/aly/bc;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'snapshots\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 355
    invoke-virtual {p0}, Lu/aly/bc;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    return-void
.end method

.method public synthetic p()Lu/aly/bp;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lu/aly/bc;->a()Lu/aly/bc;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdTracking("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    const-string v1, "snapshots:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-object v1, p0, Lu/aly/bc;->a:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 320
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :goto_0
    invoke-virtual {p0}, Lu/aly/bc;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, "journals:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v1, p0, Lu/aly/bc;->b:Ljava/util/List;

    if-nez v1, :cond_3

    .line 330
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lu/aly/bc;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v1, p0, Lu/aly/bc;->c:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 341
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_1
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 322
    :cond_2
    iget-object v1, p0, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 332
    :cond_3
    iget-object v1, p0, Lu/aly/bc;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 343
    :cond_4
    iget-object v1, p0, Lu/aly/bc;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
