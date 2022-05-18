.class public Lb/a/c/a/a;
.super Lb/a/c/a/b;
.source "SourceFile"


# instance fields
.field private k:Lb/a/a/e/a;

.field private l:Z

.field private m:Lb/a/a/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/a/c/a/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/c/a/a;->l:Z

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lb/a/c/a/b;->c:I

    .line 4
    new-instance v0, Lb/a/c/a/a$a;

    invoke-direct {v0, p0}, Lb/a/c/a/a$a;-><init>(Lb/a/c/a/a;)V

    iput-object v0, p0, Lb/a/c/a/a;->m:Lb/a/a/e/f;

    return-void
.end method

.method private C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/a/c/a/a;->m:Lb/a/a/e/f;

    invoke-virtual {v0, v1}, Lb/a/a/e/a;->r(Lb/a/a/e/f;)V

    :cond_0
    return-void
.end method

.method static synthetic t(Lb/a/c/a/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/c/a/a;->l:Z

    return p1
.end method

.method static synthetic u(Lb/a/c/a/a;)Lb/a/a/e/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    return-object p0
.end method


# virtual methods
.method protected A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lb/a/c/a/a;->l:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/a;->l()V

    :cond_0
    return-void
.end method

.method protected B(I)V
    .locals 1

    .line 1
    iput p1, p0, Lb/a/c/a/b;->b:I

    .line 2
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lb/a/a/e/a;->f()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lb/a/c/a/a;->l:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    invoke-virtual {v0, p1}, Lb/a/a/e/a;->m(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    invoke-virtual {v0, p1}, Lb/a/a/e/a;->t(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/a/a/e/a;->t(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public D(Lb/a/a/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    return-void
.end method

.method public E(I)V
    .locals 1

    .line 1
    iput p1, p0, Lb/a/c/a/b;->b:I

    .line 2
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lb/a/a/e/a;->t(I)V

    :cond_0
    return-void
.end method

.method public F(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/a;->u(F)V

    :cond_0
    return-void
.end method

.method public G(I)V
    .locals 1

    .line 1
    iput p1, p0, Lb/a/c/a/b;->j:I

    .line 2
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    invoke-virtual {v0, p1}, Lb/a/a/e/a;->q(I)V

    return-void
.end method

.method public j(II)V
    .locals 1

    .line 1
    iput p1, p0, Lb/a/c/a/b;->e:I

    .line 2
    iput p2, p0, Lb/a/c/a/b;->f:I

    .line 3
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lb/a/a/e/a;->s(II)V

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    iput p1, p0, Lb/a/c/a/b;->f:I

    .line 2
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lb/a/a/e/a;->o(I)V

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 1

    .line 1
    iput p1, p0, Lb/a/c/a/b;->e:I

    .line 2
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lb/a/a/e/a;->v(I)V

    :cond_0
    return-void
.end method

.method protected v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/a/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/a/e/a;->n(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    iget v1, p0, Lb/a/c/a/b;->j:I

    invoke-virtual {v0, v1}, Lb/a/a/e/a;->q(I)V

    .line 4
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    invoke-virtual {v0}, Lb/a/a/e/a;->i()V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/a;->h()V

    :cond_0
    return-void
.end method

.method protected x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lb/a/c/a/a;->l:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/a;->j()V

    :cond_0
    return-void
.end method

.method protected y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/a;->k()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    :cond_0
    return-void
.end method

.method protected z()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/a/c/a/a;->l:Z

    .line 2
    invoke-direct {p0}, Lb/a/c/a/a;->C()V

    .line 3
    iget-object v0, p0, Lb/a/c/a/a;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_0

    .line 4
    iget v1, p0, Lb/a/c/a/b;->e:I

    iget v2, p0, Lb/a/c/a/b;->f:I

    invoke-virtual {v0, v1, v2}, Lb/a/a/e/a;->s(II)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lb/a/c/a/a;->v()V

    return-void
.end method
