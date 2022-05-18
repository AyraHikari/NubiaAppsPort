.class public Lcom/mpatric/mp3agic/q;
.super Ljava/lang/Object;
.source "ID3v2TagFactory.java"


# direct methods
.method public static a([B)Lcom/mpatric/mp3agic/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/NoSuchTagException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-static {p0}, Lcom/mpatric/mp3agic/q;->b([B)V

    .line 7
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 13
    new-instance v0, Lcom/mpatric/mp3agic/UnsupportedTagException;

    const-string v1, "Tag version not supported"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/UnsupportedTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :pswitch_0
    invoke-static {p0}, Lcom/mpatric/mp3agic/q;->c([B)Lcom/mpatric/mp3agic/b;

    move-result-object v0

    .line 11
    :goto_0
    return-object v0

    .line 10
    :pswitch_1
    new-instance v0, Lcom/mpatric/mp3agic/k;

    invoke-direct {v0, p0}, Lcom/mpatric/mp3agic/k;-><init>([B)V

    goto :goto_0

    .line 11
    :pswitch_2
    new-instance v0, Lcom/mpatric/mp3agic/m;

    invoke-direct {v0, p0}, Lcom/mpatric/mp3agic/m;-><init>([B)V

    goto :goto_0

    .line 8
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/NoSuchTagException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 25
    array-length v0, p0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 26
    new-instance v0, Lcom/mpatric/mp3agic/NoSuchTagException;

    const-string v1, "Buffer too short"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/NoSuchTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    const-string v0, "ID3"

    const/4 v1, 0x0

    const-string v2, "ID3"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    new-instance v0, Lcom/mpatric/mp3agic/NoSuchTagException;

    invoke-direct {v0}, Lcom/mpatric/mp3agic/NoSuchTagException;-><init>()V

    throw v0

    .line 31
    :cond_1
    aget-byte v0, p0, v3

    .line 32
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    .line 33
    aget-byte v1, p0, v4

    .line 34
    new-instance v2, Lcom/mpatric/mp3agic/UnsupportedTagException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported version 2."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/mpatric/mp3agic/UnsupportedTagException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_2
    return-void
.end method

.method private static c([B)Lcom/mpatric/mp3agic/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/NoSuchTagException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lcom/mpatric/mp3agic/j;

    invoke-direct {v0, p0}, Lcom/mpatric/mp3agic/j;-><init>([B)V

    .line 18
    invoke-virtual {v0}, Lcom/mpatric/mp3agic/j;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 19
    new-instance v0, Lcom/mpatric/mp3agic/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/mpatric/mp3agic/j;-><init>([BZ)V

    .line 21
    :cond_0
    return-object v0
.end method
