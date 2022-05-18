.class public Lcn/nubia/collage/o/b/h;
.super Lcn/nubia/collage/o/b/k;
.source ""


# instance fields
.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/nubia/collage/o/b/k;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/collage/o/b/h;->n:Z

    return-void
.end method

.method private K()V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/o/a/d;

    instance-of v1, v0, Lcn/nubia/collage/o/a/e;

    if-eqz v1, :cond_1

    check-cast v0, Lcn/nubia/collage/o/a/e;

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".9.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/e;->i()V

    :cond_0
    invoke-virtual {v0}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v0

    iget v1, p0, Lcn/nubia/collage/o/b/k;->e:I

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/a/c;->n(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/b/k;->e:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iput p1, p0, Lcn/nubia/collage/o/b/k;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/nubia/collage/o/b/h;->n:Z

    :cond_0
    return-void
.end method

.method public L()V
    .locals 3

    iget-boolean v0, p0, Lcn/nubia/collage/o/b/h;->n:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/collage/o/b/k;->e:I

    iget-object v1, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    iget-object v2, p0, Lcn/nubia/collage/o/b/k;->g:[I

    invoke-static {v1, v2}, Lcn/nubia/collage/o/b/c;->f(Ljava/util/List;[I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/collage/o/b/k;->e:I

    invoke-virtual {p0}, Lcn/nubia/collage/o/b/k;->r()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcn/nubia/collage/o/b/h;->n:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcn/nubia/collage/o/b/k;->d:I

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/c;->a(Ljava/util/List;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/collage/o/b/k;->e:I

    :cond_1
    invoke-direct {p0}, Lcn/nubia/collage/o/b/h;->K()V

    invoke-super {p0}, Lcn/nubia/collage/o/b/k;->d()V

    return-void
.end method
