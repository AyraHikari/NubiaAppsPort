.class public Lc/b/a/a;
.super Lc/b/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lc/b/a/e<",
        "TModelType;",
        "Lc/b/a/n/j/g;",
        "Landroid/graphics/Bitmap;",
        "TTranscodeType;>;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final D:Lc/b/a/n/i/m/c;

.field private E:Lc/b/a/n/a;


# direct methods
.method constructor <init>(Lc/b/a/q/f;Ljava/lang/Class;Lc/b/a/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/q/f<",
            "TModelType;",
            "Lc/b/a/n/j/g;",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lc/b/a/e<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lc/b/a/e;-><init>(Lc/b/a/q/f;Ljava/lang/Class;Lc/b/a/e;)V

    .line 2
    sget-object p1, Lc/b/a/n/k/e/f;->c:Lc/b/a/n/k/e/f;

    .line 3
    iget-object p1, p3, Lc/b/a/e;->c:Lc/b/a/g;

    invoke-virtual {p1}, Lc/b/a/g;->l()Lc/b/a/n/i/m/c;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/a;->D:Lc/b/a/n/i/m/c;

    .line 4
    iget-object p2, p3, Lc/b/a/e;->c:Lc/b/a/g;

    invoke-virtual {p2}, Lc/b/a/g;->m()Lc/b/a/n/a;

    move-result-object p2

    iput-object p2, p0, Lc/b/a/a;->E:Lc/b/a/n/a;

    .line 5
    new-instance p3, Lc/b/a/n/k/e/q;

    invoke-direct {p3, p1, p2}, Lc/b/a/n/k/e/q;-><init>(Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V

    .line 6
    new-instance p2, Lc/b/a/n/k/e/h;

    iget-object p3, p0, Lc/b/a/a;->E:Lc/b/a/n/a;

    invoke-direct {p2, p1, p3}, Lc/b/a/n/k/e/h;-><init>(Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V

    return-void
.end method


# virtual methods
.method public A()Lc/b/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lc/b/a/n/k/e/d;

    .line 1
    iget-object v1, p0, Lc/b/a/e;->c:Lc/b/a/g;

    invoke-virtual {v1}, Lc/b/a/g;->k()Lc/b/a/n/k/e/i;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lc/b/a/a;->G([Lc/b/a/n/k/e/d;)Lc/b/a/a;

    return-object p0
.end method

.method public B(II)Lc/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lc/b/a/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lc/b/a/e;->p(II)Lc/b/a/e;

    return-object p0
.end method

.method public C(I)Lc/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc/b/a/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->q(I)Lc/b/a/e;

    return-object p0
.end method

.method public D(Lc/b/a/n/c;)Lc/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/c;",
            ")",
            "Lc/b/a/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->r(Lc/b/a/n/c;)Lc/b/a/e;

    return-object p0
.end method

.method public E(Z)Lc/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc/b/a/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->s(Z)Lc/b/a/e;

    return-object p0
.end method

.method public varargs F([Lc/b/a/n/g;)Lc/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lc/b/a/n/g<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lc/b/a/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->u([Lc/b/a/n/g;)Lc/b/a/e;

    return-object p0
.end method

.method public varargs G([Lc/b/a/n/k/e/d;)Lc/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lc/b/a/n/k/e/d;",
            ")",
            "Lc/b/a/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->u([Lc/b/a/n/g;)Lc/b/a/e;

    return-object p0
.end method

.method b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/b/a/a;->v()Lc/b/a/a;

    return-void
.end method

.method c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/b/a/a;->A()Lc/b/a/a;

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/a;->w()Lc/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f()Lc/b/a/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/a;->w()Lc/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g(Lc/b/a/n/e;)Lc/b/a/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/b/a/a;->x(Lc/b/a/n/e;)Lc/b/a/a;

    return-object p0
.end method

.method public bridge synthetic h(Lc/b/a/n/i/b;)Lc/b/a/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/b/a/a;->y(Lc/b/a/n/i/b;)Lc/b/a/a;

    return-object p0
.end method

.method public k(Landroid/widget/ImageView;)Lc/b/a/r/h/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lc/b/a/r/h/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->k(Landroid/widget/ImageView;)Lc/b/a/r/h/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic p(II)Lc/b/a/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/b/a/a;->B(II)Lc/b/a/a;

    return-object p0
.end method

.method public bridge synthetic r(Lc/b/a/n/c;)Lc/b/a/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/b/a/a;->D(Lc/b/a/n/c;)Lc/b/a/a;

    return-object p0
.end method

.method public bridge synthetic s(Z)Lc/b/a/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/b/a/a;->E(Z)Lc/b/a/a;

    return-object p0
.end method

.method public bridge synthetic u([Lc/b/a/n/g;)Lc/b/a/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/b/a/a;->F([Lc/b/a/n/g;)Lc/b/a/a;

    return-object p0
.end method

.method public v()Lc/b/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lc/b/a/n/k/e/d;

    .line 1
    iget-object v1, p0, Lc/b/a/e;->c:Lc/b/a/g;

    invoke-virtual {v1}, Lc/b/a/g;->j()Lc/b/a/n/k/e/e;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lc/b/a/a;->G([Lc/b/a/n/k/e/d;)Lc/b/a/a;

    return-object p0
.end method

.method public w()Lc/b/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lc/b/a/e;->f()Lc/b/a/e;

    move-result-object v0

    check-cast v0, Lc/b/a/a;

    return-object v0
.end method

.method public x(Lc/b/a/n/e;)Lc/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/e<",
            "Lc/b/a/n/j/g;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lc/b/a/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->g(Lc/b/a/n/e;)Lc/b/a/e;

    return-object p0
.end method

.method public y(Lc/b/a/n/i/b;)Lc/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/b;",
            ")",
            "Lc/b/a/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->h(Lc/b/a/n/i/b;)Lc/b/a/e;

    return-object p0
.end method

.method public z(I)Lc/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc/b/a/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->i(I)Lc/b/a/e;

    return-object p0
.end method
