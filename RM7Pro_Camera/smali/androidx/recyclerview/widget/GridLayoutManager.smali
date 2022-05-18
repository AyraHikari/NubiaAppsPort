.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GridLayoutManager$b;,
        Landroidx/recyclerview/widget/GridLayoutManager$a;,
        Landroidx/recyclerview/widget/GridLayoutManager$c;
    }
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:[I

.field d:[Landroid/view/View;

.field final e:Landroid/util/SparseIntArray;

.field final f:Landroid/util/SparseIntArray;

.field g:Landroidx/recyclerview/widget/GridLayoutManager$c;

.field final h:Landroid/graphics/Rect;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 58
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 74
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$i$b;

    move-result-object p1

    .line 75
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$i$b;->b:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->a(I)V

    return-void
.end method

.method private M()V
    .locals 1

    .line 184
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private N()V
    .locals 6

    .line 189
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->w()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 191
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 192
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$b;->f()I

    move-result v3

    .line 193
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private O()V
    .locals 2

    .line 280
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->z()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->D()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->B()I

    move-result v1

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->A()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->E()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->C()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    .line 285
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->m(I)V

    return-void
.end method

.method private P()V
    .locals 2

    .line 368
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    if-eq v0, v1, :cond_1

    .line 369
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I
    .locals 0

    .line 455
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result p2

    if-nez p2, :cond_0

    .line 456
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result p1

    return p1

    .line 458
    :cond_0
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->b(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 467
    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result p1

    return p1
.end method

.method private a(FI)V
    .locals 1

    .line 750
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 752
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->m(I)V

    return-void
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 1

    .line 757
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    if-eqz p4, :cond_0

    .line 760
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z

    move-result p4

    goto :goto_0

    .line 762
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z

    move-result p4

    :goto_0
    if-eqz p4, :cond_1

    .line 765
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 8

    .line 716
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 717
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->d:Landroid/graphics/Rect;

    .line 718
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->bottomMargin:I

    add-int/2addr v2, v3

    .line 720
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->rightMargin:I

    add-int/2addr v3, v1

    .line 722
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->a(II)I

    move-result v1

    .line 725
    iget v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 726
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->a(IIIIZ)I

    move-result p2

    .line 728
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/i;->f()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->y()I

    move-result v3

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v0

    goto :goto_0

    .line 731
    :cond_0
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->a(IIIIZ)I

    move-result p2

    .line 733
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/i;->f()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->x()I

    move-result v2

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    .line 736
    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;IZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    move p4, v1

    move v1, p3

    move p3, v0

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    move p4, v1

    :goto_0
    if-eq p3, v1, :cond_1

    .line 786
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v2, v2, p3

    .line 787
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 788
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v2

    iput v2, v3, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 789
    iput v0, v3, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 790
    iget v2, v3, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    add-int/2addr v0, v2

    add-int/2addr p3, p4

    goto :goto_0

    :cond_1
    return-void
.end method

.method static a([III)[I
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 325
    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_0

    array-length v1, p0

    sub-int/2addr v1, v0

    aget v1, p0, v1

    if-eq v1, p2, :cond_1

    :cond_0
    add-int/lit8 p0, p1, 0x1

    .line 327
    new-array p0, p0, [I

    :cond_1
    const/4 v1, 0x0

    .line 329
    aput v1, p0, v1

    .line 330
    div-int v2, p2, p1

    .line 331
    rem-int/2addr p2, p1

    move v3, v1

    :goto_0
    if-gt v0, p1, :cond_3

    add-int/2addr v1, p2

    if-lez v1, :cond_2

    sub-int v4, p1, v1

    if-ge v4, p2, :cond_2

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v1, p1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    add-int/2addr v3, v4

    .line 342
    aput v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I
    .locals 1

    .line 471
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result p2

    if-nez p2, :cond_0

    .line 472
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I

    move-result p1

    return p1

    .line 474
    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 478
    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->b(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 488
    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I

    move-result p1

    return p1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 393
    :goto_0
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    .line 396
    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    if-lez p4, :cond_3

    .line 397
    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    sub-int/2addr p4, v0

    iput p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 398
    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, p1, p2, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v1

    goto :goto_1

    .line 402
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result p4

    sub-int/2addr p4, v0

    .line 403
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    .line 406
    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    .line 414
    :cond_2
    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    :cond_3
    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I
    .locals 1

    .line 492
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result p2

    if-nez p2, :cond_0

    .line 493
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(I)I

    move-result p1

    return p1

    .line 495
    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 499
    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->b(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 505
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 509
    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(I)I

    move-result p1

    return p1
.end method

.method private i(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 6

    .line 1271
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->w()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1274
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->i()V

    .line 1276
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->k()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v0

    .line 1277
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->k()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {p0, v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1282
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->k()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1283
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 1284
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result p1

    sub-int/2addr p1, v2

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 1283
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result p1

    add-int/2addr p1, v2

    return p1

    .line 1288
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 1289
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v1, v4

    .line 1291
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 1292
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v4, v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v0

    .line 1293
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v3

    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v4, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v3

    .line 1295
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result p1

    sub-int/2addr p1, v2

    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v4, p1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result p1

    add-int/2addr p1, v2

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    int-to-float v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private j(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 9

    .line 1304
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->w()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1307
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->i()V

    .line 1309
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->k()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    .line 1310
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    xor-int/lit8 v4, v0, 0x1

    .line 1311
    invoke-virtual {p0, v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 1315
    :cond_1
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v5

    .line 1317
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v7

    iget v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v6

    .line 1320
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1321
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1322
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result p1

    sub-int/2addr p1, v3

    iget v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v6, p1, v8}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result p1

    add-int/2addr p1, v3

    .line 1325
    iget-boolean v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:Z

    if-eqz v6, :cond_2

    sub-int/2addr p1, v5

    sub-int/2addr p1, v3

    .line 1326
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 1327
    :cond_2
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-nez v0, :cond_3

    return p1

    .line 1331
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 1332
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1331
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1334
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 1335
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v1

    .line 1336
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v4

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v5, v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v4

    sub-int/2addr v4, v1

    add-int/2addr v4, v3

    int-to-float v0, v0

    int-to-float v1, v4

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 1341
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/i;->c()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 1342
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 1341
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method private m(I)V
    .locals 2

    .line 314
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->a([III)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    return-void
.end method


# virtual methods
.method a(II)I
    .locals 3

    .line 348
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    sub-int v2, v1, p1

    aget v2, v0, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget p1, v0, v1

    sub-int/2addr v2, p1

    return v2

    .line 352
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    .line 376
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->O()V

    .line 377
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->P()V

    .line 378
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 2

    .line 119
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 120
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    return p1

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 127
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 1068
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/GridLayoutManager;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 1072
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 1073
    iget v6, v5, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 1074
    iget v7, v5, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    add-int/2addr v7, v5

    .line 1075
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    move/from16 v5, p2

    .line 1081
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->f(I)I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_2

    move v5, v9

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 1082
    :goto_0
    iget-boolean v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->k:Z

    if-eq v5, v10, :cond_3

    move v5, v9

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/4 v10, -0x1

    if-eqz v5, :cond_4

    .line 1085
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->w()I

    move-result v5

    sub-int/2addr v5, v9

    move v11, v10

    move v12, v11

    goto :goto_2

    .line 1091
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->w()I

    move-result v5

    move v11, v5

    move v12, v9

    const/4 v5, 0x0

    .line 1093
    :goto_2
    iget v13, v0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-ne v13, v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->h()Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v9

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 1117
    :goto_3
    invoke-direct {v0, v1, v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v14

    move v15, v10

    move/from16 v16, v15

    const/4 v8, 0x0

    const/16 v17, 0x0

    move v10, v5

    move-object v5, v4

    :goto_4
    if-eq v10, v11, :cond_18

    .line 1119
    invoke-direct {v0, v1, v2, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v9

    .line 1120
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto/16 :goto_d

    .line 1125
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_8

    if-eq v9, v14, :cond_8

    if-eqz v4, :cond_7

    goto/16 :goto_d

    :cond_7
    move-object/from16 v18, v3

    move-object/from16 v20, v5

    move/from16 p1, v8

    move/from16 v19, v11

    move/from16 v11, v16

    move/from16 v5, v17

    goto/16 :goto_b

    .line 1136
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 1137
    iget v2, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    move-object/from16 v18, v3

    .line 1138
    iget v3, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    move/from16 v19, v11

    iget v11, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    add-int/2addr v3, v11

    .line 1139
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-eqz v11, :cond_9

    if-ne v2, v6, :cond_9

    if-ne v3, v7, :cond_9

    return-object v1

    .line 1144
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v4, :cond_b

    .line 1145
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-nez v11, :cond_c

    if-nez v5, :cond_c

    :cond_b
    :goto_5
    move-object/from16 v20, v5

    move/from16 p1, v8

    move/from16 v11, v16

    move/from16 v5, v17

    :goto_6
    const/4 v8, 0x1

    goto :goto_a

    .line 1148
    :cond_c
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1149
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v20

    sub-int v11, v20, v11

    .line 1151
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v20

    if-eqz v20, :cond_f

    if-le v11, v8, :cond_d

    goto :goto_5

    :cond_d
    if-ne v11, v8, :cond_13

    if-le v2, v15, :cond_e

    const/4 v11, 0x1

    goto :goto_7

    :cond_e
    const/4 v11, 0x0

    :goto_7
    if-ne v13, v11, :cond_13

    goto :goto_5

    :cond_f
    if-nez v4, :cond_13

    move-object/from16 v20, v5

    move/from16 p1, v8

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 1160
    invoke-virtual {v0, v1, v5, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;ZZ)Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v5, v17

    if-le v11, v5, :cond_10

    move/from16 v11, v16

    goto :goto_a

    :cond_10
    if-ne v11, v5, :cond_12

    move/from16 v11, v16

    if-le v2, v11, :cond_11

    goto :goto_8

    :cond_11
    const/4 v8, 0x0

    :goto_8
    if-ne v13, v8, :cond_15

    goto :goto_6

    :cond_12
    move/from16 v11, v16

    goto :goto_9

    :cond_13
    move-object/from16 v20, v5

    move/from16 p1, v8

    :cond_14
    move/from16 v11, v16

    move/from16 v5, v17

    :cond_15
    :goto_9
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_17

    .line 1172
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1174
    iget v4, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 1175
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1176
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v8, v3, v2

    move v15, v4

    move/from16 v17, v5

    move/from16 v16, v11

    move-object/from16 v5, v20

    move-object v4, v1

    goto :goto_c

    .line 1179
    :cond_16
    iget v5, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 1180
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1181
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v17, v3, v2

    move/from16 v8, p1

    move/from16 v16, v5

    move-object v5, v1

    goto :goto_c

    :cond_17
    :goto_b
    move/from16 v8, p1

    move/from16 v17, v5

    move/from16 v16, v11

    move-object/from16 v5, v20

    :goto_c
    add-int/2addr v10, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    move/from16 v11, v19

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_18
    :goto_d
    move-object/from16 v20, v5

    if-eqz v4, :cond_19

    goto :goto_e

    :cond_19
    move-object/from16 v4, v20

    :goto_e
    return-object v4
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;III)Landroid/view/View;
    .locals 7

    .line 421
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->i()V

    .line 424
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/i;->c()I

    move-result v0

    .line 425
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/i;->d()I

    move-result v1

    if-le p4, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_6

    .line 429
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v5

    .line 430
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_5

    if-ge v6, p5, :cond_5

    .line 432
    invoke-direct {p0, p1, p2, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    .line 436
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$j;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_3

    .line 440
    :cond_2
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/i;->a(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_4

    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    .line 441
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/i;->b(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_3

    goto :goto_2

    :cond_3
    return-object v5

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    move-object v3, v5

    :cond_5
    :goto_3
    add-int/2addr p3, v2

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method public a()Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 3

    .line 231
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(II)V

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 1

    .line 242
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 1

    .line 247
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 250
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(I)V
    .locals 3

    .line 814
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 817
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    if-lt p1, v0, :cond_1

    .line 822
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 823
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    .line 824
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->p()V

    return-void

    .line 819
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 4

    .line 290
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    if-nez v0, :cond_0

    .line 291
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/graphics/Rect;II)V

    .line 294
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->B()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->D()I

    move-result v1

    add-int/2addr v0, v1

    .line 295
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->C()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->E()I

    move-result v2

    add-int/2addr v1, v2

    .line 296
    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 298
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->I()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->a(III)I

    move-result p1

    .line 299
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    array-length v1, p3

    sub-int/2addr v1, v3

    aget p3, p3, v1

    add-int/2addr p3, v0

    .line 300
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->H()I

    move-result v0

    .line 299
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(III)I

    move-result p2

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 303
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->H()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(III)I

    move-result p2

    .line 304
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v1

    .line 305
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->I()I

    move-result v0

    .line 304
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(III)I

    move-result p1

    .line 307
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->g(II)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;Landroidx/core/f/a/c;)V
    .locals 7

    .line 147
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 148
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    if-nez v1, :cond_0

    .line 149
    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;Landroidx/core/f/a/c;)V

    return-void

    .line 152
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 153
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->f()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result p1

    .line 154
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-nez p2, :cond_1

    .line 156
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    .line 155
    invoke-static/range {v1 .. v6}, Landroidx/core/f/a/c$c;->a(IIIIZZ)Landroidx/core/f/a/c$c;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/core/f/a/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 161
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a()I

    move-result v3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    .line 159
    invoke-static/range {v1 .. v6}, Landroidx/core/f/a/c$c;->a(IIIIZZ)Landroidx/core/f/a/c$c;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/core/f/a/c;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
    .locals 1

    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V

    .line 360
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->O()V

    .line 361
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V

    .line 364
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->P()V

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    .line 530
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/i;->i()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v5

    .line 532
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->w()I

    move-result v10

    if-lez v10, :cond_1

    iget-object v10, v6, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v11, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    aget v10, v10, v11

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    if-eqz v9, :cond_2

    .line 537
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->O()V

    .line 539
    :cond_2
    iget v11, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    if-ne v11, v8, :cond_3

    move v11, v8

    goto :goto_2

    :cond_3
    move v11, v5

    .line 543
    :goto_2
    iget v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    if-nez v11, :cond_4

    .line 545
    iget v12, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    invoke-direct {v6, v0, v1, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v12

    .line 546
    iget v13, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    invoke-direct {v6, v0, v1, v13}, Landroidx/recyclerview/widget/GridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v13

    add-int/2addr v12, v13

    :cond_4
    move v13, v5

    .line 549
    :goto_3
    iget v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    if-ge v13, v14, :cond_8

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-lez v12, :cond_8

    .line 550
    iget v14, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 551
    invoke-direct {v6, v0, v1, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v15

    .line 552
    iget v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    if-gt v15, v4, :cond_7

    sub-int/2addr v12, v15

    if-gez v12, :cond_5

    goto :goto_4

    .line 561
    :cond_5
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_4

    .line 566
    :cond_6
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aput-object v4, v14, v13

    add-int/lit8 v13, v13, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_3

    .line 553
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spans."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    if-nez v13, :cond_9

    .line 571
    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    return-void

    :cond_9
    const/4 v4, 0x0

    .line 579
    invoke-direct {v6, v0, v1, v13, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;IZ)V

    move v0, v5

    move v1, v0

    :goto_5
    if-ge v0, v13, :cond_f

    .line 581
    iget-object v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v12, v12, v0

    .line 582
    iget-object v14, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    if-nez v14, :cond_b

    if-eqz v11, :cond_a

    .line 584
    invoke-virtual {v6, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroid/view/View;)V

    goto :goto_6

    .line 586
    :cond_a
    invoke-virtual {v6, v12, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_6

    :cond_b
    if-eqz v11, :cond_c

    .line 590
    invoke-virtual {v6, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;)V

    goto :goto_6

    .line 592
    :cond_c
    invoke-virtual {v6, v12, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;I)V

    .line 595
    :goto_6
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-virtual {v6, v12, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 597
    invoke-direct {v6, v12, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    .line 598
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v14, v12}, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I

    move-result v14

    if-le v14, v1, :cond_d

    move v1, v14

    .line 602
    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/GridLayoutManager$b;

    const/high16 v15, 0x3f800000    # 1.0f

    .line 603
    iget-object v5, v6, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v5, v12}, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    iget v12, v14, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    int-to-float v12, v12

    div-float/2addr v5, v12

    cmpl-float v12, v5, v4

    if-lez v12, :cond_e

    move v4, v5

    :cond_e
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x0

    goto :goto_5

    :cond_f
    if-eqz v9, :cond_11

    .line 611
    invoke-direct {v6, v4, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->a(FI)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    if-ge v0, v13, :cond_11

    .line 615
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v3, v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    .line 616
    invoke-direct {v6, v3, v4, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    .line 617
    iget-object v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I

    move-result v3

    if-le v3, v1, :cond_10

    move v1, v3

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v13, :cond_14

    .line 627
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v3, v3, v0

    .line 628
    iget-object v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I

    move-result v4

    if-eq v4, v1, :cond_13

    .line 629
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 630
    iget-object v5, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->d:Landroid/graphics/Rect;

    .line 631
    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->bottomMargin:I

    add-int/2addr v9, v10

    .line 633
    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v5

    iget v5, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->leftMargin:I

    add-int/2addr v10, v5

    iget v5, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->rightMargin:I

    add-int/2addr v10, v5

    .line 635
    iget v5, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    iget v11, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    invoke-virtual {v6, v5, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->a(II)I

    move-result v5

    .line 638
    iget v11, v6, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-ne v11, v8, :cond_12

    .line 639
    iget v4, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->width:I

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x0

    invoke-static {v5, v11, v10, v4, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v4

    sub-int v5, v1, v9

    .line 641
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_9

    :cond_12
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x0

    sub-int v10, v1, v10

    .line 644
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 646
    iget v4, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->height:I

    invoke-static {v5, v11, v9, v4, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v5

    move v4, v10

    .line 649
    :goto_9
    invoke-direct {v6, v3, v4, v5, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_a

    :cond_13
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x0

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    const/4 v12, 0x0

    .line 653
    iput v1, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    .line 656
    iget v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v3, -0x1

    if-ne v0, v8, :cond_16

    .line 657
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v3, :cond_15

    .line 658
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    sub-int v1, v0, v1

    move v2, v1

    goto :goto_b

    .line 661
    :cond_15
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    add-int/2addr v1, v0

    move v2, v0

    move v0, v1

    :goto_b
    move v1, v12

    move v3, v1

    goto :goto_c

    .line 665
    :cond_16
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v3, :cond_17

    .line 666
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    sub-int v1, v0, v1

    move v3, v1

    move v2, v12

    move v1, v0

    move v0, v2

    goto :goto_c

    .line 669
    :cond_17
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    add-int/2addr v1, v0

    move v3, v0

    move v0, v12

    move v2, v0

    :goto_c
    if-ge v12, v13, :cond_1c

    .line 674
    iget-object v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v9, v4, v12

    .line 675
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 676
    iget v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-ne v4, v8, :cond_19

    .line 677
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->h()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 678
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->B()I

    move-result v1

    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    iget v5, v10, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    sub-int/2addr v4, v5

    aget v3, v3, v4

    add-int/2addr v1, v3

    .line 679
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I

    move-result v3

    sub-int v3, v1, v3

    move v11, v0

    move v14, v1

    move v15, v2

    goto :goto_d

    .line 681
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->B()I

    move-result v1

    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v4, v10, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    aget v3, v3, v4

    add-int/2addr v1, v3

    .line 682
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v1

    move v11, v0

    move/from16 v16, v1

    move v15, v2

    move v14, v3

    goto :goto_e

    .line 685
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->C()I

    move-result v0

    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v4, v10, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    aget v2, v2, v4

    add-int/2addr v0, v2

    .line 686
    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/i;

    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    move v15, v0

    move v14, v1

    move v11, v2

    :goto_d
    move/from16 v16, v3

    :goto_e
    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v16

    move v3, v15

    move v4, v14

    move v5, v11

    .line 690
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 698
    invoke-virtual {v10}, Landroidx/recyclerview/widget/GridLayoutManager$b;->d()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v10}, Landroidx/recyclerview/widget/GridLayoutManager$b;->e()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 699
    :cond_1a
    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    .line 701
    :cond_1b
    iget-boolean v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    add-int/lit8 v12, v12, 0x1

    move v0, v11

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    goto/16 :goto_c

    .line 703
    :cond_1c
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$u;)V

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 5

    .line 515
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    const/4 v1, 0x0

    move v2, v1

    .line 517
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    .line 518
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 519
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$i$a;->b(II)V

    .line 520
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 522
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 206
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    .line 207
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b()V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 200
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    .line 201
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b()V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 225
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    .line 226
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b()V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 219
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    .line 220
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 113
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Z)V

    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$j;)Z
    .locals 0

    .line 256
    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager$b;

    return p1
.end method

.method public b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    .line 384
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->O()V

    .line 385
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->P()V

    .line 386
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 2

    .line 133
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    return p1

    .line 136
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 141
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .line 1195
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->z:Z

    if-eqz v0, :cond_0

    .line 1196
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1

    .line 1198
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 212
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    .line 213
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b()V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1190
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .line 1204
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->z:Z

    if-eqz v0, :cond_0

    .line 1205
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1

    .line 1207
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 1

    .line 167
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->N()V

    .line 170
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 174
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->M()V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .line 1213
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->z:Z

    if-eqz v0, :cond_0

    .line 1214
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->j(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1

    .line 1216
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .line 1222
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->z:Z

    if-eqz v0, :cond_0

    .line 1223
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->j(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1

    .line 1225
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    return p1
.end method
