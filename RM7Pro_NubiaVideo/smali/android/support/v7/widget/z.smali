.class public Landroid/support/v7/widget/z;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/z$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:[I

.field private j:[I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/support/v7/widget/z;->a:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Landroid/support/v7/widget/z;->b:I

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Landroid/support/v7/widget/z;->c:I

    const v3, 0x800033

    .line 7
    iput v3, p0, Landroid/support/v7/widget/z;->e:I

    .line 8
    sget-object v3, La/b/d/a/j;->n0:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroid/support/v7/widget/r0;->s(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/r0;

    move-result-object p1

    .line 9
    sget p2, La/b/d/a/j;->p0:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/r0;->i(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 10
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/z;->setOrientation(I)V

    .line 11
    :cond_0
    sget p2, La/b/d/a/j;->o0:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/r0;->i(II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 12
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/z;->setGravity(I)V

    .line 13
    :cond_1
    sget p2, La/b/d/a/j;->q0:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/r0;->a(IZ)Z

    move-result p2

    if-nez p2, :cond_2

    .line 14
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/z;->setBaselineAligned(Z)V

    .line 15
    :cond_2
    sget p2, La/b/d/a/j;->s0:I

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/r0;->g(IF)F

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/z;->g:F

    .line 16
    sget p2, La/b/d/a/j;->r0:I

    .line 17
    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/r0;->i(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/z;->b:I

    .line 18
    sget p2, La/b/d/a/j;->v0:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/r0;->a(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/widget/z;->h:Z

    .line 19
    sget p2, La/b/d/a/j;->t0:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/r0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/z;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    sget p2, La/b/d/a/j;->w0:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/r0;->i(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/z;->n:I

    .line 21
    sget p2, La/b/d/a/j;->u0:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/r0;->e(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/z;->o:I

    .line 22
    invoke-virtual {p1}, Landroid/support/v7/widget/r0;->t()V

    return-void
.end method

.method private h(II)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/z$a;

    .line 5
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 6
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    .line 8
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 9
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i(II)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/z$a;

    .line 5
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 6
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 8
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 9
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private x(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 1
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroid/support/v7/widget/z$a;

    return p1
.end method

.method d(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/z;->getVirtualChildCount()I

    move-result v0

    .line 2
    invoke-static {p0}, Landroid/support/v7/widget/x0;->b(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/z;->q(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/z$a;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/z;->l:I

    sub-int/2addr v3, v4

    .line 9
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/z;->g(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/z;->q(I)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 11
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/z;->l:I

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/z$a;

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/z;->l:I

    :goto_2
    sub-int/2addr v0, v1

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 17
    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/z;->g(Landroid/graphics/Canvas;I)V

    :cond_6
    return-void
.end method

.method e(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/z;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/z;->q(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/z$a;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/z;->m:I

    sub-int/2addr v2, v3

    .line 7
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/z;->f(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/z;->q(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/z;->m:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/z$a;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 13
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/z;->f(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method f(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/z;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/z;->o:I

    add-int/2addr v1, v2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/z;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/z;->m:I

    add-int/2addr v3, p2

    .line 3
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object p2, p0, Landroid/support/v7/widget/z;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method g(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/z;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/z;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/z;->l:I

    add-int/2addr v2, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/z;->o:I

    sub-int/2addr v3, v4

    .line 3
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object p2, p0, Landroid/support/v7/widget/z;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/z;->j()Landroid/support/v7/widget/z$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/z;->k(Landroid/util/AttributeSet;)Landroid/support/v7/widget/z$a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/z;->l(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/z$a;

    move-result-object p1

    return-object p1
.end method

.method public getBaseline()I
    .locals 5

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->b:I

    if-gez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/z;->b:I

    if-le v0, v1, :cond_6

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 6
    iget v0, p0, Landroid/support/v7/widget/z;->b:I

    if-nez v0, :cond_1

    return v2

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    iget v2, p0, Landroid/support/v7/widget/z;->c:I

    .line 9
    iget v3, p0, Landroid/support/v7/widget/z;->d:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 10
    iget v3, p0, Landroid/support/v7/widget/z;->e:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/z;->f:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/z;->f:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 13
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/z$a;

    .line 14
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 15
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->b:I

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/z;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->o:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->l:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->e:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->d:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->n:I

    return v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->g:F

    return v0
.end method

.method protected j()Landroid/support/v7/widget/z$a;
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->d:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/z$a;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/z$a;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Landroid/support/v7/widget/z$a;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/z$a;-><init>(II)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public k(Landroid/util/AttributeSet;)Landroid/support/v7/widget/z$a;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v7/widget/z$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/z$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected l(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/z$a;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v7/widget/z$a;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/z$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method m(Landroid/view/View;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method n(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method o(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/z;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/z;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/z;->e(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/z;->d(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    iget p1, p0, Landroid/support/v7/widget/z;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/z;->s(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/z;->r(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/z;->w(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/z;->u(II)V

    :goto_0
    return-void
.end method

.method p(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected q(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget p1, p0, Landroid/support/v7/widget/z;->n:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 3
    iget p1, p0, Landroid/support/v7/widget/z;->n:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 4
    :cond_3
    iget v2, p0, Landroid/support/v7/widget/z;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method r(IIII)V
    .locals 24

    move-object/from16 v6, p0

    .line 1
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/x0;->b(Landroid/view/View;)Z

    move-result v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    sub-int v1, p4, p2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int v8, v1, v2

    sub-int/2addr v1, v7

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/z;->getVirtualChildCount()I

    move-result v10

    .line 6
    iget v1, v6, Landroid/support/v7/widget/z;->e:I

    const v2, 0x800007

    and-int/2addr v2, v1

    and-int/lit8 v11, v1, 0x70

    .line 7
    iget-boolean v12, v6, Landroid/support/v7/widget/z;->a:Z

    .line 8
    iget-object v13, v6, Landroid/support/v7/widget/z;->i:[I

    .line 9
    iget-object v14, v6, Landroid/support/v7/widget/z;->j:[I

    .line 10
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 11
    invoke-static {v2, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int v1, v1, p3

    sub-int v1, v1, p1

    iget v2, v6, Landroid/support/v7/widget/z;->f:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v2, p3, p1

    iget v3, v6, Landroid/support/v7/widget/z;->f:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v15

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v10, -0x1

    move/from16 v16, v0

    const/16 v17, -0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v2

    move/from16 v17, v5

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v10, :cond_d

    mul-int v0, v17, v3

    add-int v2, v16, v0

    .line 15
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 16
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/z;->v(I)I

    move-result v0

    add-int/2addr v1, v0

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v19, v10

    move/from16 v20, v11

    goto/16 :goto_6

    .line 17
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v15, 0x8

    if-eq v5, v15, :cond_c

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Landroid/support/v7/widget/z$a;

    move/from16 v18, v3

    if-eqz v12, :cond_4

    .line 21
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v19, v10

    const/4 v10, -0x1

    if-eq v3, v10, :cond_5

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v10

    goto :goto_3

    :cond_4
    move/from16 v19, v10

    :cond_5
    const/4 v10, -0x1

    .line 23
    :goto_3
    iget v3, v4, Landroid/support/v7/widget/z$a;->b:I

    if-gez v3, :cond_6

    move v3, v11

    :cond_6
    and-int/lit8 v3, v3, 0x70

    move/from16 v20, v11

    const/16 v11, 0x10

    if-eq v3, v11, :cond_a

    const/16 v11, 0x30

    if-eq v3, v11, :cond_8

    const/16 v11, 0x50

    if-eq v3, v11, :cond_7

    move v3, v7

    const/4 v11, -0x1

    goto :goto_4

    :cond_7
    sub-int v3, v8, v5

    .line 24
    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v21, v21, v10

    const/4 v10, 0x2

    .line 26
    aget v22, v14, v10

    sub-int v22, v22, v21

    sub-int v3, v3, v22

    goto :goto_4

    :cond_8
    const/4 v11, -0x1

    .line 27
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v7

    if-eq v10, v11, :cond_9

    const/16 v21, 0x1

    .line 28
    aget v22, v13, v21

    sub-int v22, v22, v10

    add-int v3, v3, v22

    goto :goto_5

    :cond_9
    :goto_4
    const/16 v21, 0x1

    goto :goto_5

    :cond_a
    const/4 v11, -0x1

    const/16 v21, 0x1

    sub-int v3, v9, v5

    const/4 v10, 0x2

    .line 29
    div-int/2addr v3, v10

    add-int/2addr v3, v7

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v10

    .line 30
    :goto_5
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/z;->q(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 31
    iget v10, v6, Landroid/support/v7/widget/z;->l:I

    add-int/2addr v1, v10

    .line 32
    :cond_b
    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v1

    .line 33
    invoke-virtual {v6, v0}, Landroid/support/v7/widget/z;->n(Landroid/view/View;)I

    move-result v1

    add-int v22, v10, v1

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move v11, v2

    move/from16 v2, v22

    move/from16 v22, v7

    const/16 v23, -0x1

    move-object v7, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/z;->x(Landroid/view/View;IIII)V

    .line 34
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    move-object/from16 v0, p1

    .line 35
    invoke-virtual {v6, v0}, Landroid/support/v7/widget/z;->o(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/2addr v10, v15

    .line 36
    invoke-virtual {v6, v0, v11}, Landroid/support/v7/widget/z;->m(Landroid/view/View;I)I

    move-result v0

    add-int v3, v18, v0

    move v1, v10

    goto :goto_7

    :cond_c
    move/from16 v18, v3

    move/from16 v22, v7

    move/from16 v19, v10

    move/from16 v20, v11

    const/16 v21, 0x1

    :goto_6
    const/16 v23, -0x1

    :goto_7
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v5, v21

    move/from16 v7, v22

    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_d
    return-void
.end method

.method s(IIII)V
    .locals 17

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    sub-int v0, p3, p1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int v8, v0, v1

    sub-int/2addr v0, v7

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int v9, v0, v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/z;->getVirtualChildCount()I

    move-result v10

    .line 5
    iget v0, v6, Landroid/support/v7/widget/z;->e:I

    and-int/lit8 v1, v0, 0x70

    const v2, 0x800007

    and-int v11, v0, v2

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroid/support/v7/widget/z;->f:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, v6, Landroid/support/v7/widget/z;->f:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v10, :cond_8

    .line 9
    invoke-virtual {v6, v12}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    if-nez v13, :cond_2

    .line 10
    invoke-virtual {v6, v12}, Landroid/support/v7/widget/z;->v(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_4

    .line 11
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    .line 12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 13
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 14
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/support/v7/widget/z$a;

    .line 15
    iget v1, v5, Landroid/support/v7/widget/z$a;->b:I

    if-gez v1, :cond_3

    move v1, v11

    .line 16
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 17
    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v14, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 18
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    goto :goto_3

    :cond_4
    sub-int v1, v8, v4

    .line 19
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    sub-int v1, v9, v4

    .line 20
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v1, v2

    :goto_3
    move v2, v1

    .line 21
    invoke-virtual {v6, v12}, Landroid/support/v7/widget/z;->q(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 22
    iget v1, v6, Landroid/support/v7/widget/z;->m:I

    add-int/2addr v0, v1

    .line 23
    :cond_6
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v16, v0, v1

    .line 24
    invoke-virtual {v6, v13}, Landroid/support/v7/widget/z;->n(Landroid/view/View;)I

    move-result v0

    add-int v3, v16, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/z;->x(Landroid/view/View;IIII)V

    .line 25
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v13}, Landroid/support/v7/widget/z;->o(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    add-int v16, v16, v15

    .line 26
    invoke-virtual {v6, v13, v12}, Landroid/support/v7/widget/z;->m(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v12, v0

    move/from16 v0, v16

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v14

    :goto_5
    add-int/2addr v12, v1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/z;->a:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroid/support/v7/widget/z;->b:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base aligned child index out of range (0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/z;->k:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/z;->k:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/z;->l:I

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/z;->m:I

    goto :goto_0

    .line 5
    :cond_1
    iput v0, p0, Landroid/support/v7/widget/z;->l:I

    .line 6
    iput v0, p0, Landroid/support/v7/widget/z;->m:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 7
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v7/widget/z;->o:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->e:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 2
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/z;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1
    iget v1, p0, Landroid/support/v7/widget/z;->e:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Landroid/support/v7/widget/z;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/z;->h:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->d:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/support/v7/widget/z;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->n:I

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/z;->n:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    and-int/lit8 p1, p1, 0x70

    .line 1
    iget v0, p0, Landroid/support/v7/widget/z;->e:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Landroid/support/v7/widget/z;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/z;->g:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method t(Landroid/view/View;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method u(II)V
    .locals 38

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 1
    iput v10, v7, Landroid/support/v7/widget/z;->f:I

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/z;->getVirtualChildCount()I

    move-result v11

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 5
    iget-object v0, v7, Landroid/support/v7/widget/z;->i:[I

    const/4 v14, 0x4

    if-eqz v0, :cond_0

    iget-object v0, v7, Landroid/support/v7/widget/z;->j:[I

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v14, [I

    .line 6
    iput-object v0, v7, Landroid/support/v7/widget/z;->i:[I

    new-array v0, v14, [I

    .line 7
    iput-object v0, v7, Landroid/support/v7/widget/z;->j:[I

    .line 8
    :cond_1
    iget-object v15, v7, Landroid/support/v7/widget/z;->i:[I

    .line 9
    iget-object v6, v7, Landroid/support/v7/widget/z;->j:[I

    const/16 v16, 0x3

    const/4 v5, -0x1

    .line 10
    aput v5, v15, v16

    const/16 v17, 0x2

    aput v5, v15, v17

    const/16 v18, 0x1

    aput v5, v15, v18

    aput v5, v15, v10

    .line 11
    aput v5, v6, v16

    aput v5, v6, v17

    aput v5, v6, v18

    aput v5, v6, v10

    .line 12
    iget-boolean v4, v7, Landroid/support/v7/widget/z;->a:Z

    .line 13
    iget-boolean v3, v7, Landroid/support/v7/widget/z;->h:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v12, v2, :cond_2

    move/from16 v19, v18

    goto :goto_0

    :cond_2
    move/from16 v19, v10

    :goto_0
    const/16 v20, 0x0

    move v1, v10

    move v14, v1

    move/from16 v21, v14

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v27, v25

    move/from16 v26, v18

    move/from16 v0, v20

    :goto_1
    move-object/from16 v28, v6

    const/16 v5, 0x8

    if-ge v1, v11, :cond_15

    .line 14
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3

    .line 15
    iget v5, v7, Landroid/support/v7/widget/z;->f:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/z;->v(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v7, Landroid/support/v7/widget/z;->f:I

    :goto_2
    move/from16 v32, v3

    move/from16 v36, v4

    move/from16 v37, v2

    move v2, v1

    move/from16 v1, v37

    goto/16 :goto_e

    .line 16
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v5, :cond_4

    .line 17
    invoke-virtual {v7, v6, v1}, Landroid/support/v7/widget/z;->m(Landroid/view/View;I)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/z;->q(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 19
    iget v5, v7, Landroid/support/v7/widget/z;->f:I

    iget v10, v7, Landroid/support/v7/widget/z;->l:I

    add-int/2addr v5, v10

    iput v5, v7, Landroid/support/v7/widget/z;->f:I

    .line 20
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/support/v7/widget/z$a;

    .line 21
    iget v5, v10, Landroid/support/v7/widget/z$a;->a:F

    add-float v31, v0, v5

    if-ne v12, v2, :cond_8

    .line 22
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v0, :cond_8

    cmpl-float v0, v5, v20

    if-lez v0, :cond_8

    if-eqz v19, :cond_6

    .line 23
    iget v0, v7, Landroid/support/v7/widget/z;->f:I

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v2

    add-int/2addr v0, v5

    iput v0, v7, Landroid/support/v7/widget/z;->f:I

    goto :goto_3

    .line 24
    :cond_6
    iget v0, v7, Landroid/support/v7/widget/z;->f:I

    .line 25
    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/z;->f:I

    :goto_3
    if-eqz v4, :cond_7

    const/4 v0, 0x0

    .line 26
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 27
    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    move/from16 v34, v1

    move/from16 v32, v3

    move/from16 v36, v4

    move-object v3, v6

    const/16 v30, -0x2

    goto/16 :goto_7

    :cond_7
    move/from16 v34, v1

    move/from16 v32, v3

    move/from16 v36, v4

    move-object v3, v6

    move/from16 v24, v18

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v30, -0x2

    goto/16 :goto_8

    .line 28
    :cond_8
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v0, :cond_9

    cmpl-float v0, v5, v20

    if-lez v0, :cond_9

    const/4 v5, -0x2

    .line 29
    iput v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    const/4 v5, -0x2

    const/high16 v2, -0x80000000

    :goto_4
    cmpl-float v0, v31, v20

    if-nez v0, :cond_a

    .line 30
    iget v0, v7, Landroid/support/v7/widget/z;->f:I

    move/from16 v29, v0

    goto :goto_5

    :cond_a
    const/16 v29, 0x0

    :goto_5
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v34, v1

    move-object v1, v6

    move/from16 v35, v2

    move/from16 v2, v34

    move/from16 v32, v3

    move/from16 v3, p1

    move/from16 v36, v4

    move/from16 v4, v29

    move/from16 v29, v5

    const/4 v9, -0x1

    move/from16 v5, p2

    move/from16 v30, v29

    const/high16 v9, -0x80000000

    move-object/from16 v29, v6

    move/from16 v6, v33

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/z;->t(Landroid/view/View;IIIII)V

    move/from16 v0, v35

    if-eq v0, v9, :cond_b

    .line 31
    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 32
    :cond_b
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v19, :cond_c

    .line 33
    iget v1, v7, Landroid/support/v7/widget/z;->f:I

    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v29

    .line 34
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/z;->o(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v7, Landroid/support/v7/widget/z;->f:I

    goto :goto_6

    :cond_c
    move-object/from16 v3, v29

    .line 35
    iget v1, v7, Landroid/support/v7/widget/z;->f:I

    add-int v2, v1, v0

    .line 36
    iget v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 37
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/z;->o(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/z;->f:I

    :goto_6
    if-eqz v32, :cond_d

    .line 39
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_d
    :goto_7
    const/high16 v1, 0x40000000    # 2.0f

    :goto_8
    if-eq v13, v1, :cond_e

    .line 40
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    move/from16 v0, v18

    move/from16 v27, v0

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    .line 41
    :goto_9
    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 42
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 43
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v25

    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v25

    if-eqz v36, :cond_10

    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_10

    .line 45
    iget v6, v10, Landroid/support/v7/widget/z$a;->b:I

    if-gez v6, :cond_f

    iget v6, v7, Landroid/support/v7/widget/z;->e:I

    :cond_f
    and-int/lit8 v6, v6, 0x70

    const/4 v9, 0x4

    shr-int/2addr v6, v9

    and-int/lit8 v6, v6, -0x2

    shr-int/lit8 v6, v6, 0x1

    .line 46
    aget v9, v15, v6

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v15, v6

    .line 47
    aget v9, v28, v6

    sub-int v5, v4, v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v28, v6

    :cond_10
    move/from16 v5, v21

    .line 48
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    if-eqz v26, :cond_11

    .line 49
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_11

    move/from16 v26, v18

    goto :goto_a

    :cond_11
    const/16 v26, 0x0

    .line 50
    :goto_a
    iget v5, v10, Landroid/support/v7/widget/z$a;->a:F

    cmpl-float v5, v5, v20

    if-lez v5, :cond_13

    if-eqz v0, :cond_12

    goto :goto_b

    :cond_12
    move v2, v4

    :goto_b
    move/from16 v10, v23

    .line 51
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    goto :goto_d

    :cond_13
    move/from16 v10, v23

    if-eqz v0, :cond_14

    goto :goto_c

    :cond_14
    move v2, v4

    :goto_c
    move/from16 v4, v22

    .line 52
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v23, v10

    :goto_d
    move/from16 v10, v34

    .line 53
    invoke-virtual {v7, v3, v10}, Landroid/support/v7/widget/z;->m(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v10

    move v2, v0

    move/from16 v0, v31

    :goto_e
    add-int/lit8 v2, v2, 0x1

    move/from16 v9, p2

    move-object/from16 v6, v28

    move/from16 v3, v32

    move/from16 v4, v36

    const/4 v5, -0x1

    const/4 v10, 0x0

    move/from16 v37, v2

    move v2, v1

    move/from16 v1, v37

    goto/16 :goto_1

    :cond_15
    move v1, v2

    move/from16 v32, v3

    move/from16 v36, v4

    move/from16 v2, v21

    move/from16 v4, v22

    move/from16 v10, v23

    move/from16 v6, v25

    const/high16 v9, -0x80000000

    const/16 v30, -0x2

    .line 54
    iget v3, v7, Landroid/support/v7/widget/z;->f:I

    if-lez v3, :cond_16

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/z;->q(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 55
    iget v3, v7, Landroid/support/v7/widget/z;->f:I

    iget v1, v7, Landroid/support/v7/widget/z;->l:I

    add-int/2addr v3, v1

    iput v3, v7, Landroid/support/v7/widget/z;->f:I

    .line 56
    :cond_16
    aget v1, v15, v18

    const/4 v3, -0x1

    if-ne v1, v3, :cond_18

    const/4 v1, 0x0

    aget v5, v15, v1

    if-ne v5, v3, :cond_18

    aget v1, v15, v17

    if-ne v1, v3, :cond_18

    aget v1, v15, v16

    if-eq v1, v3, :cond_17

    goto :goto_f

    :cond_17
    move v1, v2

    move/from16 v23, v6

    goto :goto_10

    .line 57
    :cond_18
    :goto_f
    aget v1, v15, v16

    const/4 v3, 0x0

    aget v5, v15, v3

    aget v9, v15, v18

    aget v3, v15, v17

    .line 58
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 59
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 60
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 61
    aget v3, v28, v16

    const/4 v5, 0x0

    aget v9, v28, v5

    aget v5, v28, v18

    move/from16 v23, v6

    aget v6, v28, v17

    .line 62
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 63
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 64
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 65
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_10
    if-eqz v32, :cond_1d

    const/high16 v2, -0x80000000

    if-eq v12, v2, :cond_19

    if-nez v12, :cond_1d

    :cond_19
    const/4 v2, 0x0

    .line 66
    iput v2, v7, Landroid/support/v7/widget/z;->f:I

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v11, :cond_1d

    .line 67
    invoke-virtual {v7, v2}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 68
    iget v3, v7, Landroid/support/v7/widget/z;->f:I

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/z;->v(I)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v7, Landroid/support/v7/widget/z;->f:I

    goto :goto_12

    .line 69
    :cond_1a
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1b

    .line 70
    invoke-virtual {v7, v3, v2}, Landroid/support/v7/widget/z;->m(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v2, v3

    :goto_12
    move/from16 v22, v1

    goto :goto_13

    .line 71
    :cond_1b
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/z$a;

    if-eqz v19, :cond_1c

    .line 72
    iget v6, v7, Landroid/support/v7/widget/z;->f:I

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v14

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v5

    .line 73
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/z;->o(Landroid/view/View;)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v6, v9

    iput v6, v7, Landroid/support/v7/widget/z;->f:I

    goto :goto_12

    .line 74
    :cond_1c
    iget v6, v7, Landroid/support/v7/widget/z;->f:I

    add-int v9, v6, v14

    move/from16 v22, v1

    .line 75
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v1

    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v1

    .line 76
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/z;->o(Landroid/view/View;)I

    move-result v1

    add-int/2addr v9, v1

    .line 77
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/z;->f:I

    :goto_13
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v22

    goto :goto_11

    :cond_1d
    move/from16 v22, v1

    .line 78
    iget v1, v7, Landroid/support/v7/widget/z;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v7, Landroid/support/v7/widget/z;->f:I

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    .line 80
    invoke-static {v1, v8, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v2, v1

    .line 81
    iget v3, v7, Landroid/support/v7/widget/z;->f:I

    sub-int/2addr v2, v3

    if-nez v24, :cond_22

    if-eqz v2, :cond_1e

    cmpl-float v5, v0, v20

    if-lez v5, :cond_1e

    goto :goto_16

    .line 82
    :cond_1e
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v32, :cond_21

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_21

    const/4 v10, 0x0

    :goto_14
    if-ge v10, v11, :cond_21

    .line 83
    invoke-virtual {v7, v10}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1f

    goto :goto_15

    .line 85
    :cond_1f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/z$a;

    .line 86
    iget v4, v4, Landroid/support/v7/widget/z$a;->a:F

    cmpl-float v4, v4, v20

    if-lez v4, :cond_20

    const/high16 v4, 0x40000000    # 2.0f

    .line 87
    invoke-static {v14, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 89
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    :cond_20
    :goto_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_21
    move/from16 v2, p2

    move/from16 v25, v11

    move/from16 v3, v22

    goto/16 :goto_24

    .line 90
    :cond_22
    :goto_16
    iget v5, v7, Landroid/support/v7/widget/z;->g:F

    cmpl-float v6, v5, v20

    if-lez v6, :cond_23

    move v0, v5

    :cond_23
    const/4 v5, -0x1

    .line 91
    aput v5, v15, v16

    aput v5, v15, v17

    aput v5, v15, v18

    const/4 v6, 0x0

    aput v5, v15, v6

    .line 92
    aput v5, v28, v16

    aput v5, v28, v17

    aput v5, v28, v18

    aput v5, v28, v6

    .line 93
    iput v6, v7, Landroid/support/v7/widget/z;->f:I

    move v6, v4

    move v4, v5

    move/from16 v9, v23

    const/4 v10, 0x0

    :goto_17
    if-ge v10, v11, :cond_32

    .line 94
    invoke-virtual {v7, v10}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_31

    .line 95
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v3, 0x8

    if-ne v5, v3, :cond_24

    goto/16 :goto_20

    .line 96
    :cond_24
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/z$a;

    .line 97
    iget v3, v5, Landroid/support/v7/widget/z$a;->a:F

    cmpl-float v23, v3, v20

    if-lez v23, :cond_29

    int-to-float v8, v2

    mul-float/2addr v8, v3

    div-float/2addr v8, v0

    float-to-int v8, v8

    sub-float/2addr v0, v3

    sub-int/2addr v2, v8

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v23

    add-int v3, v3, v23

    move/from16 v23, v0

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v0

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v0

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v24, v2

    move/from16 v25, v11

    const/4 v11, -0x1

    move/from16 v2, p2

    .line 99
    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 100
    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v3, :cond_27

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v12, v3, :cond_25

    goto :goto_19

    :cond_25
    if-lez v8, :cond_26

    goto :goto_18

    :cond_26
    const/4 v8, 0x0

    .line 101
    :goto_18
    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v14, v8, v0}, Landroid/view/View;->measure(II)V

    goto :goto_1a

    :cond_27
    const/high16 v3, 0x40000000    # 2.0f

    .line 102
    :goto_19
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    add-int v8, v29, v8

    if-gez v8, :cond_28

    const/4 v8, 0x0

    .line 103
    :cond_28
    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 104
    invoke-virtual {v14, v8, v0}, Landroid/view/View;->measure(II)V

    .line 105
    :goto_1a
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    const/high16 v3, -0x1000000

    and-int/2addr v0, v3

    .line 106
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    move/from16 v0, v23

    move/from16 v3, v24

    goto :goto_1b

    :cond_29
    move v3, v2

    move/from16 v25, v11

    const/4 v11, -0x1

    move/from16 v2, p2

    :goto_1b
    if-eqz v19, :cond_2a

    .line 107
    iget v8, v7, Landroid/support/v7/widget/z;->f:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v23, v23, v11

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v23, v23, v11

    .line 108
    invoke-virtual {v7, v14}, Landroid/support/v7/widget/z;->o(Landroid/view/View;)I

    move-result v11

    add-int v23, v23, v11

    add-int v8, v8, v23

    iput v8, v7, Landroid/support/v7/widget/z;->f:I

    move/from16 v23, v0

    goto :goto_1c

    .line 109
    :cond_2a
    iget v8, v7, Landroid/support/v7/widget/z;->f:I

    .line 110
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v8

    move/from16 v23, v0

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v0

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v0

    .line 111
    invoke-virtual {v7, v14}, Landroid/support/v7/widget/z;->o(Landroid/view/View;)I

    move-result v0

    add-int/2addr v11, v0

    .line 112
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/z;->f:I

    :goto_1c
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_2b

    .line 113
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v0, v8, :cond_2b

    move/from16 v0, v18

    goto :goto_1d

    :cond_2b
    const/4 v0, 0x0

    .line 114
    :goto_1d
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v11

    .line 115
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v8

    .line 116
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v0, :cond_2c

    goto :goto_1e

    :cond_2c
    move v8, v11

    .line 117
    :goto_1e
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v26, :cond_2d

    .line 118
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_2e

    move/from16 v6, v18

    goto :goto_1f

    :cond_2d
    const/4 v8, -0x1

    :cond_2e
    const/4 v6, 0x0

    :goto_1f
    if-eqz v36, :cond_30

    .line 119
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v14

    if-eq v14, v8, :cond_30

    .line 120
    iget v5, v5, Landroid/support/v7/widget/z$a;->b:I

    if-gez v5, :cond_2f

    iget v5, v7, Landroid/support/v7/widget/z;->e:I

    :cond_2f
    and-int/lit8 v5, v5, 0x70

    const/4 v8, 0x4

    shr-int/2addr v5, v8

    and-int/lit8 v5, v5, -0x2

    shr-int/lit8 v5, v5, 0x1

    .line 121
    aget v8, v15, v5

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v15, v5

    .line 122
    aget v8, v28, v5

    sub-int/2addr v11, v14

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v28, v5

    :cond_30
    move/from16 v26, v6

    move v6, v0

    move/from16 v0, v23

    goto :goto_21

    :cond_31
    :goto_20
    move v3, v2

    move/from16 v25, v11

    move/from16 v2, p2

    :goto_21
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, p1

    move v2, v3

    move/from16 v11, v25

    const/4 v5, -0x1

    goto/16 :goto_17

    :cond_32
    move/from16 v2, p2

    move/from16 v25, v11

    .line 123
    iget v0, v7, Landroid/support/v7/widget/z;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    iput v0, v7, Landroid/support/v7/widget/z;->f:I

    .line 124
    aget v0, v15, v18

    const/4 v3, -0x1

    if-ne v0, v3, :cond_34

    const/4 v0, 0x0

    aget v5, v15, v0

    if-ne v5, v3, :cond_34

    aget v0, v15, v17

    if-ne v0, v3, :cond_34

    aget v0, v15, v16

    if-eq v0, v3, :cond_33

    goto :goto_22

    :cond_33
    move v0, v4

    goto :goto_23

    .line 125
    :cond_34
    :goto_22
    aget v0, v15, v16

    const/4 v3, 0x0

    aget v5, v15, v3

    aget v8, v15, v18

    aget v10, v15, v17

    .line 126
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 127
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 128
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 129
    aget v5, v28, v16

    aget v3, v28, v3

    aget v8, v28, v18

    aget v10, v28, v17

    .line 130
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 131
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 132
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 133
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_23
    move v3, v0

    move v0, v6

    move/from16 v23, v9

    :goto_24
    if-nez v26, :cond_35

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v13, v4, :cond_35

    goto :goto_25

    :cond_35
    move v0, v3

    .line 134
    :goto_25
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v3, -0x1000000

    and-int v3, v23, v3

    or-int/2addr v1, v3

    shl-int/lit8 v3, v23, 0x10

    .line 136
    invoke-static {v0, v2, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 137
    invoke-virtual {v7, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eqz v27, :cond_36

    move/from16 v0, p1

    move/from16 v1, v25

    .line 138
    invoke-direct {v7, v1, v0}, Landroid/support/v7/widget/z;->h(II)V

    :cond_36
    return-void
.end method

.method v(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method w(II)V
    .locals 33

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 1
    iput v10, v7, Landroid/support/v7/widget/z;->f:I

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/z;->getVirtualChildCount()I

    move-result v11

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 5
    iget v14, v7, Landroid/support/v7/widget/z;->b:I

    .line 6
    iget-boolean v15, v7, Landroid/support/v7/widget/z;->h:Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    move v1, v10

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move/from16 v18, v6

    move/from16 v20, v18

    move/from16 v0, v16

    move/from16 v19, v17

    :goto_0
    const/16 v10, 0x8

    move/from16 v22, v4

    if-ge v6, v11, :cond_10

    .line 7
    invoke-virtual {v7, v6}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 8
    iget v4, v7, Landroid/support/v7/widget/z;->f:I

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/z;->v(I)I

    move-result v10

    add-int/2addr v4, v10

    iput v4, v7, Landroid/support/v7/widget/z;->f:I

    move/from16 v26, v11

    move/from16 v24, v13

    move/from16 v4, v22

    goto/16 :goto_a

    :cond_0
    move/from16 v24, v1

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 10
    invoke-virtual {v7, v4, v6}, Landroid/support/v7/widget/z;->m(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v6, v1

    move/from16 v26, v11

    move/from16 v4, v22

    move/from16 v1, v24

    move/from16 v24, v13

    goto/16 :goto_a

    .line 11
    :cond_1
    invoke-virtual {v7, v6}, Landroid/support/v7/widget/z;->q(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget v1, v7, Landroid/support/v7/widget/z;->f:I

    iget v10, v7, Landroid/support/v7/widget/z;->m:I

    add-int/2addr v1, v10

    iput v1, v7, Landroid/support/v7/widget/z;->f:I

    .line 13
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/support/v7/widget/z$a;

    .line 14
    iget v1, v10, Landroid/support/v7/widget/z$a;->a:F

    add-float v25, v0, v1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v13, v0, :cond_3

    .line 15
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v0, :cond_3

    cmpl-float v0, v1, v16

    if-lez v0, :cond_3

    .line 16
    iget v0, v7, Landroid/support/v7/widget/z;->f:I

    .line 17
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v26, v2

    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/z;->f:I

    move v0, v3

    move-object v3, v4

    move/from16 v31, v5

    move/from16 v18, v17

    move/from16 v8, v24

    move/from16 v29, v26

    move/from16 v26, v11

    move/from16 v24, v13

    move/from16 v13, v22

    move v11, v6

    goto/16 :goto_3

    :cond_3
    move/from16 v26, v2

    .line 18
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v0, :cond_4

    cmpl-float v0, v1, v16

    if-lez v0, :cond_4

    const/4 v0, -0x2

    .line 19
    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/high16 v2, -0x80000000

    :goto_1
    const/16 v27, 0x0

    cmpl-float v0, v25, v16

    if-nez v0, :cond_5

    .line 20
    iget v0, v7, Landroid/support/v7/widget/z;->f:I

    move/from16 v23, v0

    goto :goto_2

    :cond_5
    const/16 v23, 0x0

    :goto_2
    const/high16 v28, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move/from16 v8, v24

    move-object v1, v4

    move/from16 v30, v2

    move/from16 v29, v26

    move v2, v6

    move v9, v3

    move/from16 v3, p1

    move/from16 v26, v11

    move/from16 v24, v13

    move/from16 v13, v22

    move/from16 v11, v28

    move-object/from16 v22, v4

    move/from16 v4, v27

    move/from16 v31, v5

    move/from16 v5, p2

    move v11, v6

    move/from16 v6, v23

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/z;->t(Landroid/view/View;IIIII)V

    move/from16 v0, v30

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_6

    .line 21
    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 22
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 23
    iget v1, v7, Landroid/support/v7/widget/z;->f:I

    add-int v2, v1, v0

    .line 24
    iget v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v22

    .line 25
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/z;->o(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/z;->f:I

    if-eqz v15, :cond_7

    .line 27
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3

    :cond_7
    move v0, v9

    :goto_3
    if-ltz v14, :cond_8

    add-int/lit8 v6, v11, 0x1

    if-ne v14, v6, :cond_8

    .line 28
    iget v1, v7, Landroid/support/v7/widget/z;->f:I

    iput v1, v7, Landroid/support/v7/widget/z;->c:I

    :cond_8
    if-ge v11, v14, :cond_a

    .line 29
    iget v1, v10, Landroid/support/v7/widget/z$a;->a:F

    cmpl-float v1, v1, v16

    if-gtz v1, :cond_9

    goto :goto_4

    .line 30
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v12, v1, :cond_b

    .line 31
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    move/from16 v1, v17

    move/from16 v20, v1

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    .line 32
    :goto_5
    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    move/from16 v5, v29

    .line 34
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    .line 36
    invoke-static {v8, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    if-eqz v19, :cond_c

    .line 37
    iget v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_c

    move/from16 v19, v17

    goto :goto_6

    :cond_c
    const/16 v19, 0x0

    .line 38
    :goto_6
    iget v8, v10, Landroid/support/v7/widget/z$a;->a:F

    cmpl-float v8, v8, v16

    if-lez v8, :cond_e

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    move v2, v4

    .line 39
    :goto_7
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v1, v31

    goto :goto_9

    :cond_e
    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    move v2, v4

    :goto_8
    move/from16 v1, v31

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v4, v13

    .line 41
    :goto_9
    invoke-virtual {v7, v3, v11}, Landroid/support/v7/widget/z;->m(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v2, v11

    move v3, v0

    move/from16 v0, v25

    move/from16 v32, v5

    move v5, v1

    move v1, v6

    move v6, v2

    move/from16 v2, v32

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v13, v24

    move/from16 v11, v26

    goto/16 :goto_0

    :cond_10
    move v8, v1

    move v9, v3

    move v1, v5

    move/from16 v26, v11

    move/from16 v24, v13

    move/from16 v13, v22

    move v5, v2

    .line 42
    iget v2, v7, Landroid/support/v7/widget/z;->f:I

    if-lez v2, :cond_11

    move/from16 v2, v26

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/z;->q(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 43
    iget v3, v7, Landroid/support/v7/widget/z;->f:I

    iget v4, v7, Landroid/support/v7/widget/z;->m:I

    add-int/2addr v3, v4

    iput v3, v7, Landroid/support/v7/widget/z;->f:I

    goto :goto_b

    :cond_11
    move/from16 v2, v26

    :cond_12
    :goto_b
    move/from16 v3, v24

    if-eqz v15, :cond_16

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_13

    if-nez v3, :cond_16

    :cond_13
    const/4 v4, 0x0

    .line 44
    iput v4, v7, Landroid/support/v7/widget/z;->f:I

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v2, :cond_16

    .line 45
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_14

    .line 46
    iget v6, v7, Landroid/support/v7/widget/z;->f:I

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/z;->v(I)I

    move-result v11

    add-int/2addr v6, v11

    iput v6, v7, Landroid/support/v7/widget/z;->f:I

    goto :goto_d

    .line 47
    :cond_14
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v10, :cond_15

    .line 48
    invoke-virtual {v7, v6, v4}, Landroid/support/v7/widget/z;->m(Landroid/view/View;I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_d

    .line 49
    :cond_15
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/z$a;

    .line 50
    iget v14, v7, Landroid/support/v7/widget/z;->f:I

    add-int v21, v14, v9

    .line 51
    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v21, v21, v10

    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v21, v21, v10

    .line 52
    invoke-virtual {v7, v6}, Landroid/support/v7/widget/z;->o(Landroid/view/View;)I

    move-result v6

    add-int v6, v21, v6

    .line 53
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroid/support/v7/widget/z;->f:I

    :goto_d
    add-int/lit8 v4, v4, 0x1

    const/16 v10, 0x8

    goto :goto_c

    .line 54
    :cond_16
    iget v4, v7, Landroid/support/v7/widget/z;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    add-int/2addr v6, v10

    add-int/2addr v4, v6

    iput v4, v7, Landroid/support/v7/widget/z;->f:I

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v6, p2

    move v10, v9

    const/4 v9, 0x0

    .line 56
    invoke-static {v4, v6, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    const v9, 0xffffff

    and-int/2addr v9, v4

    .line 57
    iget v11, v7, Landroid/support/v7/widget/z;->f:I

    sub-int/2addr v9, v11

    if-nez v18, :cond_1b

    if-eqz v9, :cond_17

    cmpl-float v11, v0, v16

    if-lez v11, :cond_17

    goto :goto_10

    .line 58
    :cond_17
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_1a

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v3, v1, :cond_1a

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_1a

    .line 59
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 60
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_18

    goto :goto_f

    .line 61
    :cond_18
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/z$a;

    .line 62
    iget v9, v9, Landroid/support/v7/widget/z$a;->a:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_19

    .line 63
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 64
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 65
    invoke-virtual {v3, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_19
    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1a
    move/from16 v11, p1

    move v1, v8

    goto/16 :goto_1a

    .line 66
    :cond_1b
    :goto_10
    iget v10, v7, Landroid/support/v7/widget/z;->g:F

    cmpl-float v11, v10, v16

    if-lez v11, :cond_1c

    move v0, v10

    :cond_1c
    const/4 v10, 0x0

    .line 67
    iput v10, v7, Landroid/support/v7/widget/z;->f:I

    move v11, v9

    move v9, v1

    move v1, v8

    move v8, v10

    :goto_11
    if-ge v8, v2, :cond_27

    .line 68
    invoke-virtual {v7, v8}, Landroid/support/v7/widget/z;->p(I)Landroid/view/View;

    move-result-object v13

    .line 69
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1d

    move/from16 v21, v11

    move/from16 v11, p1

    goto/16 :goto_19

    .line 70
    :cond_1d
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/z$a;

    .line 71
    iget v10, v14, Landroid/support/v7/widget/z$a;->a:F

    cmpl-float v18, v10, v16

    if-lez v18, :cond_22

    int-to-float v15, v11

    mul-float/2addr v15, v10

    div-float/2addr v15, v0

    float-to-int v15, v15

    sub-float/2addr v0, v10

    sub-int/2addr v11, v15

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v18

    add-int v10, v10, v18

    move/from16 v18, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v21, v11

    move/from16 v11, p1

    .line 73
    invoke-static {v11, v10, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 74
    iget v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v10, :cond_20

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v3, v10, :cond_1e

    goto :goto_13

    :cond_1e
    if-lez v15, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v15, 0x0

    .line 75
    :goto_12
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 76
    invoke-virtual {v13, v0, v15}, Landroid/view/View;->measure(II)V

    goto :goto_14

    :cond_20
    const/high16 v10, 0x40000000    # 2.0f

    .line 77
    :goto_13
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v15, v23, v15

    if-gez v15, :cond_21

    const/4 v15, 0x0

    .line 78
    :cond_21
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 79
    invoke-virtual {v13, v0, v15}, Landroid/view/View;->measure(II)V

    .line 80
    :goto_14
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    .line 81
    invoke-static {v1, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move/from16 v0, v18

    goto :goto_15

    :cond_22
    move v10, v11

    move/from16 v11, p1

    move/from16 v21, v10

    .line 82
    :goto_15
    iget v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v15

    .line 83
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v10

    .line 84
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v18, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_23

    .line 85
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v23, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    move/from16 v0, v17

    goto :goto_16

    :cond_23
    move/from16 v23, v1

    const/4 v1, -0x1

    :cond_24
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_25

    goto :goto_17

    :cond_25
    move v10, v15

    .line 86
    :goto_17
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v19, :cond_26

    .line 87
    iget v9, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v9, v1, :cond_26

    move/from16 v9, v17

    goto :goto_18

    :cond_26
    const/4 v9, 0x0

    .line 88
    :goto_18
    iget v10, v7, Landroid/support/v7/widget/z;->f:I

    .line 89
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v10

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v1

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v1

    .line 90
    invoke-virtual {v7, v13}, Landroid/support/v7/widget/z;->o(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    .line 91
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/z;->f:I

    move/from16 v19, v9

    move/from16 v1, v23

    move v9, v0

    move/from16 v0, v18

    :goto_19
    add-int/lit8 v8, v8, 0x1

    move/from16 v11, v21

    const/4 v10, 0x0

    goto/16 :goto_11

    :cond_27
    move/from16 v11, p1

    .line 92
    iget v0, v7, Landroid/support/v7/widget/z;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    add-int/2addr v3, v8

    add-int/2addr v0, v3

    iput v0, v7, Landroid/support/v7/widget/z;->f:I

    move v0, v9

    :goto_1a
    if-nez v19, :cond_28

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v12, v3, :cond_28

    goto :goto_1b

    :cond_28
    move v0, v5

    .line 93
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 95
    invoke-static {v0, v11, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v0, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eqz v20, :cond_29

    .line 96
    invoke-direct {v7, v2, v6}, Landroid/support/v7/widget/z;->i(II)V

    :cond_29
    return-void
.end method
