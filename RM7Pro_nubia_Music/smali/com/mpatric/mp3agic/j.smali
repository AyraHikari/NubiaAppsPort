.class public Lcom/mpatric/mp3agic/j;
.super Lcom/mpatric/mp3agic/b;
.source "ID3v22Tag.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mpatric/mp3agic/b;-><init>()V

    .line 9
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/mpatric/mp3agic/j;->g:Ljava/lang/String;

    .line 10
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
    .line 13
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/b;-><init>([B)V

    .line 14
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/NoSuchTagException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/mpatric/mp3agic/b;-><init>([BZ)V

    .line 18
    return-void
.end method


# virtual methods
.method protected a([B)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 21
    aget-byte v0, p1, v2

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/j;->a:Z

    .line 22
    aget-byte v0, p1, v2

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/mpatric/mp3agic/c;->a(BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpatric/mp3agic/j;->e:Z

    .line 23
    return-void
.end method
