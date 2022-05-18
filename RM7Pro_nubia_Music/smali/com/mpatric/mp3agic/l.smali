.class public Lcom/mpatric/mp3agic/l;
.super Lcom/mpatric/mp3agic/n;
.source "ID3v24Frame.java"


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/mpatric/mp3agic/n;-><init>([BI)V

    .line 7
    return-void
.end method


# virtual methods
.method protected a([BI)V
    .locals 4

    .prologue
    .line 14
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

    invoke-static {v0, v1, v2, v3}, Lcom/mpatric/mp3agic/c;->b(BBBB)I

    move-result v0

    iput v0, p0, Lcom/mpatric/mp3agic/l;->b:I

    .line 15
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    instance-of v0, p1, Lcom/mpatric/mp3agic/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/mpatric/mp3agic/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
