.class public abstract Landroidx/recyclerview/widget/RecyclerView$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$i$b;,
        Landroidx/recyclerview/widget/RecyclerView$i$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/o$b;

.field private final b:Landroidx/recyclerview/widget/o$b;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field p:Landroidx/recyclerview/widget/b;

.field q:Landroidx/recyclerview/widget/RecyclerView;

.field r:Landroidx/recyclerview/widget/o;

.field s:Landroidx/recyclerview/widget/o;

.field t:Landroidx/recyclerview/widget/RecyclerView$t;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 7582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7590
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$i$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$i$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->a:Landroidx/recyclerview/widget/o$b;

    .line 7626
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$i$2;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$i$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->b:Landroidx/recyclerview/widget/o$b;

    .line 7666
    new-instance v2, Landroidx/recyclerview/widget/o;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/o$b;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->r:Landroidx/recyclerview/widget/o;

    .line 7667
    new-instance v0, Landroidx/recyclerview/widget/o;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/o$b;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->s:Landroidx/recyclerview/widget/o;

    const/4 v0, 0x0

    .line 7672
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->u:Z

    .line 7674
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->v:Z

    .line 7680
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->w:Z

    const/4 v0, 0x1

    .line 7686
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->c:Z

    .line 7688
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->d:Z

    return-void
.end method

.method public static a(III)I
    .locals 2

    .line 7876
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7877
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 7885
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    .line 7882
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static a(IIIIZ)I
    .locals 4

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    .line 9446
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_1

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_7

    if-eq p1, v2, :cond_3

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_1
    if-ltz p3, :cond_2

    :goto_0
    move p1, v3

    goto :goto_3

    :cond_2
    if-ne p3, v1, :cond_4

    :cond_3
    move p3, p0

    goto :goto_3

    :cond_4
    if-ne p3, v0, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v3, :cond_5

    goto :goto_1

    :cond_5
    move p3, p0

    move p1, p2

    goto :goto_3

    :cond_6
    :goto_1
    move p3, p0

    move p1, v2

    goto :goto_3

    :cond_7
    :goto_2
    move p1, p2

    move p3, p1

    .line 9487
    :goto_3
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$i$b;
    .locals 2

    .line 10635
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$i$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$i$b;-><init>()V

    .line 10636
    sget-object v1, Landroidx/recyclerview/a$c;->f:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 10638
    sget p1, Landroidx/recyclerview/a$c;->g:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->a:I

    .line 10640
    sget p1, Landroidx/recyclerview/a$c;->q:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->b:I

    .line 10641
    sget p1, Landroidx/recyclerview/a$c;->p:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->c:Z

    .line 10642
    sget p1, Landroidx/recyclerview/a$c;->r:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->d:Z

    .line 10643
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private a(ILandroid/view/View;)V
    .locals 0

    .line 8791
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/b;->e(I)V

    return-void
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 4

    .line 8563
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    if-nez p3, :cond_1

    .line 8564
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 8573
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/p;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/p;->f(Landroidx/recyclerview/widget/RecyclerView$x;)V

    goto :goto_1

    .line 8566
    :cond_1
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/p;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/p;->e(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 8575
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 8576
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->k()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 8586
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v1, v3, :cond_5

    .line 8588
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/b;->b(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 8590
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/b;->b()I

    move-result p2

    :cond_3
    if-eq v1, v3, :cond_4

    if-eq v1, p2, :cond_8

    .line 8598
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->f(II)V

    goto :goto_4

    .line 8593
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 8595
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8601
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1, p1, p2, v2}, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    .line 8602
    iput-boolean p2, p3, Landroidx/recyclerview/widget/RecyclerView$j;->e:Z

    .line 8603
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$t;->h()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 8604
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$t;->b(Landroid/view/View;)V

    goto :goto_4

    .line 8577
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8578
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->j()V

    goto :goto_3

    .line 8580
    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->l()V

    .line 8582
    :goto_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8607
    :cond_8
    :goto_4
    iget-boolean p1, p3, Landroidx/recyclerview/widget/RecyclerView$j;->f:Z

    if-eqz p1, :cond_9

    .line 8611
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8612
    iput-boolean v2, p3, Landroidx/recyclerview/widget/RecyclerView$j;->f:Z

    :cond_9
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;ILandroid/view/View;)V
    .locals 2

    .line 9200
    invoke-static {p3}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 9201
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 9207
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 9208
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9209
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->g(I)V

    .line 9210
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroidx/recyclerview/widget/RecyclerView$x;)V

    goto :goto_0

    .line 9212
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->h(I)V

    .line 9213
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->c(Landroid/view/View;)V

    .line 9214
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/p;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/p;->h(Landroidx/recyclerview/widget/RecyclerView$x;)V

    :goto_0
    return-void
.end method

.method private static b(III)Z
    .locals 3

    .line 9340
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 9341
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private c(Landroid/view/View;Landroid/graphics/Rect;)[I
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 9835
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->B()I

    move-result v1

    .line 9836
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v2

    .line 9837
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->z()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->D()I

    move-result v4

    sub-int/2addr v3, v4

    .line 9838
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->A()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v5

    sub-int/2addr v4, v5

    .line 9839
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    .line 9840
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v6, p1

    .line 9841
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v5

    .line 9842
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, v6

    sub-int/2addr v5, v1

    const/4 v1, 0x0

    .line 9844
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v6, v2

    .line 9845
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p1, v3

    .line 9846
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p2, v4

    .line 9847
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 9853
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->u()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    .line 9855
    :cond_0
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_0

    .line 9858
    :cond_2
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_0
    move v3, v7

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    .line 9864
    :cond_3
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    aput v3, v0, v1

    aput v2, v0, v8

    return-object v0
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 6

    .line 9966
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 9970
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->B()I

    move-result v1

    .line 9971
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v2

    .line 9972
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->z()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->D()I

    move-result v4

    sub-int/2addr v3, v4

    .line 9973
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->A()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v5

    sub-int/2addr v4, v5

    .line 9974
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/Rect;

    .line 9975
    invoke-virtual {p0, p1, v5}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9977
    iget p1, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    if-ge p1, v3, :cond_2

    iget p1, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    if-le p1, v1, :cond_2

    iget p1, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    if-ge p1, v4, :cond_2

    iget p1, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p3

    if-gt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 8999
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    return v0
.end method

.method public B()I
    .locals 1

    .line 9009
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()I
    .locals 1

    .line 9019
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()I
    .locals 1

    .line 9029
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()I
    .locals 1

    .line 9039
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()Landroid/view/View;
    .locals 3

    .line 9089
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 9092
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9093
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/b;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public G()I
    .locals 1

    .line 9112
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 9113
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public H()I
    .locals 1

    .line 10275
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/f/u;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public I()I
    .locals 1

    .line 10283
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/f/u;->i(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method J()V
    .locals 1

    .line 10306
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    if-eqz v0, :cond_0

    .line 10307
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->f()V

    :cond_0
    return-void
.end method

.method public K()V
    .locals 1

    const/4 v0, 0x1

    .line 10472
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->u:Z

    return-void
.end method

.method L()Z
    .locals 5

    .line 10669
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->w()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 10671
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v3

    .line 10672
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 10673
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    .line 10508
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$a;

    if-nez p1, :cond_0

    goto :goto_0

    .line 10511
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract a()Landroidx/recyclerview/widget/RecyclerView$j;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 1

    .line 8371
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 1

    .line 8347
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$j;

    if-eqz v0, :cond_0

    .line 8348
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$j;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroidx/recyclerview/widget/RecyclerView$j;)V

    return-object v0

    .line 8349
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 8350
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$j;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 8352
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(IILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 0

    return-void
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 0

    return-void
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 1

    .line 8911
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    .line 8912
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g(I)V

    .line 8913
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 2

    .line 7836
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->B()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->D()I

    move-result v1

    add-int/2addr v0, v1

    .line 7837
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v1

    add-int/2addr p1, v1

    .line 7838
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->H()I

    move-result v1

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(III)I

    move-result p2

    .line 7839
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->I()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(III)I

    move-result p1

    .line 7840
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g(II)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 8518
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 8536
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 5

    .line 9369
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 9371
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9372
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 9373
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    .line 9375
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->z()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->x()I

    move-result v2

    .line 9376
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->B()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->D()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget p2, v0, Landroidx/recyclerview/widget/RecyclerView$j;->width:I

    .line 9378
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v4

    .line 9375
    invoke-static {v1, v2, v3, p2, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->a(IIIIZ)I

    move-result p2

    .line 9379
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->A()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->y()I

    move-result v2

    .line 9380
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$j;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget p3, v0, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    .line 9382
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v4

    .line 9379
    invoke-static {v1, v2, v3, p3, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->a(IIIIZ)I

    move-result p3

    .line 9383
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->b(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9384
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 3

    .line 9585
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 9586
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9587
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v2

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$j;->topMargin:I

    add-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v2

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    sub-int/2addr p4, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$j;)V
    .locals 2

    .line 8804
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 8805
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8806
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/p;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/p;->e(Landroidx/recyclerview/widget/RecyclerView$x;)V

    goto :goto_0

    .line 8808
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/p;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/p;->f(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 8810
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 9638
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method a(Landroid/view/View;Landroidx/core/f/a/c;)V
    .locals 2

    .line 10428
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10430
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/b;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10431
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->D:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;Landroidx/core/f/a/c;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 0

    .line 8900
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;)V

    .line 8901
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 5

    if-eqz p2, :cond_0

    .line 9606
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9607
    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 9608
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p2

    .line 9607
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 9610
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9613
    :goto_0
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    .line 9614
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 9615
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9616
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroid/graphics/RectF;

    .line 9617
    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9618
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9619
    iget p2, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, p2

    .line 9620
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p2, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 9621
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 9622
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v0

    .line 9623
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 9619
    invoke-virtual {p3, p2, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9627
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 10397
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->D:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method a(Landroidx/core/f/a/c;)V
    .locals 2

    .line 10348
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->D:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/core/f/a/c;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 2

    .line 9192
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 9194
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v1

    .line 9195
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;II)V
    .locals 0

    .line 10256
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->e(II)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;Landroidx/core/f/a/c;)V
    .locals 6

    .line 10453
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result p1

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 10454
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result p2

    :cond_1
    move v2, p2

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10456
    invoke-static/range {v0 .. v5}, Landroidx/core/f/a/c$c;->a(IIIIZZ)Landroidx/core/f/a/c$c;

    move-result-object p1

    .line 10458
    invoke-virtual {p4, p1}, Landroidx/core/f/a/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 10413
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    .line 10416
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    .line 10417
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 10418
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 10419
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 10416
    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 10421
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz p1, :cond_3

    .line 10422
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/core/f/a/c;)V
    .locals 3

    .line 10378
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    .line 10379
    invoke-virtual {p3, v0}, Landroidx/core/f/a/c;->a(I)V

    .line 10380
    invoke-virtual {p3, v2}, Landroidx/core/f/a/c;->a(Z)V

    .line 10382
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    .line 10383
    invoke-virtual {p3, v0}, Landroidx/core/f/a/c;->a(I)V

    .line 10384
    invoke-virtual {p3, v2}, Landroidx/core/f/a/c;->a(Z)V

    .line 10388
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    .line 10389
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v1

    .line 10390
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->e(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v2

    .line 10391
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result p1

    .line 10388
    invoke-static {v0, v1, v2, p1}, Landroidx/core/f/a/c$b;->a(IIZI)Landroidx/core/f/a/c$b;

    move-result-object p1

    .line 10392
    invoke-virtual {p3, p1}, Landroidx/core/f/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 1

    .line 8465
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 8466
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8467
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->f()V

    .line 8469
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 8470
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$t;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 10120
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 0

    .line 8221
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;I)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "You must override smoothScrollToPosition to support smooth scrolling"

    .line 8451
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 7897
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7898
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method a(ILandroid/os/Bundle;)Z
    .locals 2

    .line 10550
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->D:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method a(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z
    .locals 2

    .line 9293
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->c:Z

    if-eqz v0, :cond_1

    .line 9294
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroidx/recyclerview/widget/RecyclerView$j;->width:I

    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->b(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9295
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p4, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->b(III)Z

    move-result p1

    if-nez p1, :cond_0

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

.method a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .line 10598
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroidx/recyclerview/widget/RecyclerView$u;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;ZZ)Z
    .locals 2

    .line 9946
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->r:Landroidx/recyclerview/widget/o;

    const/16 v0, 0x6003

    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/o;->a(Landroid/view/View;I)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->s:Landroidx/recyclerview/widget/o;

    .line 9948
    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/o;->a(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    return p1

    :cond_1
    xor-int/2addr p1, v1

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$j;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;ILandroid/os/Bundle;)Z
    .locals 7

    .line 10566
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/16 p4, 0x1000

    const/4 v0, 0x1

    if-eq p3, p4, :cond_3

    const/16 p4, 0x2000

    if-eq p3, p4, :cond_1

    move v2, p2

    move v3, v2

    goto :goto_3

    :cond_1
    const/4 p3, -0x1

    .line 10572
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10573
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->A()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result p4

    sub-int/2addr p1, p4

    neg-int p1, p1

    goto :goto_0

    :cond_2
    move p1, p2

    .line 10575
    :goto_0
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 10576
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->z()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->B()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->D()I

    move-result p4

    sub-int/2addr p3, p4

    neg-int p3, p3

    goto :goto_2

    .line 10580
    :cond_3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10581
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->A()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_4
    move p1, p2

    .line 10583
    :goto_1
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 10584
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->z()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->B()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->D()I

    move-result p4

    sub-int/2addr p3, p4

    :goto_2
    move v3, p1

    move v2, p3

    goto :goto_3

    :cond_5
    move v3, p1

    move v2, p2

    :goto_3
    if-nez v3, :cond_6

    if-nez v2, :cond_6

    return p2

    .line 10591
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->a(IILandroid/view/animation/Interpolator;IZ)V

    return v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 9886
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 2

    .line 9906
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object p2

    const/4 p3, 0x0

    .line 9908
    aget v0, p2, p3

    const/4 v1, 0x1

    .line 9909
    aget p2, p2, v1

    if-eqz p5, :cond_0

    .line 9910
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result p5

    if-eqz p5, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 9913
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 9915
    :cond_3
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->a(II)V

    :goto_1
    return v1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9991
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->t()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->o()Z

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

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 10013
    invoke-virtual {p0, p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 1

    .line 8164
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8165
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    .line 10528
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$a;

    if-nez p1, :cond_0

    goto :goto_0

    .line 10531
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 8547
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->b(Landroid/view/View;I)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 8559
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 9707
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 9708
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 9711
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 9712
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 6

    .line 9228
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->e()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 9231
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->e(I)Landroid/view/View;

    move-result-object v2

    .line 9232
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v3

    .line 9233
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 9241
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$x;->a(Z)V

    .line 9242
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->r()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9243
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9245
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->z:Landroidx/recyclerview/widget/RecyclerView$f;

    if-eqz v4, :cond_2

    .line 9246
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->z:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$f;->d(Landroidx/recyclerview/widget/RecyclerView$x;)V

    :cond_2
    const/4 v4, 0x1

    .line 9248
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$x;->a(Z)V

    .line 9249
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 9251
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->f()V

    if-lez v0, :cond_4

    .line 9253
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_4
    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 1

    .line 10312
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 10313
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    :cond_0
    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 7742
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 7743
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    const/4 p1, 0x0

    .line 7744
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    .line 7745
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    goto :goto_0

    .line 7747
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 7748
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    .line 7749
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    .line 7750
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 7752
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->e:I

    .line 7753
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->f:I

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 1

    const/4 v0, 0x0

    .line 8118
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->v:Z

    .line 8119
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method b(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z
    .locals 2

    .line 9307
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->c:Z

    if-eqz v0, :cond_1

    .line 9309
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroidx/recyclerview/widget/RecyclerView$j;->width:I

    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->b(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9310
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->b(III)Z

    move-result p1

    if-nez p1, :cond_0

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

.method public c(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(I)Landroid/view/View;
    .locals 5

    .line 8731
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->w()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 8733
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v2

    .line 8734
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 8738
    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->d()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->D:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 8739
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 8625
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .line 8825
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$j;)V

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 2

    .line 10338
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 10339
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v1

    .line 10340
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10341
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(ILandroidx/recyclerview/widget/RecyclerView$p;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "You must override onLayoutChildren(Recycler recycler, State state) "

    .line 8285
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    .line 8113
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->v:Z

    .line 8114
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    .line 7991
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->w:Z

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 0

    .line 8673
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$j;->f()I

    move-result p1

    return p1
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method d(II)V
    .locals 1

    .line 7757
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    .line 7758
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->e:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 7759
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->b:Z

    if-nez p1, :cond_0

    .line 7760
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    .line 7763
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    .line 7764
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->f:I

    if-nez p1, :cond_1

    .line 7765
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->b:Z

    if-nez p1, :cond_1

    .line 7766
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    :cond_1
    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 8703
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 8706
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 8710
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method e(II)V
    .locals 8

    .line 7784
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->w()I

    move-result v0

    if-nez v0, :cond_0

    .line 7786
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->e(II)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    move v4, v3

    move v5, v4

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_5

    .line 7795
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v6

    .line 7796
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/Rect;

    .line 7797
    invoke-virtual {p0, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7798
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v4, :cond_1

    .line 7799
    iget v4, v7, Landroid/graphics/Rect;->left:I

    .line 7801
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v2, :cond_2

    .line 7802
    iget v2, v7, Landroid/graphics/Rect;->right:I

    .line 7804
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v5, :cond_3

    .line 7805
    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 7807
    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_4

    .line 7808
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7811
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 7812
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Landroid/view/View;)I
    .locals 2

    .line 9500
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9501
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    return p1
.end method

.method public f(II)V
    .locals 2

    .line 8856
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8861
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->h(I)V

    .line 8862
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;I)V

    return-void

    .line 8858
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot move a child from non-existing index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 8859
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method f(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 10649
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10650
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10648
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->d(II)V

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 2

    .line 9514
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9515
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    return p1
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(I)V
    .locals 1

    .line 8637
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8639
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->a(I)V

    :cond_0
    return-void
.end method

.method public g(II)V
    .locals 1

    .line 10267
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public h(Landroid/view/View;)I
    .locals 1

    .line 9650
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->n(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h(I)V
    .locals 1

    .line 8784
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(ILandroid/view/View;)V

    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 1

    .line 9662
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->l(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public i(I)Landroid/view/View;
    .locals 1

    .line 8933
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->b(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public j(Landroid/view/View;)I
    .locals 1

    .line 9674
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->o(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public j(I)V
    .locals 1

    .line 9123
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9124
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->d(I)V

    :cond_0
    return-void
.end method

.method public k(Landroid/view/View;)I
    .locals 1

    .line 9686
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->m(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public k(I)V
    .locals 1

    .line 9135
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9136
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->c(I)V

    :cond_0
    return-void
.end method

.method public l(Landroid/view/View;)I
    .locals 0

    .line 9727
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public l(I)V
    .locals 0

    return-void
.end method

.method public m(Landroid/view/View;)I
    .locals 0

    .line 9742
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 0

    .line 9757
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public o(Landroid/view/View;)I
    .locals 0

    .line 9772
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public p()V
    .locals 1

    .line 7847
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7848
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final q()Z
    .locals 1

    .line 8058
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->d:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .line 8130
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->v:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .line 8230
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 1

    .line 8477
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()I
    .locals 1

    .line 8489
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/f/u;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public w()I
    .locals 1

    .line 8923
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()I
    .locals 1

    .line 8950
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->e:I

    return v0
.end method

.method public y()I
    .locals 1

    .line 8967
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->f:I

    return v0
.end method

.method public z()I
    .locals 1

    .line 8983
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    return v0
.end method
