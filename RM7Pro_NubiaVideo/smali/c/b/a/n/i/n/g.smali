.class public Lc/b/a/n/i/n/g;
.super Lc/b/a/t/e;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/i/n/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/t/e<",
        "Lc/b/a/n/c;",
        "Lc/b/a/n/i/k<",
        "*>;>;",
        "Lc/b/a/n/i/n/h;"
    }
.end annotation


# instance fields
.field private d:Lc/b/a/n/i/n/h$a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/b/a/t/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lc/b/a/t/e;->d()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lc/b/a/t/e;->h()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lc/b/a/t/e;->m(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic b(Lc/b/a/n/c;Lc/b/a/n/i/k;)Lc/b/a/n/i/k;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lc/b/a/t/e;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/n/i/k;

    return-object p1
.end method

.method public bridge synthetic c(Lc/b/a/n/c;)Lc/b/a/n/i/k;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lc/b/a/t/e;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/n/i/k;

    return-object p1
.end method

.method public e(Lc/b/a/n/i/n/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/n/i/n/g;->d:Lc/b/a/n/i/n/h$a;

    return-void
.end method

.method protected bridge synthetic i(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/n/i/k;

    invoke-virtual {p0, p1}, Lc/b/a/n/i/n/g;->n(Lc/b/a/n/i/k;)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/n/c;

    check-cast p2, Lc/b/a/n/i/k;

    invoke-virtual {p0, p1, p2}, Lc/b/a/n/i/n/g;->o(Lc/b/a/n/c;Lc/b/a/n/i/k;)V

    return-void
.end method

.method protected n(Lc/b/a/n/i/k;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/k<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc/b/a/n/i/k;->getSize()I

    move-result p1

    return p1
.end method

.method protected o(Lc/b/a/n/c;Lc/b/a/n/i/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/c;",
            "Lc/b/a/n/i/k<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lc/b/a/n/i/n/g;->d:Lc/b/a/n/i/n/h$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lc/b/a/n/i/n/h$a;->b(Lc/b/a/n/i/k;)V

    :cond_0
    return-void
.end method
