.class public Landroid/support/v7/widget/y;
.super Landroid/support/v7/widget/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/y$b;,
        Landroid/support/v7/widget/y$a;,
        Landroid/support/v7/widget/y$c;
    }
.end annotation


# static fields
.field static final y:I


# instance fields
.field r:I

.field s:I

.field t:[Landroid/view/View;

.field final u:Landroid/util/SparseIntArray;

.field final v:Landroid/util/SparseIntArray;

.field w:Landroid/support/v7/widget/y$c;

.field final x:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Landroid/support/v7/widget/y;->y:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a0;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/support/v7/widget/y;->r:I

    .line 3
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/y;->u:Landroid/util/SparseIntArray;

    .line 4
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/y;->v:Landroid/util/SparseIntArray;

    .line 5
    new-instance p1, Landroid/support/v7/widget/y$a;

    invoke-direct {p1}, Landroid/support/v7/widget/y$a;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/y;->x:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/y;->Z1(I)V

    return-void
.end method

.method private P1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;IIZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p5, :cond_0

    move p5, p3

    move p3, v0

    move v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    move p5, v1

    move v3, p5

    .line 1
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/a0;->e:I

    if-ne v4, v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->u1()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, p4, -0x1

    move p4, v1

    goto :goto_1

    :cond_1
    move p4, v2

    :goto_1
    if-eq p3, p5, :cond_3

    .line 2
    iget-object v4, p0, Landroid/support/v7/widget/y;->t:[Landroid/view/View;

    aget-object v4, v4, p3

    .line 3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/y$b;

    .line 4
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/widget/y;->X1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;I)I

    move-result v4

    invoke-static {v5, v4}, Landroid/support/v7/widget/y$b;->g(Landroid/support/v7/widget/y$b;I)I

    if-ne p4, v1, :cond_2

    .line 5
    invoke-static {v5}, Landroid/support/v7/widget/y$b;->f(Landroid/support/v7/widget/y$b;)I

    move-result v4

    if-le v4, v2, :cond_2

    .line 6
    invoke-static {v5}, Landroid/support/v7/widget/y$b;->f(Landroid/support/v7/widget/y$b;)I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v4, v0, v4

    invoke-static {v5, v4}, Landroid/support/v7/widget/y$b;->e(Landroid/support/v7/widget/y$b;I)I

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {v5, v0}, Landroid/support/v7/widget/y$b;->e(Landroid/support/v7/widget/y$b;I)I

    .line 8
    :goto_2
    invoke-static {v5}, Landroid/support/v7/widget/y$b;->f(Landroid/support/v7/widget/y$b;)I

    move-result v4

    mul-int/2addr v4, p4

    add-int/2addr v0, v4

    add-int/2addr p3, v3

    goto :goto_1

    :cond_3
    return-void
.end method

.method private Q1()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/y$b;

    .line 3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$n;->a()I

    move-result v3

    .line 4
    iget-object v4, p0, Landroid/support/v7/widget/y;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/support/v7/widget/y$b;->i()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    iget-object v4, p0, Landroid/support/v7/widget/y;->v:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/support/v7/widget/y$b;->h()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private R1()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/y;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/y;->v:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private S1(Landroid/support/v7/widget/a0$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    iget v1, p1, Landroid/support/v7/widget/a0$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/y;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/y$c;->b(II)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    .line 2
    iget v0, p1, Landroid/support/v7/widget/a0$a;->a:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 3
    iput v0, p1, Landroid/support/v7/widget/a0$a;->a:I

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    iget v2, p0, Landroid/support/v7/widget/y;->r:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/y$c;->b(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private T1(I)I
    .locals 1

    if-gez p1, :cond_0

    .line 1
    sget p1, Landroid/support/v7/widget/y;->y:I

    return p1

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private V1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;I)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    iget p2, p0, Landroid/support/v7/widget/y;->r:I

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/y$c;->c(II)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$r;->g(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    iget p3, p0, Landroid/support/v7/widget/y;->r:I

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/y$c;->c(II)I

    move-result p1

    return p1
.end method

.method private W1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;I)I
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    iget p2, p0, Landroid/support/v7/widget/y;->r:I

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/y$c;->b(II)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/y;->v:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 4
    :cond_1
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$r;->g(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    iget p3, p0, Landroid/support/v7/widget/y;->r:I

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/y$c;->b(II)I

    move-result p1

    return p1
.end method

.method private X1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;I)I
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/y$c;->e(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/y;->u:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 4
    :cond_1
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$r;->g(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/y$c;->e(I)I

    move-result p1

    return p1
.end method

.method private Y1(Landroid/view/View;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/y;->x:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$m;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n;

    .line 3
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/y;->x:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    invoke-direct {p0, p2, v1, v3}, Landroid/support/v7/widget/y;->c2(III)I

    move-result p2

    .line 4
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/y;->x:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-direct {p0, p3, v1, v0}, Landroid/support/v7/widget/y;->c2(III)I

    move-result p3

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private b2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->t1()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->R()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Q()I

    move-result v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->M()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->P()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->S()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    .line 4
    iget v1, p0, Landroid/support/v7/widget/y;->r:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/y;->s:I

    return-void
.end method

.method private c2(III)I
    .locals 2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    .line 1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    .line 2
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public E(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/a0;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget p1, p0, Landroid/support/v7/widget/y;->r:I

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/y;->V1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;I)I

    move-result p1

    return p1
.end method

.method public U1()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/y;->r:I

    return v0
.end method

.method public V(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/a0;->e:I

    if-nez v0, :cond_0

    .line 2
    iget p1, p0, Landroid/support/v7/widget/y;->r:I

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/y;->V1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;I)I

    move-result p1

    return p1
.end method

.method public W0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Z1(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v7/widget/y;->r:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 2
    iput p1, p0, Landroid/support/v7/widget/y;->r:I

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    invoke-virtual {p1}, Landroid/support/v7/widget/y$c;->f()V

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a2(Landroid/support/v7/widget/y$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    return-void
.end method

.method public n(Landroid/support/v7/widget/RecyclerView$n;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroid/support/v7/widget/y$b;

    return p1
.end method

.method public q0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/support/v7/widget/y$b;

    if-nez v1, :cond_0

    .line 3
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/RecyclerView$m;->r0(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void

    .line 4
    :cond_0
    check-cast v0, Landroid/support/v7/widget/y$b;

    .line 5
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$n;->a()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/y;->V1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;I)I

    move-result p1

    .line 6
    iget p2, p0, Landroid/support/v7/widget/a0;->e:I

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/support/v7/widget/y$b;->h()I

    move-result p2

    invoke-virtual {v0}, Landroid/support/v7/widget/y$b;->i()I

    move-result v2

    const/4 v4, 0x1

    iget v3, p0, Landroid/support/v7/widget/y;->r:I

    if-le v3, v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/y$b;->i()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/y;->r:I

    if-ne v0, v3, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, p3

    :goto_0
    const/4 v6, 0x0

    move v1, p2

    move v3, p1

    invoke-static/range {v1 .. v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0}, Landroid/support/v7/widget/y$b;->h()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v7/widget/y$b;->i()I

    move-result v4

    iget p2, p0, Landroid/support/v7/widget/y;->r:I

    if-le p2, v1, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/y$b;->i()I

    move-result p2

    iget v0, p0, Landroid/support/v7/widget/y;->r:I

    if-ne p2, v0, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, p3

    :goto_1
    const/4 v6, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public t0(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    invoke-virtual {p1}, Landroid/support/v7/widget/y$c;->f()V

    return-void
.end method

.method public u0(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    invoke-virtual {p1}, Landroid/support/v7/widget/y$c;->f()V

    return-void
.end method

.method public v0(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    invoke-virtual {p1}, Landroid/support/v7/widget/y$c;->f()V

    return-void
.end method

.method v1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/a0$c;Landroid/support/v7/widget/a0$b;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 1
    iget v0, v9, Landroid/support/v7/widget/a0$c;->e:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v0, v11, :cond_0

    move v13, v11

    goto :goto_0

    :cond_0
    move v13, v12

    .line 2
    :goto_0
    iget v0, v6, Landroid/support/v7/widget/y;->r:I

    if-nez v13, :cond_1

    .line 3
    iget v0, v9, Landroid/support/v7/widget/a0$c;->d:I

    invoke-direct {v6, v7, v8, v0}, Landroid/support/v7/widget/y;->W1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;I)I

    move-result v0

    .line 4
    iget v1, v9, Landroid/support/v7/widget/a0$c;->d:I

    invoke-direct {v6, v7, v8, v1}, Landroid/support/v7/widget/y;->X1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    move v4, v12

    move v14, v4

    .line 5
    :goto_1
    iget v1, v6, Landroid/support/v7/widget/y;->r:I

    if-ge v14, v1, :cond_5

    invoke-virtual {v9, v8}, Landroid/support/v7/widget/a0$c;->a(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-lez v0, :cond_5

    .line 6
    iget v1, v9, Landroid/support/v7/widget/a0$c;->d:I

    .line 7
    invoke-direct {v6, v7, v8, v1}, Landroid/support/v7/widget/y;->X1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;I)I

    move-result v2

    .line 8
    iget v3, v6, Landroid/support/v7/widget/y;->r:I

    if-gt v2, v3, :cond_4

    sub-int/2addr v0, v2

    if-gez v0, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v9, v7}, Landroid/support/v7/widget/a0$c;->b(Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v4, v2

    .line 10
    iget-object v2, v6, Landroid/support/v7/widget/y;->t:[Landroid/view/View;

    aput-object v1, v2, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spans but GridLayoutManager has only "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Landroid/support/v7/widget/y;->r:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spans."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    if-nez v14, :cond_6

    .line 12
    iput-boolean v11, v10, Landroid/support/v7/widget/a0$b;->b:Z

    return-void

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move v5, v13

    .line 13
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/y;->P1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;IIZ)V

    move v0, v12

    move v1, v0

    :goto_3
    const/high16 v2, 0x40000000    # 2.0f

    if-ge v0, v14, :cond_c

    .line 14
    iget-object v3, v6, Landroid/support/v7/widget/y;->t:[Landroid/view/View;

    aget-object v3, v3, v0

    .line 15
    iget-object v4, v9, Landroid/support/v7/widget/a0$c;->j:Ljava/util/List;

    if-nez v4, :cond_8

    if-eqz v13, :cond_7

    .line 16
    invoke-virtual {v6, v3}, Landroid/support/v7/widget/RecyclerView$m;->e(Landroid/view/View;)V

    goto :goto_4

    .line 17
    :cond_7
    invoke-virtual {v6, v3, v12}, Landroid/support/v7/widget/RecyclerView$m;->f(Landroid/view/View;I)V

    goto :goto_4

    :cond_8
    if-eqz v13, :cond_9

    .line 18
    invoke-virtual {v6, v3}, Landroid/support/v7/widget/RecyclerView$m;->c(Landroid/view/View;)V

    goto :goto_4

    .line 19
    :cond_9
    invoke-virtual {v6, v3, v12}, Landroid/support/v7/widget/RecyclerView$m;->d(Landroid/view/View;I)V

    .line 20
    :goto_4
    invoke-virtual {v6, v3}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v4

    invoke-direct {v6, v7, v8, v4}, Landroid/support/v7/widget/y;->X1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;I)I

    move-result v4

    .line 21
    iget v5, v6, Landroid/support/v7/widget/y;->s:I

    mul-int/2addr v5, v4

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/y$b;

    .line 23
    iget v5, v6, Landroid/support/v7/widget/a0;->e:I

    if-ne v5, v11, :cond_a

    .line 24
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v6, v4}, Landroid/support/v7/widget/y;->T1(I)I

    move-result v4

    invoke-direct {v6, v3, v2, v4}, Landroid/support/v7/widget/y;->Y1(Landroid/view/View;II)V

    goto :goto_5

    .line 25
    :cond_a
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-direct {v6, v4}, Landroid/support/v7/widget/y;->T1(I)I

    move-result v4

    invoke-direct {v6, v3, v4, v2}, Landroid/support/v7/widget/y;->Y1(Landroid/view/View;II)V

    .line 26
    :goto_5
    iget-object v2, v6, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/f0;->e(Landroid/view/View;)I

    move-result v2

    if-le v2, v1, :cond_b

    move v1, v2

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 27
    :cond_c
    invoke-direct {v6, v1}, Landroid/support/v7/widget/y;->T1(I)I

    move-result v0

    move v3, v12

    :goto_6
    if-ge v3, v14, :cond_f

    .line 28
    iget-object v4, v6, Landroid/support/v7/widget/y;->t:[Landroid/view/View;

    aget-object v4, v4, v3

    .line 29
    iget-object v5, v6, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/f0;->e(Landroid/view/View;)I

    move-result v5

    if-eq v5, v1, :cond_e

    .line 30
    invoke-virtual {v6, v4}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v5

    invoke-direct {v6, v7, v8, v5}, Landroid/support/v7/widget/y;->X1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;I)I

    move-result v5

    .line 31
    iget v13, v6, Landroid/support/v7/widget/y;->s:I

    mul-int/2addr v13, v5

    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 32
    iget v13, v6, Landroid/support/v7/widget/a0;->e:I

    if-ne v13, v11, :cond_d

    .line 33
    invoke-direct {v6, v4, v5, v0}, Landroid/support/v7/widget/y;->Y1(Landroid/view/View;II)V

    goto :goto_7

    .line 34
    :cond_d
    invoke-direct {v6, v4, v0, v5}, Landroid/support/v7/widget/y;->Y1(Landroid/view/View;II)V

    :cond_e
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 35
    :cond_f
    iput v1, v10, Landroid/support/v7/widget/a0$b;->a:I

    .line 36
    iget v0, v6, Landroid/support/v7/widget/a0;->e:I

    const/4 v2, -0x1

    if-ne v0, v11, :cond_11

    .line 37
    iget v0, v9, Landroid/support/v7/widget/a0$c;->f:I

    if-ne v0, v2, :cond_10

    .line 38
    iget v0, v9, Landroid/support/v7/widget/a0$c;->b:I

    sub-int v1, v0, v1

    move v3, v1

    move v2, v12

    move v1, v0

    move v0, v2

    goto :goto_9

    .line 39
    :cond_10
    iget v0, v9, Landroid/support/v7/widget/a0$c;->b:I

    add-int/2addr v1, v0

    move v3, v0

    move v0, v12

    move v2, v0

    goto :goto_9

    .line 40
    :cond_11
    iget v0, v9, Landroid/support/v7/widget/a0$c;->f:I

    if-ne v0, v2, :cond_12

    .line 41
    iget v0, v9, Landroid/support/v7/widget/a0$c;->b:I

    sub-int v1, v0, v1

    move v2, v1

    goto :goto_8

    .line 42
    :cond_12
    iget v0, v9, Landroid/support/v7/widget/a0$c;->b:I

    add-int/2addr v1, v0

    move v2, v0

    move v0, v1

    :goto_8
    move v1, v12

    move v3, v1

    :goto_9
    if-ge v12, v14, :cond_16

    .line 43
    iget-object v4, v6, Landroid/support/v7/widget/y;->t:[Landroid/view/View;

    aget-object v7, v4, v12

    .line 44
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/support/v7/widget/y$b;

    .line 45
    iget v4, v6, Landroid/support/v7/widget/a0;->e:I

    if-ne v4, v11, :cond_13

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$m;->Q()I

    move-result v0

    iget v2, v6, Landroid/support/v7/widget/y;->s:I

    invoke-static {v8}, Landroid/support/v7/widget/y$b;->d(Landroid/support/v7/widget/y$b;)I

    move-result v4

    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 47
    iget-object v2, v6, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/f0;->f(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    move v15, v0

    move v13, v1

    move v9, v2

    move/from16 v16, v3

    goto :goto_a

    .line 48
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$m;->S()I

    move-result v1

    iget v3, v6, Landroid/support/v7/widget/y;->s:I

    invoke-static {v8}, Landroid/support/v7/widget/y$b;->d(Landroid/support/v7/widget/y$b;)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 49
    iget-object v3, v6, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v3, v7}, Landroid/support/v7/widget/f0;->f(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v1

    move v9, v0

    move/from16 v16, v1

    move v15, v2

    move v13, v3

    .line 50
    :goto_a
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v2, v15, v0

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v3, v16, v0

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v4, v9, v0

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v5, v13, v0

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$m;->b0(Landroid/view/View;IIII)V

    .line 51
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$n;->c()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$n;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 52
    :cond_14
    iput-boolean v11, v10, Landroid/support/v7/widget/a0$b;->c:Z

    .line 53
    :cond_15
    iget-boolean v0, v10, Landroid/support/v7/widget/a0$b;->d:Z

    invoke-virtual {v7}, Landroid/view/View;->isFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v10, Landroid/support/v7/widget/a0$b;->d:Z

    add-int/lit8 v12, v12, 0x1

    move v0, v9

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    goto :goto_9

    .line 54
    :cond_16
    iget-object v0, v6, Landroid/support/v7/widget/y;->t:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public w0(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    invoke-virtual {p1}, Landroid/support/v7/widget/y$c;->f()V

    return-void
.end method

.method public x()Landroid/support/v7/widget/RecyclerView$n;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v7/widget/y$b;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/y$b;-><init>(II)V

    return-object v0
.end method

.method public x0(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/y;->w:Landroid/support/v7/widget/y$c;

    invoke-virtual {p1}, Landroid/support/v7/widget/y$c;->f()V

    return-void
.end method

.method x1(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/a0$a;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/a0;->x1(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/a0$a;)V

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/y;->b2()V

    .line 3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0, p2}, Landroid/support/v7/widget/y;->S1(Landroid/support/v7/widget/a0$a;)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/y;->t:[Landroid/view/View;

    if-eqz p1, :cond_1

    array-length p1, p1

    iget p2, p0, Landroid/support/v7/widget/y;->r:I

    if-eq p1, p2, :cond_2

    .line 6
    :cond_1
    iget p1, p0, Landroid/support/v7/widget/y;->r:I

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Landroid/support/v7/widget/y;->t:[Landroid/view/View;

    :cond_2
    return-void
.end method

.method public y(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$n;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v7/widget/y$b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/y$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public y0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/y;->Q1()V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/a0;->y0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)V

    .line 4
    invoke-direct {p0}, Landroid/support/v7/widget/y;->R1()V

    return-void
.end method

.method public z(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$n;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/y$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/y$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v7/widget/y$b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/y$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method
