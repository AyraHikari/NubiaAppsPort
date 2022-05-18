.class public Lcom/mpatric/mp3agic/u;
.super Ljava/lang/Object;
.source "MutableInteger.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/mpatric/mp3agic/u;->a:I

    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/mpatric/mp3agic/u;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mpatric/mp3agic/u;->a:I

    .line 13
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    if-ne p0, p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    check-cast p1, Lcom/mpatric/mp3agic/u;

    .line 40
    iget v2, p0, Lcom/mpatric/mp3agic/u;->a:I

    iget v3, p1, Lcom/mpatric/mp3agic/u;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 41
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 25
    .line 27
    iget v0, p0, Lcom/mpatric/mp3agic/u;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 28
    return v0
.end method
