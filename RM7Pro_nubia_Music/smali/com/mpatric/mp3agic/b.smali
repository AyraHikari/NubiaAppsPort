.class public abstract Lcom/mpatric/mp3agic/b;
.super Ljava/lang/Object;
.source "AbstractID3v2Tag.java"

# interfaces
.implements Lcom/mpatric/mp3agic/i;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:[B

.field private k:Z

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mpatric/mp3agic/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->a:Z

    .line 83
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->b:Z

    .line 84
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->c:Z

    .line 85
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->d:Z

    .line 86
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->e:Z

    .line 87
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->f:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mpatric/mp3agic/b;->g:Ljava/lang/String;

    .line 89
    iput v1, p0, Lcom/mpatric/mp3agic/b;->h:I

    .line 92
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->k:Z

    .line 97
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mpatric/mp3agic/b;->l:Ljava/util/Map;

    .line 98
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/NoSuchTagException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mpatric/mp3agic/b;-><init>([BZ)V

    .line 102
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/NoSuchTagException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->a:Z

    .line 83
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->b:Z

    .line 84
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->c:Z

    .line 85
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->d:Z

    .line 86
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->e:Z

    .line 87
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->f:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mpatric/mp3agic/b;->g:Ljava/lang/String;

    .line 89
    iput v1, p0, Lcom/mpatric/mp3agic/b;->h:I

    .line 92
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/b;->k:Z

    .line 105
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mpatric/mp3agic/b;->l:Ljava/util/Map;

    .line 106
    iput-boolean p2, p0, Lcom/mpatric/mp3agic/b;->k:Z

    .line 107
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/b;->b([B)V

    .line 108
    return-void
.end method

.method private b([BI)I
    .locals 4

    .prologue
    .line 145
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Lcom/mpatric/mp3agic/c;->b(BBBB)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mpatric/mp3agic/b;->i:I

    .line 146
    add-int/lit8 v0, p2, 0x4

    iget v1, p0, Lcom/mpatric/mp3agic/b;->i:I

    invoke-static {p1, v0, v1}, Lcom/mpatric/mp3agic/c;->b([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/b;->j:[B

    .line 147
    iget v0, p0, Lcom/mpatric/mp3agic/b;->i:I

    return v0
.end method

.method private b([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/NoSuchTagException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p1}, Lcom/mpatric/mp3agic/q;->b([B)V

    .line 112
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/b;->c([B)I

    move-result v0

    .line 114
    :try_start_0
    iget-boolean v1, p0, Lcom/mpatric/mp3agic/b;->b:Z

    if-eqz v1, :cond_2

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/mpatric/mp3agic/b;->b([BI)I

    move-result v0

    move v1, v0

    .line 117
    :goto_0
    iget v0, p0, Lcom/mpatric/mp3agic/b;->h:I

    .line 118
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/b;->d:Z

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0xa

    .line 119
    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/mpatric/mp3agic/b;->a([BII)I

    .line 120
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/b;->d:Z

    if-eqz v0, :cond_1

    .line 121
    iget v0, p0, Lcom/mpatric/mp3agic/b;->h:I

    invoke-direct {p0, p1, v0}, Lcom/mpatric/mp3agic/b;->c([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_1
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v2, "Premature end of tag"

    invoke-direct {v1, v2, v0}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private c([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 129
    aget-byte v0, p1, v4

    .line 130
    aget-byte v1, p1, v5

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mpatric/mp3agic/b;->g:Ljava/lang/String;

    .line 132
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    .line 133
    new-instance v0, Lcom/mpatric/mp3agic/UnsupportedTagException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mpatric/mp3agic/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/UnsupportedTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mpatric/mp3agic/b;->a([B)V

    .line 136
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_1

    new-instance v0, Lcom/mpatric/mp3agic/UnsupportedTagException;

    const-string v1, "Unrecognised bits in header"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/UnsupportedTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    const/4 v0, 0x6

    aget-byte v0, p1, v0

    const/4 v1, 0x7

    aget-byte v1, p1, v1

    const/16 v2, 0x8

    aget-byte v2, p1, v2

    const/16 v3, 0x9

    aget-byte v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Lcom/mpatric/mp3agic/c;->b(BBBB)I

    move-result v0

    iput v0, p0, Lcom/mpatric/mp3agic/b;->h:I

    .line 138
    iget v0, p0, Lcom/mpatric/mp3agic/b;->h:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Zero size tag"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_2
    const/16 v0, 0xa

    return v0
.end method

.method private c([BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 190
    const-string v0, "3DI"

    const-string v1, "3DI"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Invalid footer"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    const/16 v0, 0xa

    return v0
.end method


# virtual methods
.method protected a([BII)I
    .locals 2

    .prologue
    .line 151
    .line 152
    :goto_0
    if-le p2, p3, :cond_0

    .line 162
    :goto_1
    return p2

    .line 155
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mpatric/mp3agic/b;->a([BI)Lcom/mpatric/mp3agic/n;

    move-result-object v0

    .line 156
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mpatric/mp3agic/b;->a(Lcom/mpatric/mp3agic/n;Z)V

    .line 157
    invoke-virtual {v0}, Lcom/mpatric/mp3agic/n;->c()I
    :try_end_0
    .catch Lcom/mpatric/mp3agic/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected a([BI)Lcom/mpatric/mp3agic/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/b;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mpatric/mp3agic/p;

    invoke-direct {v0, p1, p2}, Lcom/mpatric/mp3agic/p;-><init>([BI)V

    .line 181
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mpatric/mp3agic/n;

    invoke-direct {v0, p1, p2}, Lcom/mpatric/mp3agic/n;-><init>([BI)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Lcom/mpatric/mp3agic/r;
    .locals 3

    .prologue
    .line 991
    iget-object v0, p0, Lcom/mpatric/mp3agic/b;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mpatric/mp3agic/o;

    .line 992
    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {v0}, Lcom/mpatric/mp3agic/o;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mpatric/mp3agic/n;

    .line 996
    :try_start_0
    new-instance v1, Lcom/mpatric/mp3agic/r;

    invoke-virtual {p0}, Lcom/mpatric/mp3agic/b;->a()Z

    move-result v2

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/n;->d()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mpatric/mp3agic/r;-><init>(Z[B)V
    :try_end_0
    .catch Lcom/mpatric/mp3agic/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1002
    :goto_0
    return-object v0

    .line 998
    :catch_0
    move-exception v0

    .line 1002
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/mpatric/mp3agic/n;Z)V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mpatric/mp3agic/b;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mpatric/mp3agic/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mpatric/mp3agic/o;

    .line 167
    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/mpatric/mp3agic/o;

    invoke-virtual {p1}, Lcom/mpatric/mp3agic/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/o;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, p1}, Lcom/mpatric/mp3agic/o;->a(Lcom/mpatric/mp3agic/n;)V

    .line 170
    iget-object v1, p0, Lcom/mpatric/mp3agic/b;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mpatric/mp3agic/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :goto_0
    return-void

    .line 171
    :cond_0
    if-eqz p2, :cond_1

    .line 172
    invoke-virtual {v0}, Lcom/mpatric/mp3agic/o;->a()V

    .line 173
    invoke-virtual {v0, p1}, Lcom/mpatric/mp3agic/o;->a(Lcom/mpatric/mp3agic/n;)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v0, p1}, Lcom/mpatric/mp3agic/o;->a(Lcom/mpatric/mp3agic/n;)V

    goto :goto_0
.end method

.method protected abstract a([B)V
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mpatric/mp3agic/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/mpatric/mp3agic/b;->l:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/b;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "TP1"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mpatric/mp3agic/b;->a(Ljava/lang/String;)Lcom/mpatric/mp3agic/r;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/r;->a()Lcom/mpatric/mp3agic/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/r;->a()Lcom/mpatric/mp3agic/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/e;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    :goto_1
    return-object v0

    .line 421
    :cond_0
    const-string v0, "TPE1"

    goto :goto_0

    .line 423
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/b;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "TT2"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mpatric/mp3agic/b;->a(Ljava/lang/String;)Lcom/mpatric/mp3agic/r;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/r;->a()Lcom/mpatric/mp3agic/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/r;->a()Lcom/mpatric/mp3agic/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/e;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    :goto_1
    return-object v0

    .line 449
    :cond_0
    const-string v0, "TIT2"

    goto :goto_0

    .line 451
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/b;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "TAL"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mpatric/mp3agic/b;->a(Ljava/lang/String;)Lcom/mpatric/mp3agic/r;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/r;->a()Lcom/mpatric/mp3agic/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/r;->a()Lcom/mpatric/mp3agic/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/e;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    :goto_1
    return-object v0

    .line 463
    :cond_0
    const-string v0, "TALB"

    goto :goto_0

    .line 465
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1089
    instance-of v2, p1, Lcom/mpatric/mp3agic/b;

    if-nez v2, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return v0

    .line 1090
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1091
    :cond_2
    check-cast p1, Lcom/mpatric/mp3agic/b;

    .line 1092
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/b;->a:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/b;->a:Z

    if-ne v2, v3, :cond_0

    .line 1093
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/b;->b:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/b;->b:Z

    if-ne v2, v3, :cond_0

    .line 1094
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/b;->c:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/b;->c:Z

    if-ne v2, v3, :cond_0

    .line 1095
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/b;->d:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/b;->d:Z

    if-ne v2, v3, :cond_0

    .line 1096
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/b;->e:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/b;->e:Z

    if-ne v2, v3, :cond_0

    .line 1097
    iget v2, p0, Lcom/mpatric/mp3agic/b;->h:I

    iget v3, p1, Lcom/mpatric/mp3agic/b;->h:I

    if-ne v2, v3, :cond_0

    .line 1098
    iget v2, p0, Lcom/mpatric/mp3agic/b;->i:I

    iget v3, p1, Lcom/mpatric/mp3agic/b;->i:I

    if-ne v2, v3, :cond_0

    .line 1099
    iget-object v2, p0, Lcom/mpatric/mp3agic/b;->g:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 1100
    iget-object v2, p1, Lcom/mpatric/mp3agic/b;->g:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1103
    :cond_3
    iget-object v2, p0, Lcom/mpatric/mp3agic/b;->l:Ljava/util/Map;

    if-nez v2, :cond_6

    .line 1104
    iget-object v2, p1, Lcom/mpatric/mp3agic/b;->l:Ljava/util/Map;

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 1107
    goto :goto_0

    .line 1101
    :cond_5
    iget-object v2, p1, Lcom/mpatric/mp3agic/b;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1102
    iget-object v2, p0, Lcom/mpatric/mp3agic/b;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/mpatric/mp3agic/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 1105
    :cond_6
    iget-object v2, p1, Lcom/mpatric/mp3agic/b;->l:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 1106
    iget-object v2, p0, Lcom/mpatric/mp3agic/b;->l:Ljava/util/Map;

    iget-object v3, p1, Lcom/mpatric/mp3agic/b;->l:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/b;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "TEN"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mpatric/mp3agic/b;->a(Ljava/lang/String;)Lcom/mpatric/mp3agic/r;

    move-result-object v0

    .line 888
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/r;->a()Lcom/mpatric/mp3agic/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/r;->a()Lcom/mpatric/mp3agic/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/e;->toString()Ljava/lang/String;

    move-result-object v0

    .line 889
    :goto_1
    return-object v0

    .line 887
    :cond_0
    const-string v0, "TENC"

    goto :goto_0

    .line 889
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
