.class public Lu/aly/bb;
.super Ljava/lang/Object;
.source "IdSnapshot.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bb$c;,
        Lu/aly/bb$d;,
        Lu/aly/bb$a;,
        Lu/aly/bb$b;,
        Lu/aly/bb$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bp",
        "<",
        "Lu/aly/bb;",
        "Lu/aly/bb$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bb$e;",
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

.field private static final j:I = 0x0

.field private static final k:I = 0x1


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 24
    new-instance v0, Lu/aly/ct;

    const-string v1, "IdSnapshot"

    invoke-direct {v0, v1}, Lu/aly/ct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bb;->e:Lu/aly/ct;

    .line 27
    new-instance v0, Lu/aly/cj;

    const-string v1, "identity"

    invoke-direct {v0, v1, v8, v5}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bb;->f:Lu/aly/cj;

    .line 29
    new-instance v0, Lu/aly/cj;

    const-string v1, "ts"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bb;->g:Lu/aly/cj;

    .line 31
    new-instance v0, Lu/aly/cj;

    const-string v1, "version"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lu/aly/cj;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bb;->h:Lu/aly/cj;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bb;->i:Ljava/util/Map;

    .line 37
    sget-object v0, Lu/aly/bb;->i:Ljava/util/Map;

    const-class v1, Lu/aly/cy;

    new-instance v2, Lu/aly/bb$b;

    invoke-direct {v2, v3}, Lu/aly/bb$b;-><init>(Lu/aly/bb$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lu/aly/bb;->i:Ljava/util/Map;

    const-class v1, Lu/aly/cz;

    new-instance v2, Lu/aly/bb$d;

    invoke-direct {v2, v3}, Lu/aly/bb$d;-><init>(Lu/aly/bb$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bb$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 122
    sget-object v1, Lu/aly/bb$e;->a:Lu/aly/bb$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "identity"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v8}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lu/aly/bb$e;->b:Lu/aly/bb$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "ts"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v7}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lu/aly/bb$e;->c:Lu/aly/bb$e;

    new-instance v2, Lu/aly/cb;

    const-string v3, "version"

    new-instance v4, Lu/aly/cc;

    invoke-direct {v4, v6}, Lu/aly/cc;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cb;-><init>(Ljava/lang/String;BLu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bb;->d:Ljava/util/Map;

    .line 134
    const-class v0, Lu/aly/bb;

    sget-object v1, Lu/aly/bb;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cb;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bb;->l:B

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 141
    invoke-direct {p0}, Lu/aly/bb;-><init>()V

    .line 142
    iput-object p1, p0, Lu/aly/bb;->a:Ljava/lang/String;

    .line 143
    iput-wide p2, p0, Lu/aly/bb;->b:J

    .line 144
    invoke-virtual {p0, v0}, Lu/aly/bb;->b(Z)V

    .line 145
    iput p4, p0, Lu/aly/bb;->c:I

    .line 146
    invoke-virtual {p0, v0}, Lu/aly/bb;->c(Z)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lu/aly/bb;)V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bb;->l:B

    .line 153
    iget-byte v0, p1, Lu/aly/bb;->l:B

    iput-byte v0, p0, Lu/aly/bb;->l:B

    .line 154
    invoke-virtual {p1}, Lu/aly/bb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p1, Lu/aly/bb;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bb;->a:Ljava/lang/String;

    .line 157
    :cond_0
    iget-wide v0, p1, Lu/aly/bb;->b:J

    iput-wide v0, p0, Lu/aly/bb;->b:J

    .line 158
    iget v0, p1, Lu/aly/bb;->c:I

    iput v0, p0, Lu/aly/bb;->c:I

    .line 159
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
    .line 317
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/bb;->l:B

    .line 318
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/bb;->a(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
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
    .line 306
    :try_start_0
    new-instance v0, Lu/aly/ci;

    new-instance v1, Lu/aly/da;

    invoke-direct {v1, p1}, Lu/aly/da;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/ci;-><init>(Lu/aly/dc;)V

    invoke-virtual {p0, v0}, Lu/aly/bb;->b(Lu/aly/co;)V
    :try_end_0
    .catch Lu/aly/bv; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/bv;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic m()Lu/aly/ct;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bb;->e:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic n()Lu/aly/cj;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bb;->f:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic o()Lu/aly/cj;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bb;->g:Lu/aly/cj;

    return-object v0
.end method

.method static synthetic q()Lu/aly/cj;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bb;->h:Lu/aly/cj;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/bb;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lu/aly/bb;

    invoke-direct {v0, p0}, Lu/aly/bb;-><init>(Lu/aly/bb;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bb;
    .locals 1

    .prologue
    .line 232
    iput p1, p0, Lu/aly/bb;->c:I

    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bb;->c(Z)V

    .line 234
    return-object p0
.end method

.method public a(J)Lu/aly/bb;
    .locals 1

    .prologue
    .line 206
    iput-wide p1, p0, Lu/aly/bb;->b:J

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bb;->b(Z)V

    .line 208
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bb;
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lu/aly/bb;->a:Ljava/lang/String;

    .line 180
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
    sget-object v0, Lu/aly/bb;->i:Ljava/util/Map;

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
    .locals 1

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bb;->a:Ljava/lang/String;

    .line 199
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/bw;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lu/aly/bb;->c(I)Lu/aly/bb$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bb;->a:Ljava/lang/String;

    .line 168
    invoke-virtual {p0, v2}, Lu/aly/bb;->b(Z)V

    .line 169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/bb;->b:J

    .line 170
    invoke-virtual {p0, v2}, Lu/aly/bb;->c(Z)V

    .line 171
    iput v2, p0, Lu/aly/bb;->c:I

    .line 172
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
    sget-object v0, Lu/aly/bb;->i:Ljava/util/Map;

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
    .locals 2

    .prologue
    .line 224
    iget-byte v0, p0, Lu/aly/bb;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bm;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bb;->l:B

    .line 225
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lu/aly/bb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/bb$e;
    .locals 1

    .prologue
    .line 254
    invoke-static {p1}, Lu/aly/bb$e;->a(I)Lu/aly/bb$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 250
    iget-byte v0, p0, Lu/aly/bb;->l:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/bm;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bb;->l:B

    .line 251
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bb;->a:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lu/aly/bb;->a:Ljava/lang/String;

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
    .line 202
    iget-wide v0, p0, Lu/aly/bb;->b:J

    return-wide v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 212
    iget-byte v0, p0, Lu/aly/bb;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bm;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bb;->l:B

    .line 213
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 220
    iget-byte v0, p0, Lu/aly/bb;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bm;->a(BI)Z

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lu/aly/bb;->c:I

    return v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 238
    iget-byte v0, p0, Lu/aly/bb;->l:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bm;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bb;->l:B

    .line 239
    return-void
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 246
    iget-byte v0, p0, Lu/aly/bb;->l:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bm;->a(BI)Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lu/aly/bb;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'identity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    invoke-virtual {p0}, Lu/aly/bb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    return-void
.end method

.method public synthetic p()Lu/aly/bp;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lu/aly/bb;->a()Lu/aly/bb;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdSnapshot("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    const-string v1, "identity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Lu/aly/bb;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 272
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-wide v2, p0, Lu/aly/bb;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget v1, p0, Lu/aly/bb;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    iget-object v1, p0, Lu/aly/bb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
