.class public Lb/a/c/a/d;
.super Lb/a/c/a/b;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/modules/videoRender/e/j;


# static fields
.field private static t:Ljava/lang/String; = "MediaVideo"


# instance fields
.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcn/nubia/modules/videoRender/b$a;

.field private o:Ljava/lang/String;

.field private p:Lb/a/a/e/h;

.field private q:Lcn/nubia/modules/videoRender/b;

.field private r:Z

.field private s:Lb/a/a/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lb/a/c/a/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lb/a/c/a/d;->k:I

    .line 3
    iput v0, p0, Lb/a/c/a/d;->l:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lb/a/c/a/d;->m:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lb/a/c/a/d;->n:Lcn/nubia/modules/videoRender/b$a;

    const-string v0, "No Filter"

    .line 6
    iput-object v0, p0, Lb/a/c/a/d;->o:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lb/a/c/a/d;->r:Z

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput v0, p0, Lb/a/c/a/b;->c:I

    .line 10
    new-instance v0, Lb/a/c/a/d$a;

    invoke-direct {v0, p0}, Lb/a/c/a/d$a;-><init>(Lb/a/c/a/d;)V

    iput-object v0, p0, Lb/a/c/a/d;->s:Lb/a/a/e/f;

    return-void
.end method

.method private G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/a/c/a/d;->s:Lb/a/a/e/f;

    invoke-virtual {v0, v1}, Lb/a/a/e/h;->A(Lb/a/a/e/f;)V

    :cond_0
    return-void
.end method

.method static synthetic t(Lb/a/c/a/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/c/a/d;->r:Z

    return p1
.end method

.method static synthetic u(Lb/a/c/a/d;)Lb/a/a/e/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1
    iget v0, p0, Lb/a/c/a/b;->d:I

    iget v1, p0, Lb/a/c/a/b;->f:I

    sub-int v1, v0, v1

    .line 2
    iget v2, p0, Lb/a/c/a/b;->e:I

    sub-int/2addr v0, v2

    iput v0, p0, Lb/a/c/a/b;->f:I

    .line 3
    iput v1, p0, Lb/a/c/a/b;->e:I

    return-void
.end method

.method protected B(I)V
    .locals 2

    .line 1
    iput p1, p0, Lb/a/c/a/b;->b:I

    .line 2
    iget-object v0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lb/a/c/a/d;->r:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lb/a/a/e/h;->u(I)V

    :cond_0
    return-void
.end method

.method public C(Lcn/nubia/modules/videoRender/b$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lb/a/c/a/d;->n:Lcn/nubia/modules/videoRender/b$a;

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Lcn/nubia/modules/videoRender/b$a;->a:I

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lb/a/c/a/d;->o:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lb/a/c/a/d;->q:Lcn/nubia/modules/videoRender/b;

    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v0

    iget-object v1, p0, Lb/a/c/a/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcn/nubia/modules/videoRender/b;->f(Lcn/nubia/modules/videoRender/e/d;Z)V

    return-void
.end method

.method public E(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/c/a/b;->h:Z

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/d;->m:Ljava/lang/String;

    return-void
.end method

.method public H(Lb/a/a/e/h;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/a/c/a/b;->e:I

    .line 3
    invoke-virtual {p1}, Lb/a/a/e/h;->h()I

    move-result p1

    iput p1, p0, Lb/a/c/a/b;->f:I

    return-void
.end method

.method public I(Lcn/nubia/modules/videoRender/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/d;->q:Lcn/nubia/modules/videoRender/b;

    return-void
.end method

.method public J(II)V
    .locals 2

    .line 1
    iput p1, p0, Lb/a/c/a/d;->k:I

    .line 2
    iput p2, p0, Lb/a/c/a/d;->l:I

    .line 3
    iget-object v0, p0, Lb/a/c/a/d;->q:Lcn/nubia/modules/videoRender/b;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcn/nubia/modules/videoRender/b;->a(IIZ)V

    return-void
.end method

.method public K(I)V
    .locals 1

    .line 1
    iput p1, p0, Lb/a/c/a/b;->j:I

    .line 2
    iget-object v0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    invoke-virtual {v0, p1}, Lb/a/a/e/h;->z(I)V

    return-void
.end method

.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    invoke-virtual {v0}, Lb/a/a/e/h;->g()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    invoke-virtual {v0}, Lb/a/a/e/h;->o()Z

    move-result v0

    return v0
.end method

.method public j(II)V
    .locals 1

    .line 1
    iput p1, p0, Lb/a/c/a/b;->e:I

    .line 2
    iput p2, p0, Lb/a/c/a/b;->f:I

    .line 3
    iget-object v0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lb/a/a/e/h;->B(II)V

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 3

    .line 1
    iput p1, p0, Lb/a/c/a/b;->f:I

    .line 2
    iput p1, p0, Lb/a/c/a/b;->b:I

    .line 3
    sget-object v0, Lb/a/c/a/d;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStartPos endMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lb/a/a/e/h;->w(I)V

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 3

    .line 1
    iput p1, p0, Lb/a/c/a/b;->e:I

    .line 2
    iput p1, p0, Lb/a/c/a/b;->b:I

    .line 3
    sget-object v0, Lb/a/c/a/d;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStartPos startMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lb/a/a/e/h;->D(I)V

    :cond_0
    return-void
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/c/a/b;->h:Z

    return v0
.end method

.method protected w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/h;->q()V

    :cond_0
    return-void
.end method

.method protected x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/h;->r()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    :cond_0
    return-void
.end method

.method protected y()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/a/c/a/d;->r:Z

    .line 2
    invoke-direct {p0}, Lb/a/c/a/d;->G()V

    .line 3
    iget-object v1, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    iget v2, p0, Lb/a/c/a/b;->e:I

    iget v3, p0, Lb/a/c/a/b;->f:I

    invoke-virtual {v1, v2, v3}, Lb/a/a/e/h;->B(II)V

    .line 4
    iget-boolean v1, p0, Lb/a/c/a/b;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/c/a/d;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    invoke-virtual {v2, v1}, Lb/a/a/e/h;->F(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    iget-object v2, p0, Lb/a/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lb/a/a/e/h;->F(Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    iget v2, p0, Lb/a/c/a/b;->j:I

    invoke-virtual {v1, v2}, Lb/a/a/e/h;->z(I)V

    .line 8
    iget-object v1, p0, Lb/a/c/a/d;->q:Lcn/nubia/modules/videoRender/b;

    iget-object v2, p0, Lb/a/c/a/d;->n:Lcn/nubia/modules/videoRender/b$a;

    invoke-interface {v1, v2}, Lcn/nubia/modules/videoRender/b;->setCropRectData(Lcn/nubia/modules/videoRender/b$a;)V

    .line 9
    iget-object v1, p0, Lb/a/c/a/d;->q:Lcn/nubia/modules/videoRender/b;

    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v2

    iget-object v3, p0, Lb/a/c/a/d;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcn/nubia/modules/videoRender/b;->f(Lcn/nubia/modules/videoRender/e/d;Z)V

    .line 10
    iget-object v0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    invoke-virtual {v0}, Lb/a/a/e/h;->p()V

    return-void
.end method

.method protected z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/d;->p:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/h;->t()V

    :cond_0
    return-void
.end method
