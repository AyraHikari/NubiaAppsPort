.class public Lcom/mpatric/mp3agic/s;
.super Lcom/mpatric/mp3agic/f;
.source "Mp3File.java"


# instance fields
.field protected d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mpatric/mp3agic/u;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:D

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Lcom/mpatric/mp3agic/g;

.field private u:Lcom/mpatric/mp3agic/i;

.field private v:[B

.field private w:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0}, Lcom/mpatric/mp3agic/f;-><init>()V

    .line 18
    iput v0, p0, Lcom/mpatric/mp3agic/s;->e:I

    .line 19
    iput v0, p0, Lcom/mpatric/mp3agic/s;->f:I

    .line 20
    iput v0, p0, Lcom/mpatric/mp3agic/s;->g:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/mpatric/mp3agic/s;->h:I

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mpatric/mp3agic/s;->i:Ljava/util/Map;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mpatric/mp3agic/s;->k:D

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 42
    const/high16 v0, 0x10000

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/mpatric/mp3agic/s;-><init>(Ljava/lang/String;IZ)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 54
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/f;-><init>(Ljava/lang/String;)V

    .line 18
    iput v0, p0, Lcom/mpatric/mp3agic/s;->e:I

    .line 19
    iput v0, p0, Lcom/mpatric/mp3agic/s;->f:I

    .line 20
    iput v0, p0, Lcom/mpatric/mp3agic/s;->g:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/mpatric/mp3agic/s;->h:I

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mpatric/mp3agic/s;->i:Ljava/util/Map;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mpatric/mp3agic/s;->k:D

    .line 55
    invoke-direct {p0, p2, p3}, Lcom/mpatric/mp3agic/s;->a(IZ)V

    .line 56
    return-void
.end method

.method private a([BIII)I
    .locals 6

    .prologue
    .line 159
    move v0, p4

    :goto_0
    add-int/lit8 v1, p2, -0x28

    if-lt v0, v1, :cond_0

    .line 189
    :goto_1
    return v0

    .line 160
    :cond_0
    aget-byte v1, p1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, -0x20

    const/16 v2, -0x20

    if-ne v1, v2, :cond_2

    .line 162
    :try_start_0
    new-instance v1, Lcom/mpatric/mp3agic/t;

    aget-byte v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p1, v4

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, p1, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mpatric/mp3agic/t;-><init>(BBBB)V

    .line 163
    iget v2, p0, Lcom/mpatric/mp3agic/s;->e:I

    if-gez v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/mpatric/mp3agic/s;->a([BI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    add-int v2, p3, v0

    iput v2, p0, Lcom/mpatric/mp3agic/s;->e:I

    .line 165
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/t;->a()I

    move-result v2

    iput v2, p0, Lcom/mpatric/mp3agic/s;->j:I

    .line 166
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/t;->j()I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    goto :goto_0

    .line 168
    :cond_1
    add-int v2, p3, v0

    iput v2, p0, Lcom/mpatric/mp3agic/s;->f:I

    .line 169
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/t;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mpatric/mp3agic/s;->l:Ljava/lang/String;

    .line 170
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/t;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mpatric/mp3agic/s;->m:Ljava/lang/String;

    .line 171
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/t;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mpatric/mp3agic/s;->n:Ljava/lang/String;

    .line 172
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/t;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mpatric/mp3agic/s;->o:Ljava/lang/String;

    .line 173
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/t;->h()I

    move-result v2

    iput v2, p0, Lcom/mpatric/mp3agic/s;->p:I

    .line 174
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/t;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mpatric/mp3agic/s;->s:Ljava/lang/String;

    .line 175
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/t;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mpatric/mp3agic/s;->q:Z

    .line 176
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/t;->g()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mpatric/mp3agic/s;->r:Z

    .line 177
    iget v2, p0, Lcom/mpatric/mp3agic/s;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mpatric/mp3agic/s;->h:I

    .line 178
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/t;->a()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mpatric/mp3agic/s;->a(I)V

    .line 179
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/t;->j()I
    :try_end_0
    .catch Lcom/mpatric/mp3agic/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v0, v1

    .line 180
    goto/16 :goto_1

    .line 182
    :catch_0
    move-exception v1

    .line 183
    add-int/lit8 v0, v0, 0x1

    .line 185
    goto/16 :goto_0

    .line 186
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 239
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 240
    iget-object v0, p0, Lcom/mpatric/mp3agic/s;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mpatric/mp3agic/u;

    .line 241
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/mpatric/mp3agic/u;->a()V

    .line 246
    :goto_0
    iget-wide v0, p0, Lcom/mpatric/mp3agic/s;->k:D

    iget v2, p0, Lcom/mpatric/mp3agic/s;->h:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    int-to-double v2, p1

    add-double/2addr v0, v2

    iget v2, p0, Lcom/mpatric/mp3agic/s;->h:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/mpatric/mp3agic/s;->k:D

    .line 247
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/mpatric/mp3agic/s;->i:Ljava/util/Map;

    new-instance v2, Lcom/mpatric/mp3agic/u;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/mpatric/mp3agic/u;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 72
    const/16 v0, 0x29

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iput p1, p0, Lcom/mpatric/mp3agic/s;->d:I

    .line 75
    iput-boolean p2, p0, Lcom/mpatric/mp3agic/s;->w:Z

    .line 77
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/mpatric/mp3agic/s;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mpatric/mp3agic/s;->c(Ljava/io/RandomAccessFile;)V

    .line 81
    invoke-direct {p0, v1}, Lcom/mpatric/mp3agic/s;->b(Ljava/io/RandomAccessFile;)V

    .line 82
    iget v0, p0, Lcom/mpatric/mp3agic/s;->f:I

    if-gez v0, :cond_1

    .line 83
    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v2, "No mpegs frames found"

    invoke-direct {v0, v2}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 91
    throw v0

    .line 85
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/mpatric/mp3agic/s;->d(Ljava/io/RandomAccessFile;)V

    .line 86
    if-eqz p2, :cond_2

    .line 87
    invoke-direct {p0, v1}, Lcom/mpatric/mp3agic/s;->e(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 92
    return-void
.end method

.method private a(Lcom/mpatric/mp3agic/t;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 232
    iget v0, p0, Lcom/mpatric/mp3agic/s;->p:I

    invoke-virtual {p1}, Lcom/mpatric/mp3agic/t;->h()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Inconsistent frame header"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/mpatric/mp3agic/s;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mpatric/mp3agic/t;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Inconsistent frame header"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/mpatric/mp3agic/s;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mpatric/mp3agic/t;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Inconsistent frame header"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    invoke-virtual {p1}, Lcom/mpatric/mp3agic/t;->j()I

    move-result v0

    add-int/2addr v0, p2

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/mpatric/mp3agic/s;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Frame would extend beyond end of file"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_3
    return-void
.end method

.method private a([BI)Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 216
    array-length v1, p1

    add-int/lit8 v2, p2, 0xd

    add-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_2

    .line 217
    const-string v1, "Xing"

    add-int/lit8 v2, p2, 0xd

    invoke-static {p1, v2, v3}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    const-string v1, "Info"

    add-int/lit8 v2, p2, 0xd

    invoke-static {p1, v2, v3}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    array-length v1, p1

    add-int/lit8 v2, p2, 0x15

    add-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_2

    .line 220
    const-string v1, "Xing"

    add-int/lit8 v2, p2, 0x15

    invoke-static {p1, v2, v3}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    const-string v1, "Info"

    add-int/lit8 v2, p2, 0x15

    invoke-static {p1, v2, v3}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    array-length v1, p1

    add-int/lit8 v2, p2, 0x24

    add-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_2

    .line 223
    const-string v1, "Xing"

    add-int/lit8 v2, p2, 0x24

    invoke-static {p1, v2, v3}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    const-string v1, "Info"

    add-int/lit8 v2, p2, 0x24

    invoke-static {p1, v2, v3}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b([BIII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 193
    :goto_0
    add-int/lit8 v0, p2, -0x28

    if-lt p4, v0, :cond_1

    .line 206
    :cond_0
    return p4

    .line 194
    :cond_1
    new-instance v0, Lcom/mpatric/mp3agic/t;

    aget-byte v1, p1, p4

    add-int/lit8 v2, p4, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v3, p4, 0x2

    aget-byte v3, p1, v3

    add-int/lit8 v4, p4, 0x3

    aget-byte v4, p1, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mpatric/mp3agic/t;-><init>(BBBB)V

    .line 195
    add-int v1, p3, p4

    invoke-direct {p0, v0, v1}, Lcom/mpatric/mp3agic/s;->a(Lcom/mpatric/mp3agic/t;I)V

    .line 196
    add-int v1, p3, p4

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/t;->j()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 197
    invoke-direct {p0}, Lcom/mpatric/mp3agic/s;->g()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 198
    add-int v1, p3, p4

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/t;->j()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mpatric/mp3agic/s;->g:I

    .line 199
    iget v1, p0, Lcom/mpatric/mp3agic/s;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mpatric/mp3agic/s;->h:I

    .line 200
    invoke-virtual {v0}, Lcom/mpatric/mp3agic/t;->a()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mpatric/mp3agic/s;->a(I)V

    .line 201
    invoke-virtual {v0}, Lcom/mpatric/mp3agic/t;->j()I

    move-result v0

    add-int/2addr p4, v0

    goto :goto_0
.end method

.method private b(Ljava/io/RandomAccessFile;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 116
    iget v0, p0, Lcom/mpatric/mp3agic/s;->d:I

    new-array v5, v0, [B

    .line 117
    invoke-virtual {p0, p1}, Lcom/mpatric/mp3agic/s;->a(Ljava/io/RandomAccessFile;)I

    move-result v1

    .line 118
    int-to-long v6, v1

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    move v0, v2

    move v4, v1

    .line 121
    :goto_0
    if-eqz v0, :cond_1

    .line 156
    :cond_0
    return-void

    .line 122
    :cond_1
    iget v3, p0, Lcom/mpatric/mp3agic/s;->d:I

    invoke-virtual {p1, v5, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    .line 123
    iget v3, p0, Lcom/mpatric/mp3agic/s;->d:I

    if-ge v6, v3, :cond_6

    const/4 v0, 0x1

    move v3, v0

    .line 124
    :goto_1
    const/16 v0, 0x28

    if-lt v6, v0, :cond_5

    .line 127
    const/4 v0, 0x0

    .line 128
    :try_start_0
    iget v7, p0, Lcom/mpatric/mp3agic/s;->f:I

    if-gez v7, :cond_4

    .line 129
    invoke-direct {p0, v5, v6, v4, v0}, Lcom/mpatric/mp3agic/s;->a([BIII)I

    move-result v0

    .line 130
    iget v7, p0, Lcom/mpatric/mp3agic/s;->f:I

    if-ltz v7, :cond_2

    iget-boolean v7, p0, Lcom/mpatric/mp3agic/s;->w:Z

    if-eqz v7, :cond_0

    .line 133
    :cond_2
    iget v1, p0, Lcom/mpatric/mp3agic/s;->f:I

    .line 135
    :goto_2
    invoke-direct {p0, v5, v6, v4, v0}, Lcom/mpatric/mp3agic/s;->b([BIII)I

    move-result v0

    .line 136
    add-int/2addr v0, v4

    .line 137
    int-to-long v6, v0

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Lcom/mpatric/mp3agic/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    move v0, v3

    .line 138
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    iget v3, p0, Lcom/mpatric/mp3agic/s;->h:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 141
    iput v8, p0, Lcom/mpatric/mp3agic/s;->f:I

    .line 142
    iput v8, p0, Lcom/mpatric/mp3agic/s;->e:I

    .line 143
    iput v2, p0, Lcom/mpatric/mp3agic/s;->h:I

    .line 144
    iget-object v3, p0, Lcom/mpatric/mp3agic/s;->i:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 146
    add-int/lit8 v3, v1, 0x1

    .line 147
    if-nez v3, :cond_3

    new-instance v1, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v2, "Valid start of mpeg frames not found"

    invoke-direct {v1, v2, v0}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 148
    :cond_3
    int-to-long v6, v3

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    move v0, v2

    move v4, v3

    .line 149
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    move v3, v0

    goto :goto_1
.end method

.method private c(Ljava/io/RandomAccessFile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x80

    .line 250
    new-array v0, v6, [B

    .line 251
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/s;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 252
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 253
    if-ge v1, v6, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not enough bytes read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    :try_start_0
    new-instance v1, Lcom/mpatric/mp3agic/h;

    invoke-direct {v1, v0}, Lcom/mpatric/mp3agic/h;-><init>([B)V

    iput-object v1, p0, Lcom/mpatric/mp3agic/s;->t:Lcom/mpatric/mp3agic/g;
    :try_end_0
    .catch Lcom/mpatric/mp3agic/NoSuchTagException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mpatric/mp3agic/s;->t:Lcom/mpatric/mp3agic/g;

    goto :goto_0
.end method

.method private d(Ljava/io/RandomAccessFile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 262
    iget v0, p0, Lcom/mpatric/mp3agic/s;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mpatric/mp3agic/s;->f:I

    if-nez v0, :cond_1

    .line 263
    :cond_0
    iput-object v4, p0, Lcom/mpatric/mp3agic/s;->u:Lcom/mpatric/mp3agic/i;

    .line 278
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/s;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mpatric/mp3agic/s;->e:I

    .line 268
    :goto_1
    new-array v1, v0, [B

    .line 269
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 270
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 271
    if-ge v2, v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not enough bytes read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_2
    iget v0, p0, Lcom/mpatric/mp3agic/s;->f:I

    goto :goto_1

    .line 273
    :cond_3
    :try_start_0
    invoke-static {v1}, Lcom/mpatric/mp3agic/q;->a([B)Lcom/mpatric/mp3agic/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/s;->u:Lcom/mpatric/mp3agic/i;
    :try_end_0
    .catch Lcom/mpatric/mp3agic/NoSuchTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    iput-object v4, p0, Lcom/mpatric/mp3agic/s;->u:Lcom/mpatric/mp3agic/i;

    goto :goto_0
.end method

.method private e(Ljava/io/RandomAccessFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/s;->a()J

    move-result-wide v0

    iget v2, p0, Lcom/mpatric/mp3agic/s;->g:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 282
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/s;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x80

    .line 283
    :cond_0
    if-gtz v0, :cond_2

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mpatric/mp3agic/s;->v:[B

    .line 292
    :cond_1
    return-void

    .line 287
    :cond_2
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/mpatric/mp3agic/s;->v:[B

    .line 288
    iget v1, p0, Lcom/mpatric/mp3agic/s;->g:I

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 289
    iget-object v1, p0, Lcom/mpatric/mp3agic/s;->v:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 290
    if-ge v1, v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not enough bytes read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g()I
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/s;->a()J

    move-result-wide v0

    long-to-int v0, v0

    .line 211
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/s;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x80

    .line 212
    :cond_0
    return v0
.end method


# virtual methods
.method protected a(Ljava/io/RandomAccessFile;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0xa

    .line 95
    new-array v1, v4, [B

    .line 97
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 98
    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 99
    if-ne v2, v4, :cond_0

    .line 101
    :try_start_1
    invoke-static {v1}, Lcom/mpatric/mp3agic/q;->b([B)V

    .line 102
    const/4 v2, 0x6

    aget-byte v2, v1, v2

    const/4 v3, 0x7

    aget-byte v3, v1, v3

    const/16 v4, 0x8

    aget-byte v4, v1, v4

    const/16 v5, 0x9

    aget-byte v1, v1, v5

    invoke-static {v2, v3, v4, v1}, Lcom/mpatric/mp3agic/c;->b(BBBB)I
    :try_end_1
    .catch Lcom/mpatric/mp3agic/NoSuchTagException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/mpatric/mp3agic/UnsupportedTagException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    add-int/lit8 v0, v0, 0xa

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_0

    .line 105
    :catch_1
    move-exception v1

    goto :goto_0

    .line 103
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/mpatric/mp3agic/s;->e:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mpatric/mp3agic/s;->t:Lcom/mpatric/mp3agic/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/mpatric/mp3agic/g;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mpatric/mp3agic/s;->t:Lcom/mpatric/mp3agic/g;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/mpatric/mp3agic/s;->u:Lcom/mpatric/mp3agic/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/mpatric/mp3agic/i;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/mpatric/mp3agic/s;->u:Lcom/mpatric/mp3agic/i;

    return-object v0
.end method
