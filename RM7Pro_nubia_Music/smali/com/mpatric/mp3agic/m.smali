.class public Lcom/mpatric/mp3agic/m;
.super Lcom/mpatric/mp3agic/b;
.source "ID3v24Tag.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mpatric/mp3agic/b;-><init>()V

    .line 11
    const-string v0, "4.0"

    iput-object v0, p0, Lcom/mpatric/mp3agic/m;->g:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/NoSuchTagException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/b;-><init>([B)V

    .line 16
    return-void
.end method


# virtual methods
.method protected a([BI)Lcom/mpatric/mp3agic/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/mpatric/mp3agic/l;

    invoke-direct {v0, p1, p2}, Lcom/mpatric/mp3agic/l;-><init>([BI)V

    return-object v0
.end method

.method protected a([B)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 19
    aget-byte v0, p1, v2

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/m;->a:Z

    .line 20
    aget-byte v0, p1, v2

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/m;->b:Z

    .line 21
    aget-byte v0, p1, v2

    invoke-static {v0, v2}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/m;->c:Z

    .line 22
    aget-byte v0, p1, v2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/m;->d:Z

    .line 23
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/m;->a:Z

    return v0
.end method
