.class public Lcom/GifEncoder/d;
.super Lcom/GifEncoder/f;
.source ""

# interfaces
.implements Lcom/GifEncoder/e$a;


# instance fields
.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/GifEncoder/f;-><init>(Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/GifEncoder/d;->i:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/GifEncoder/d;->j:I

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/GifEncoder/d;->i:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/GifEncoder/d;->i:I

    invoke-virtual {p0}, Lcom/GifEncoder/b;->g()V

    iget p1, p0, Lcom/GifEncoder/f;->h:I

    add-int/lit8 p1, p1, -0x1

    iget v0, p0, Lcom/GifEncoder/d;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/GifEncoder/d;->j:I

    iget-object p1, p0, Lcom/GifEncoder/f;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public f()Lcom/GifEncoder/c;
    .locals 4

    iget-object v0, p0, Lcom/GifEncoder/f;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/GifEncoder/d;->j:I

    iget v1, p0, Lcom/GifEncoder/f;->h:I

    if-ge v0, v1, :cond_1

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/GifEncoder/d;->j:I

    :cond_2
    iget-object v0, p0, Lcom/GifEncoder/f;->g:Ljava/util/ArrayList;

    iget v1, p0, Lcom/GifEncoder/d;->j:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/GifEncoder/c;

    iget-object v2, p0, Lcom/GifEncoder/f;->f:Lcom/GifEncoder/e$b;

    iget v3, p0, Lcom/GifEncoder/d;->j:I

    invoke-direct {v1, v0, v2, v3}, Lcom/GifEncoder/c;-><init>(Ljava/lang/String;Lcom/GifEncoder/e$b;I)V

    iget v0, p0, Lcom/GifEncoder/d;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/GifEncoder/d;->j:I

    return-object v1

    :cond_3
    :goto_0
    const-string v0, "LooperShowDataAdapter"

    const-string v1, "createNextEntry return null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
