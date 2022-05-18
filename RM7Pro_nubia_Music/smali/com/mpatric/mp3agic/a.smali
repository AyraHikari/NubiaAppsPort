.class public abstract Lcom/mpatric/mp3agic/a;
.super Ljava/lang/Object;
.source "AbstractID3v2FrameData.java"


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/mpatric/mp3agic/a;->a:Z

    .line 9
    return-void
.end method


# virtual methods
.method protected a([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/mpatric/mp3agic/c;->a([B)I

    move-result v0

    if-lez v0, :cond_0

    .line 13
    invoke-static {p1}, Lcom/mpatric/mp3agic/c;->b([B)[B

    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/mpatric/mp3agic/a;->b([B)V

    .line 18
    :goto_0
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mpatric/mp3agic/a;->b([B)V

    goto :goto_0
.end method

.method protected abstract b([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    if-ne p0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    check-cast p1, Lcom/mpatric/mp3agic/a;

    .line 49
    iget-boolean v2, p0, Lcom/mpatric/mp3agic/a;->a:Z

    iget-boolean v3, p1, Lcom/mpatric/mp3agic/a;->a:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 50
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 34
    .line 36
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/a;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 37
    return v0

    .line 36
    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method
