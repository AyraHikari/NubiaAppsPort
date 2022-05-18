.class public abstract Landroid/support/v7/widget/RecyclerView$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "m"
.end annotation


# instance fields
.field a:Landroid/support/v7/widget/r;

.field b:Landroid/support/v7/widget/RecyclerView;

.field c:Landroid/support/v7/widget/RecyclerView$v;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$m;->d:Z

    return-void
.end method

.method public static D(IIIZ)I
    .locals 1

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 1
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    goto :goto_1

    :cond_1
    if-ltz p2, :cond_2

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_2
    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    move p2, p0

    goto :goto_0

    :cond_3
    const/4 p3, -0x2

    if-ne p2, p3, :cond_0

    const/high16 p1, -0x80000000

    move p2, p0

    .line 2
    :goto_1
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private R0(Landroid/support/v7/widget/RecyclerView$r;ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->r()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$f;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$m;->O0(I)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$r;->D(Landroid/support/v7/widget/RecyclerView$z;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$m;->v(I)V

    .line 7
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$r;->E(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView$m;->d:Z

    return p0
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView$m;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$m;->d:Z

    return p1
.end method

.method private g(Landroid/view/View;IZ)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v0

    if-nez p3, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p3, p1}, Landroid/support/v7/widget/RecyclerView;->w(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p3, p1}, Landroid/support/v7/widget/RecyclerView;->v(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 5
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/RecyclerView$n;

    .line 6
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->H()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v3, :cond_5

    .line 8
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/r;->l(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 9
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/support/v7/widget/r;

    invoke-virtual {p2}, Landroid/support/v7/widget/r;->g()I

    move-result p2

    :cond_3
    if-eq v1, v3, :cond_4

    if-eq v1, p2, :cond_8

    .line 10
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Landroid/support/v7/widget/RecyclerView$m;->d0(II)V

    goto :goto_4

    .line 11
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v7/widget/r;->a(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p3, Landroid/support/v7/widget/RecyclerView$n;->c:Z

    .line 14
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$m;->c:Landroid/support/v7/widget/RecyclerView$v;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$v;->e()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 15
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$m;->c:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$v;->g(Landroid/view/View;)V

    goto :goto_4

    .line 16
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->v()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->G()V

    goto :goto_3

    .line 18
    :cond_7
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->g()V

    .line 19
    :goto_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/support/v7/widget/r;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Landroid/support/v7/widget/r;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 20
    :cond_8
    :goto_4
    iget-boolean p1, p3, Landroid/support/v7/widget/RecyclerView$n;->d:Z

    if-eqz p1, :cond_9

    .line 21
    iget-object p1, v0, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 22
    iput-boolean v2, p3, Landroid/support/v7/widget/RecyclerView$n;->d:Z

    :cond_9
    return-void
.end method

.method private w(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/support/v7/widget/r;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/r;->d(I)V

    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$n;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public A0(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Landroid/support/v7/widget/RecyclerView$m;->B0(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public B(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->f(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public B0(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->a0()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public C()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C0(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public D0()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public E(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$f;->c()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public E0(I)V
    .locals 0

    return-void
.end method

.method public F(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->A(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method F0(ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->G0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public G(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->O(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public G0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/16 p4, 0x1000

    const/4 v0, 0x1

    if-eq p3, p4, :cond_3

    const/16 p4, 0x2000

    if-eq p3, p4, :cond_1

    move p1, p2

    move p3, p1

    goto :goto_2

    :cond_1
    const/4 p3, -0x1

    .line 2
    invoke-static {p1, p3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->M()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->S()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->P()I

    move-result p4

    sub-int/2addr p1, p4

    neg-int p1, p1

    goto :goto_0

    :cond_2
    move p1, p2

    .line 4
    :goto_0
    iget-object p4, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p4, p3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Y()I

    move-result p3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Q()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->R()I

    move-result p4

    sub-int/2addr p3, p4

    neg-int p3, p3

    goto :goto_2

    .line 6
    :cond_3
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->M()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->S()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->P()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_4
    move p1, p2

    .line 8
    :goto_1
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p3, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Y()I

    move-result p3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Q()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->R()I

    move-result p4

    sub-int/2addr p3, p4

    goto :goto_2

    :cond_5
    move p3, p2

    :goto_2
    if-nez p1, :cond_6

    if-nez p3, :cond_6

    return p2

    .line 10
    :cond_6
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p3, p1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    return v0
.end method

.method public H(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    return p1
.end method

.method public H0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public I(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    return p1
.end method

.method I0(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/RecyclerView$m;->H0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public J(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->U(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public J0(Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$m;->M0(ILandroid/support/v7/widget/RecyclerView$r;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public K(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->X(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method K0(Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->k()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$r;->m(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$z;->w()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3, v1}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 7
    :cond_1
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView$r;->z(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->f()V

    if-lez v0, :cond_3

    .line 9
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_3
    return-void
.end method

.method public L()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/r;->m(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public L0(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->N0(Landroid/view/View;)V

    .line 2
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$r;->C(Landroid/view/View;)V

    return-void
.end method

.method public M()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public M0(ILandroid/support/v7/widget/RecyclerView$r;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->O0(I)V

    .line 3
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$r;->C(Landroid/view/View;)V

    return-void
.end method

.method public N()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public N0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->o(Landroid/view/View;)V

    return-void
.end method

.method public O(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$n;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public O0(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->p(I)V

    :cond_0
    return-void
.end method

.method public P()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public P0(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Q()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->S()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Y()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->R()I

    move-result v3

    sub-int/2addr v2, v3

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->M()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->P()I

    move-result v4

    sub-int/2addr v3, v4

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget v5, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v5

    .line 7
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v4

    .line 8
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p2

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    .line 9
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr p2, v1

    .line 10
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr v5, v2

    .line 11
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr p3, v3

    .line 12
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 13
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_2

    :cond_0
    move v4, v1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_0

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move p2, p3

    :goto_1
    if-nez v4, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    return v0

    :cond_5
    :goto_2
    if-eqz p4, :cond_6

    .line 14
    invoke-virtual {p1, v4, p2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_3

    .line 15
    :cond_6
    invoke-virtual {p1, v4, p2}, Landroid/support/v7/widget/RecyclerView;->M0(II)V

    :goto_3
    return v3
.end method

.method public Q()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public R()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public S()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public S0(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public T(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$n;->a()I

    move-result p1

    return p1
.end method

.method public T0(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public U(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$n;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method U0(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    .line 2
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/support/v7/widget/r;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    .line 4
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/support/v7/widget/r;

    :goto_0
    return-void
.end method

.method public V(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$f;->c()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method V0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->c:Landroid/support/v7/widget/RecyclerView$v;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$v;->k()V

    :cond_0
    return-void
.end method

.method public W(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public W0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public X(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$n;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public Y()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Z(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->c:Landroid/support/v7/widget/RecyclerView$v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$v;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b0(Landroid/view/View;IIII)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    .line 2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$m;->d(Landroid/view/View;I)V

    return-void
.end method

.method public c0(Landroid/view/View;II)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n;

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->j0(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 4
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Y()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Q()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->R()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->l()Z

    move-result v3

    invoke-static {v1, v2, p2, v3}, Landroid/support/v7/widget/RecyclerView$m;->D(IIIZ)I

    move-result p2

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->M()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->S()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->P()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->m()Z

    move-result v0

    invoke-static {v1, v2, p3, v0}, Landroid/support/v7/widget/RecyclerView$m;->D(IIIZ)I

    move-result p3

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$m;->g(Landroid/view/View;IZ)V

    return-void
.end method

.method public d0(II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->v(I)V

    .line 3
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/RecyclerView$m;->i(Landroid/view/View;I)V

    return-void

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot move a child from non-existing index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public e(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$m;->f(Landroid/view/View;I)V

    return-void
.end method

.method public e0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->q0(I)V

    :cond_0
    return-void
.end method

.method public f(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$m;->g(Landroid/view/View;IZ)V

    return-void
.end method

.method public f0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->r0(I)V

    :cond_0
    return-void
.end method

.method public g0(Landroid/support/v7/widget/RecyclerView$f;Landroid/support/v7/widget/RecyclerView$f;)V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->L(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h0(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public i(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$m;->j(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;)V

    return-void
.end method

.method public i0(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public j(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, p1}, Landroid/support/v7/widget/RecyclerView;->v(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, p1}, Landroid/support/v7/widget/RecyclerView;->w(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 5
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/support/v7/widget/r;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public j0(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public k(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->j0(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public k0(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->j0(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l0(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-static {p3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    .line 2
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p3, 0x1

    .line 3
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, -0x1

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, p3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, p3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 4
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 5
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$f;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public n(Landroid/support/v7/widget/RecyclerView$n;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n0(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/v7/widget/RecyclerView$m;->m0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public o(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method o0(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/v7/widget/RecyclerView$m;->p0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public p(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public p0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 1
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    .line 3
    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 4
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    .line 6
    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 7
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 8
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->V(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->E(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->Z(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->W(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p1

    .line 9
    invoke-virtual {p3, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public q(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public q0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->m()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result p1

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result p2

    :cond_1
    move v2, p2

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    .line 4
    invoke-virtual {p4, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public r(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method r0(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->q0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public s(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public s0(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public t(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public t0(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public u(Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$m;->R0(Landroid/support/v7/widget/RecyclerView$r;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u0(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public v(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$m;->w(ILandroid/view/View;)V

    return-void
.end method

.method public v0(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    return-void
.end method

.method public w0(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public abstract x()Landroid/support/v7/widget/RecyclerView$n;
.end method

.method public x0(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public y(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$n;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$n;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public y0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "You must override onLayoutChildren(Recycler recycler, State state) "

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public z(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$n;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$n;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/RecyclerView$n;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$n;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$n;-><init>(Landroid/support/v7/widget/RecyclerView$n;)V

    return-object v0

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Landroid/support/v7/widget/RecyclerView$n;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$n;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$n;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$n;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public z0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, p3, p4}, Landroid/support/v7/widget/RecyclerView;->x(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method
