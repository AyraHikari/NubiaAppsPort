.class public Lcom/mpatric/mp3agic/r;
.super Lcom/mpatric/mp3agic/a;
.source "ID3v2TextFrameData.java"


# instance fields
.field protected b:Lcom/mpatric/mp3agic/e;


# direct methods
.method public constructor <init>(Z[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/a;-><init>(Z)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/mpatric/mp3agic/r;->a([B)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/mpatric/mp3agic/e;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mpatric/mp3agic/r;->b:Lcom/mpatric/mp3agic/e;

    return-object v0
.end method

.method protected b([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/mpatric/mp3agic/e;

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x1

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/mpatric/mp3agic/c;->b([BII)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mpatric/mp3agic/e;-><init>(B[B)V

    iput-object v0, p0, Lcom/mpatric/mp3agic/r;->b:Lcom/mpatric/mp3agic/e;

    .line 23
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    if-ne p0, p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    invoke-super {p0, p1}, Lcom/mpatric/mp3agic/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    check-cast p1, Lcom/mpatric/mp3agic/r;

    .line 68
    iget-object v2, p0, Lcom/mpatric/mp3agic/r;->b:Lcom/mpatric/mp3agic/e;

    if-nez v2, :cond_4

    .line 69
    iget-object v2, p1, Lcom/mpatric/mp3agic/r;->b:Lcom/mpatric/mp3agic/e;

    if-eqz v2, :cond_0

    move v0, v1

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget-object v2, p0, Lcom/mpatric/mp3agic/r;->b:Lcom/mpatric/mp3agic/e;

    iget-object v3, p1, Lcom/mpatric/mp3agic/r;->b:Lcom/mpatric/mp3agic/e;

    invoke-virtual {v2, v3}, Lcom/mpatric/mp3agic/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 72
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 53
    .line 54
    invoke-super {p0}, Lcom/mpatric/mp3agic/a;->hashCode()I

    move-result v0

    .line 55
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/mpatric/mp3agic/r;->b:Lcom/mpatric/mp3agic/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 56
    return v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/mpatric/mp3agic/r;->b:Lcom/mpatric/mp3agic/e;

    invoke-virtual {v0}, Lcom/mpatric/mp3agic/e;->hashCode()I

    move-result v0

    goto :goto_0
.end method
