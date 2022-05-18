.class Lb/a/b/c/b/k$c;
.super Lb/a/b/c/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/c/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final d:I

.field private final e:I

.field final synthetic f:Lb/a/b/c/b/k;


# direct methods
.method public constructor <init>(Lb/a/b/c/b/k;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/k$c;->f:Lb/a/b/c/b/k;

    invoke-direct {p0}, Lb/a/b/c/b/c;-><init>()V

    .line 2
    iput p2, p0, Lb/a/b/c/b/k$c;->d:I

    .line 3
    iput p3, p0, Lb/a/b/c/b/k$c;->e:I

    return-void
.end method


# virtual methods
.method protected e(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/a/b/c/b/k$c;->f:Lb/a/b/c/b/k;

    invoke-static {p1}, Lb/a/b/c/b/k;->f(Lb/a/b/c/b/k;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected h(Lb/a/b/e/b;)Lb/a/b/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/b/e/b<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lb/a/b/e/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lb/a/b/c/b/k$c;->f:Lb/a/b/c/b/k;

    invoke-static {p1}, Lb/a/b/c/b/k;->a(Lb/a/b/c/b/k;)Lb/a/b/c/b/g;

    move-result-object p1

    iget v0, p0, Lb/a/b/c/b/k$c;->d:I

    invoke-virtual {p1, v0}, Lb/a/b/c/b/g;->A(I)Lb/a/b/c/b/m;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/k$c;->f:Lb/a/b/c/b/k;

    invoke-static {v0}, Lb/a/b/c/b/k;->b(Lb/a/b/c/b/k;)Lb/a/b/e/d;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/b/c/b/k$c;->f:Lb/a/b/c/b/k;

    invoke-static {v0}, Lb/a/b/c/b/k;->b(Lb/a/b/c/b/k;)Lb/a/b/e/d;

    move-result-object v0

    iget-object v1, p0, Lb/a/b/c/b/k$c;->f:Lb/a/b/c/b/k;

    invoke-static {v1}, Lb/a/b/c/b/k;->e(Lb/a/b/c/b/k;)Lcn/nubia/video/list/app/a;

    move-result-object v1

    iget v2, p0, Lb/a/b/c/b/k$c;->e:I

    invoke-virtual {p1, v1, v2}, Lb/a/b/c/b/m;->v(Lcn/nubia/video/list/app/a;I)Lb/a/b/e/d$c;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lb/a/b/e/d;->a(Lb/a/b/e/d$c;Lb/a/b/e/b;)Lb/a/b/e/a;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/a/b/c/b/c;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/a/b/c/b/k$c;->f:Lb/a/b/c/b/k;

    iget v2, p0, Lb/a/b/c/b/k$c;->d:I

    invoke-static {v1, v2}, Lb/a/b/c/b/k;->g(Lb/a/b/c/b/k;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lb/a/b/c/b/k$c;->f:Lb/a/b/c/b/k;

    invoke-static {v1}, Lb/a/b/c/b/k;->h(Lb/a/b/c/b/k;)Lb/a/b/c/b/k$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/b/c/b/k$c;->f:Lb/a/b/c/b/k;

    invoke-static {v1}, Lb/a/b/c/b/k;->h(Lb/a/b/c/b/k;)Lb/a/b/c/b/k$b;

    move-result-object v1

    iget v2, p0, Lb/a/b/c/b/k$c;->d:I

    invoke-interface {v1, v2, v0}, Lb/a/b/c/b/k$b;->d(ILandroid/graphics/Bitmap;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/b/c/b/k$c;->f:Lb/a/b/c/b/k;

    invoke-static {v0}, Lb/a/b/c/b/k;->j(Lb/a/b/c/b/k;)I

    .line 5
    iget-object v0, p0, Lb/a/b/c/b/k$c;->f:Lb/a/b/c/b/k;

    invoke-static {v0}, Lb/a/b/c/b/k;->i(Lb/a/b/c/b/k;)I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lb/a/b/c/b/k$c;->f:Lb/a/b/c/b/k;

    invoke-static {v0}, Lb/a/b/c/b/k;->k(Lb/a/b/c/b/k;)V

    :cond_1
    return-void
.end method
