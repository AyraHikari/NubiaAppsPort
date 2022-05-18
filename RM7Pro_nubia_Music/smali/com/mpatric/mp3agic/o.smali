.class public Lcom/mpatric/mp3agic/o;
.super Ljava/lang/Object;
.source "ID3v2FrameSet.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mpatric/mp3agic/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mpatric/mp3agic/o;->a:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mpatric/mp3agic/o;->b:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mpatric/mp3agic/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    return-void
.end method

.method public a(Lcom/mpatric/mp3agic/n;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mpatric/mp3agic/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mpatric/mp3agic/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mpatric/mp3agic/o;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    check-cast p1, Lcom/mpatric/mp3agic/o;

    .line 55
    iget-object v2, p0, Lcom/mpatric/mp3agic/o;->b:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    .line 56
    iget-object v2, p1, Lcom/mpatric/mp3agic/o;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    move v0, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    iget-object v2, p0, Lcom/mpatric/mp3agic/o;->b:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/mpatric/mp3agic/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_5
    iget-object v2, p0, Lcom/mpatric/mp3agic/o;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 61
    iget-object v2, p1, Lcom/mpatric/mp3agic/o;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_6
    iget-object v2, p0, Lcom/mpatric/mp3agic/o;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/mpatric/mp3agic/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 39
    .line 41
    iget-object v0, p0, Lcom/mpatric/mp3agic/o;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 42
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mpatric/mp3agic/o;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 43
    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/mpatric/mp3agic/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/mpatric/mp3agic/o;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mpatric/mp3agic/o;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mpatric/mp3agic/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
