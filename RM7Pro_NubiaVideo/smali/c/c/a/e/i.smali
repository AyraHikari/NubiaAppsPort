.class public Lc/c/a/e/i;
.super Lc/c/a/e/a;
.source "SourceFile"


# instance fields
.field private final l:Z

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    const/16 v0, 0xde1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lc/c/a/e/i;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(IIZI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lc/c/a/e/a;-><init>()V

    const/16 v0, 0xde1

    .line 3
    iput v0, p0, Lc/c/a/e/i;->n:I

    .line 4
    iput-boolean p3, p0, Lc/c/a/e/i;->l:Z

    .line 5
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/a;->q(II)V

    .line 6
    iput p4, p0, Lc/c/a/e/i;->n:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/e/i;->l:Z

    return v0
.end method

.method protected e()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/i;->n:I

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/e/i;->m:Z

    return v0
.end method

.method protected m(Lc/c/a/e/c;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/a;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "RawTexture"

    const-string v0, "lost the content due to context change"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public r(Lc/c/a/e/c;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lc/c/a/e/c;->s()Lc/c/a/e/g;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lc/c/a/e/g;->b()I

    move-result v0

    iput v0, p0, Lc/c/a/e/a;->a:I

    .line 3
    iget v0, p0, Lc/c/a/e/i;->n:I

    const/16 v1, 0xde1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1908

    const/16 v1, 0x1401

    .line 4
    invoke-interface {p1, p0, v0, v1}, Lc/c/a/e/c;->k(Lc/c/a/e/a;II)V

    .line 5
    :cond_0
    invoke-interface {p1, p0}, Lc/c/a/e/c;->h(Lc/c/a/e/a;)V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lc/c/a/e/a;->b:I

    .line 7
    invoke-virtual {p0, p1}, Lc/c/a/e/a;->o(Lc/c/a/e/c;)V

    return-void
.end method

.method public s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/c/a/e/i;->m:Z

    return-void
.end method
