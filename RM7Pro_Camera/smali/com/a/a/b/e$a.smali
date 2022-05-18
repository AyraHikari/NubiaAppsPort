.class Lcom/a/a/b/e$a;
.super Lcom/a/a/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/e<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/a/a/b/e;


# direct methods
.method constructor <init>(Lcom/a/a/b/e;II)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/a/a/b/e$a;->c:Lcom/a/a/b/e;

    invoke-direct {p0}, Lcom/a/a/b/e;-><init>()V

    .line 391
    iput p2, p0, Lcom/a/a/b/e$a;->a:I

    .line 392
    iput p3, p0, Lcom/a/a/b/e$a;->b:I

    return-void
.end method


# virtual methods
.method public a(II)Lcom/a/a/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/a/a/b/e<",
            "TE;>;"
        }
    .end annotation

    .line 408
    iget v0, p0, Lcom/a/a/b/e$a;->b:I

    invoke-static {p1, p2, v0}, Lcom/a/a/a/c;->a(III)V

    .line 409
    iget-object v0, p0, Lcom/a/a/b/e$a;->c:Lcom/a/a/b/e;

    iget v1, p0, Lcom/a/a/b/e$a;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/a/a/b/e;->a(II)Lcom/a/a/b/e;

    move-result-object p1

    return-object p1
.end method

.method b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 402
    iget v0, p0, Lcom/a/a/b/e$a;->b:I

    invoke-static {p1, v0}, Lcom/a/a/a/c;->a(II)I

    .line 403
    iget-object v0, p0, Lcom/a/a/b/e$a;->c:Lcom/a/a/b/e;

    iget v1, p0, Lcom/a/a/b/e$a;->a:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/a/a/b/e;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 386
    invoke-super {p0}, Lcom/a/a/b/e;->c()Lcom/a/a/b/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 386
    invoke-super {p0}, Lcom/a/a/b/e;->f()Lcom/a/a/b/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 386
    invoke-super {p0, p1}, Lcom/a/a/b/e;->a(I)Lcom/a/a/b/n;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 397
    iget v0, p0, Lcom/a/a/b/e$a;->b:I

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/e$a;->a(II)Lcom/a/a/b/e;

    move-result-object p1

    return-object p1
.end method
