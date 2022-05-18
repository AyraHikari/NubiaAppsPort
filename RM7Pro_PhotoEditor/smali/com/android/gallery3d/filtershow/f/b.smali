.class public Lcom/android/gallery3d/filtershow/f/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/f/b;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->d:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->e:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->f:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->g:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->h:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->i:Landroid/widget/TextView;

    return-void
.end method

.method private a(Lcom/android/gallery3d/filtershow/f/a;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method private g()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private j(Lcom/android/gallery3d/filtershow/f/a;I)V
    .locals 3

    iget v0, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget v1, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/f/b;->g()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/f/b;->i(I)Lcom/android/gallery3d/filtershow/f/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/f/b;->f()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/f/a;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/f/b;->a(Lcom/android/gallery3d/filtershow/f/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput p2, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/f/b;->k()V

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iput p2, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/f/b;->k()V

    return-void
.end method

.method private k()V
    .locals 0

    return-void
.end method

.method private o(Landroid/widget/TextView;Landroid/widget/TextView;Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private r(Landroid/widget/ImageButton;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method private s(Landroid/widget/TextView;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/gallery3d/filtershow/f/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/f/b;->j(Lcom/android/gallery3d/filtershow/f/a;I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/f/b;->v()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->c0()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/f/b;->g()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/f/b;->g()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Lcom/android/gallery3d/filtershow/f/a;
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/f/b;->i(I)Lcom/android/gallery3d/filtershow/f/a;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lcom/android/gallery3d/filtershow/f/a;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/f/a;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/f/b;->k()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/f/b;->v()V

    iget v0, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    return v0
.end method

.method public m()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/f/b;->g()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/f/b;->f()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/f/b;->v()V

    return-void
.end method

.method public n(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/f/b;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-void
.end method

.method public p(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/f/b;->f:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/f/b;->g:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/f/b;->d:Landroid/widget/ImageButton;

    iput-object p4, p0, Lcom/android/gallery3d/filtershow/f/b;->e:Landroid/widget/ImageButton;

    iput-object p5, p0, Lcom/android/gallery3d/filtershow/f/b;->h:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/android/gallery3d/filtershow/f/b;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/f/b;->v()V

    return-void
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/f/b;->v()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/f/b;->k()V

    return-void
.end method

.method public t(Landroid/widget/TextView;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->isShown()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public u()I
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/f/b;->g()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/f/b;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/f/b;->k()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/f/b;->v()V

    iget v0, p0, Lcom/android/gallery3d/filtershow/f/b;->c:I

    return v0
.end method

.method public v()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/f/b;->e()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/f/b;->r(Landroid/widget/ImageButton;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/f/b;->c()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/f/b;->r(Landroid/widget/ImageButton;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/f/b;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/f/b;->e()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/f/b;->o(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/f/b;->d()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/f/b;->s(Landroid/widget/TextView;Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/b;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/f/b;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->d0()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/f/b;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/filtershow/f/b;->t(Landroid/widget/TextView;Z)V

    :cond_5
    return-void
.end method
