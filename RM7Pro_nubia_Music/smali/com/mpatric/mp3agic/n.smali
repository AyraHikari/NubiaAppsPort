.class public Lcom/mpatric/mp3agic/n;
.super Ljava/lang/Object;
.source "ID3v2Frame.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:[B

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/mpatric/mp3agic/n;->b:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mpatric/mp3agic/n;->c:[B

    .line 26
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/n;->d:Z

    .line 27
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/n;->e:Z

    .line 28
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/n;->f:Z

    .line 29
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/n;->g:Z

    .line 30
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/n;->h:Z

    .line 31
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/n;->i:Z

    .line 32
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/n;->j:Z

    .line 33
    iput-boolean v1, p0, Lcom/mpatric/mp3agic/n;->k:Z

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/mpatric/mp3agic/n;->b([BI)V

    .line 37
    return-void
.end method

.method private d([BI)V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 63
    add-int/lit8 v0, p2, 0x8

    aget-byte v0, p1, v0

    invoke-static {v0, v2}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/n;->d:Z

    .line 64
    add-int/lit8 v0, p2, 0x8

    aget-byte v0, p1, v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/n;->e:Z

    .line 65
    add-int/lit8 v0, p2, 0x8

    aget-byte v0, p1, v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/n;->f:Z

    .line 66
    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    invoke-static {v0, v2}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/n;->g:Z

    .line 67
    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/n;->h:Z

    .line 68
    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/n;->i:Z

    .line 69
    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/n;->j:Z

    .line 70
    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/n;->k:Z

    .line 71
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 79
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    .line 76
    :cond_2
    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a valid frame - invalid tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected a([BI)V
    .locals 4

    .prologue
    .line 59
    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x4

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Lcom/mpatric/mp3agic/c;->a(BBBB)I

    move-result v0

    iput v0, p0, Lcom/mpatric/mp3agic/n;->b:I

    .line 60
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected b([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/mpatric/mp3agic/n;->c([BI)I

    move-result v0

    .line 47
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/n;->a()V

    .line 48
    iget v1, p0, Lcom/mpatric/mp3agic/n;->b:I

    invoke-static {p1, v0, v1}, Lcom/mpatric/mp3agic/c;->b([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/n;->c:[B

    .line 49
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/mpatric/mp3agic/n;->b:I

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method protected c([BI)I
    .locals 2

    .prologue
    .line 52
    add-int/lit8 v0, p2, 0x0

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/mpatric/mp3agic/n;->a([BI)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/mpatric/mp3agic/n;->d([BI)V

    .line 55
    add-int/lit8 v0, p2, 0xa

    return v0
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mpatric/mp3agic/n;->c:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    if-ne p0, p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 199
    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 201
    goto :goto_0

    .line 202
    :cond_3
    check-cast p1, Lcom/mpatric/mp3agic/n;

    .line 203
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/n;->h:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/n;->h:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 204
    goto :goto_0

    .line 205
    :cond_4
    iget-object v2, p0, Lcom/mpatric/mp3agic/n;->c:[B

    iget-object v3, p1, Lcom/mpatric/mp3agic/n;->c:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 206
    goto :goto_0

    .line 207
    :cond_5
    iget v2, p0, Lcom/mpatric/mp3agic/n;->b:I

    iget v3, p1, Lcom/mpatric/mp3agic/n;->b:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 208
    goto :goto_0

    .line 209
    :cond_6
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/n;->k:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/n;->k:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 210
    goto :goto_0

    .line 211
    :cond_7
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/n;->i:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/n;->i:Z

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 212
    goto :goto_0

    .line 213
    :cond_8
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/n;->g:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/n;->g:Z

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 214
    goto :goto_0

    .line 215
    :cond_9
    iget-object v2, p0, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 216
    iget-object v2, p1, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    if-eqz v2, :cond_b

    move v0, v1

    .line 217
    goto :goto_0

    .line 218
    :cond_a
    iget-object v2, p0, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 219
    goto :goto_0

    .line 220
    :cond_b
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/n;->e:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/n;->e:Z

    if-eq v2, v3, :cond_c

    move v0, v1

    .line 221
    goto :goto_0

    .line 222
    :cond_c
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/n;->d:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/n;->d:Z

    if-eq v2, v3, :cond_d

    move v0, v1

    .line 223
    goto :goto_0

    .line 224
    :cond_d
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/n;->f:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/n;->f:Z

    if-eq v2, v3, :cond_e

    move v0, v1

    .line 225
    goto :goto_0

    .line 226
    :cond_e
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/n;->j:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/n;->j:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 227
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    .line 178
    .line 180
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/n;->h:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/mpatric/mp3agic/n;->c:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    .line 182
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/mpatric/mp3agic/n;->b:I

    add-int/2addr v0, v3

    .line 183
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/mpatric/mp3agic/n;->k:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 184
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/mpatric/mp3agic/n;->i:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 185
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/mpatric/mp3agic/n;->g:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    .line 186
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_4
    add-int/2addr v0, v3

    .line 187
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/mpatric/mp3agic/n;->e:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    .line 188
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/mpatric/mp3agic/n;->d:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    .line 189
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/mpatric/mp3agic/n;->f:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v3

    .line 190
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/mpatric/mp3agic/n;->j:Z

    if-eqz v3, :cond_8

    :goto_8
    add-int/2addr v0, v1

    .line 191
    return v0

    :cond_0
    move v0, v2

    .line 180
    goto :goto_0

    :cond_1
    move v0, v2

    .line 183
    goto :goto_1

    :cond_2
    move v0, v2

    .line 184
    goto :goto_2

    :cond_3
    move v0, v2

    .line 185
    goto :goto_3

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/mpatric/mp3agic/n;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    move v0, v2

    .line 187
    goto :goto_5

    :cond_6
    move v0, v2

    .line 188
    goto :goto_6

    :cond_7
    move v0, v2

    .line 189
    goto :goto_7

    :cond_8
    move v1, v2

    .line 190
    goto :goto_8
.end method
