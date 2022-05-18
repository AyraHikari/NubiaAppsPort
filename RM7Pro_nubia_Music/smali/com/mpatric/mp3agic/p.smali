.class public Lcom/mpatric/mp3agic/p;
.super Lcom/mpatric/mp3agic/n;
.source "ID3v2ObseleteFrame.java"


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/mpatric/mp3agic/n;-><init>([BI)V

    .line 12
    return-void
.end method


# virtual methods
.method protected a([BI)V
    .locals 4

    .prologue
    .line 25
    const/4 v0, 0x0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Lcom/mpatric/mp3agic/c;->a(BBBB)I

    move-result v0

    iput v0, p0, Lcom/mpatric/mp3agic/p;->b:I

    .line 26
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/mpatric/mp3agic/p;->b:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method protected c([BI)I
    .locals 2

    .prologue
    .line 19
    add-int/lit8 v0, p2, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/p;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/mpatric/mp3agic/p;->a([BI)V

    .line 21
    add-int/lit8 v0, p2, 0x6

    return v0
.end method
