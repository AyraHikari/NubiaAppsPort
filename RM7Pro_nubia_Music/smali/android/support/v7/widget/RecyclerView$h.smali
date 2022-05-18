.class public abstract Landroid/support/v7/widget/RecyclerView$h;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$h$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/k$b;

.field private final b:Landroid/support/v7/widget/k$b;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field p:Landroid/support/v7/widget/b;

.field q:Landroid/support/v7/widget/RecyclerView;

.field r:Landroid/support/v7/widget/k;

.field s:Landroid/support/v7/widget/k;

.field t:Landroid/support/v7/widget/RecyclerView$q;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7079
    new-instance v0, Landroid/support/v7/widget/RecyclerView$h$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$h$1;-><init>(Landroid/support/v7/widget/RecyclerView$h;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->a:Landroid/support/v7/widget/k$b;

    .line 7125
    new-instance v0, Landroid/support/v7/widget/RecyclerView$h$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$h$2;-><init>(Landroid/support/v7/widget/RecyclerView$h;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->b:Landroid/support/v7/widget/k$b;

    .line 7175
    new-instance v0, Landroid/support/v7/widget/k;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->a:Landroid/support/v7/widget/k$b;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/k;-><init>(Landroid/support/v7/widget/k$b;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/k;

    .line 7176
    new-instance v0, Landroid/support/v7/widget/k;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->b:Landroid/support/v7/widget/k$b;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/k;-><init>(Landroid/support/v7/widget/k$b;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->s:Landroid/support/v7/widget/k;

    .line 7181
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$h;->u:Z

    .line 7183
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$h;->v:Z

    .line 7185
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$h;->w:Z

    .line 7191
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$h;->c:Z

    .line 7193
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$h;->d:Z

    .line 10124
    return-void
.end method

.method public static a(III)I
    .locals 2

    .prologue
    .line 7380
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 7381
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 7382
    sparse-switch v1, :sswitch_data_0

    .line 7389
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 7386
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 7382
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(IIIIZ)I
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/high16 v3, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 8911
    sub-int v1, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 8914
    if-eqz p4, :cond_3

    .line 8915
    if-ltz p3, :cond_1

    move v0, v2

    move v1, p3

    .line 8952
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 8918
    :cond_1
    if-ne p3, v5, :cond_2

    .line 8919
    sparse-switch p1, :sswitch_data_0

    move p1, v0

    :goto_1
    move v1, v0

    move v0, p1

    .line 8928
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 8924
    goto :goto_1

    :sswitch_1
    move p1, v0

    .line 8927
    goto :goto_1

    .line 8930
    :cond_2
    if-ne p3, v4, :cond_7

    move v1, v0

    .line 8932
    goto :goto_0

    .line 8935
    :cond_3
    if-ltz p3, :cond_4

    move v0, v2

    move v1, p3

    .line 8937
    goto :goto_0

    .line 8938
    :cond_4
    if-ne p3, v5, :cond_5

    move v0, p1

    .line 8940
    goto :goto_0

    .line 8941
    :cond_5
    if-ne p3, v4, :cond_7

    .line 8943
    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_0

    :cond_6
    move v0, v3

    .line 8944
    goto :goto_0

    :cond_7
    move v1, v0

    goto :goto_0

    .line 8919
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 8276
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/b;->e(I)V

    .line 8277
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$h;Landroid/support/v7/widget/RecyclerView$q;)V
    .locals 0

    .prologue
    .line 7071
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$q;)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 8665
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 8666
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8681
    :goto_0
    return-void

    .line 8672
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    .line 8673
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8674
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$h;->f(I)V

    .line 8675
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/support/v7/widget/RecyclerView$u;)V

    goto :goto_0

    .line 8677
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$h;->g(I)V

    .line 8678
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$n;->c(Landroid/view/View;)V

    .line 8679
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/l;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/l;->h(Landroid/support/v7/widget/RecyclerView$u;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$q;)V
    .locals 1

    .prologue
    .line 9758
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->t:Landroid/support/v7/widget/RecyclerView$q;

    if-ne v0, p1, :cond_0

    .line 9759
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->t:Landroid/support/v7/widget/RecyclerView$q;

    .line 9761
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 8049
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v1

    .line 8050
    if-nez p3, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8052
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/l;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/l;->e(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 8061
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 8062
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->wasReturnedFromScrap()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8063
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8064
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->unScrap()V

    .line 8068
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/support/v7/widget/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8093
    :cond_2
    :goto_2
    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    if-eqz v2, :cond_3

    .line 8097
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 8098
    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    .line 8100
    :cond_3
    return-void

    .line 8059
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/l;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/l;->f(Landroid/support/v7/widget/RecyclerView$u;)V

    goto :goto_0

    .line 8066
    :cond_5
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 8072
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-ne v2, v3, :cond_9

    .line 8074
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/b;->b(Landroid/view/View;)I

    move-result v2

    .line 8075
    if-ne p2, v5, :cond_7

    .line 8076
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    invoke-virtual {v3}, Landroid/support/v7/widget/b;->b()I

    move-result p2

    .line 8078
    :cond_7
    if-ne v2, v5, :cond_8

    .line 8079
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    .line 8081
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8083
    :cond_8
    if-eq v2, p2, :cond_2

    .line 8084
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v3, v2, p2}, Landroid/support/v7/widget/RecyclerView$h;->e(II)V

    goto :goto_2

    .line 8087
    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    invoke-virtual {v2, p1, p2, v4}, Landroid/support/v7/widget/b;->a(Landroid/view/View;IZ)V

    .line 8088
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    .line 8089
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->t:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->t:Landroid/support/v7/widget/RecyclerView$q;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$q;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8090
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->t:Landroid/support/v7/widget/RecyclerView$q;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView$q;->b(Landroid/view/View;)V

    goto :goto_2
.end method

.method private static b(III)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8805
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 8806
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 8807
    if-lez p2, :cond_1

    if-eq p0, p2, :cond_1

    move v0, v1

    .line 8818
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 8810
    :cond_1
    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 8818
    goto :goto_0

    .line 8814
    :sswitch_1
    if-ge v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 8816
    :sswitch_2
    if-eq v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 8810
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I
    .locals 14

    .prologue
    .line 9301
    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 9302
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->A()I

    move-result v5

    .line 9303
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->B()I

    move-result v6

    .line 9304
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->y()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v2

    sub-int v7, v1, v2

    .line 9305
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->z()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->D()I

    move-result v2

    sub-int v8, v1, v2

    .line 9306
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int v9, v1, v2

    .line 9307
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int v10, v1, v2

    .line 9308
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int v11, v9, v1

    .line 9309
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int v12, v10, v1

    .line 9311
    const/4 v1, 0x0

    sub-int v2, v9, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9312
    const/4 v1, 0x0

    sub-int v3, v10, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9313
    const/4 v1, 0x0

    sub-int v13, v11, v7

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9314
    const/4 v13, 0x0

    sub-int v8, v12, v8

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 9320
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->t()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 9321
    if-eqz v1, :cond_0

    :goto_0
    move v2, v1

    .line 9330
    :goto_1
    if-eqz v3, :cond_3

    move v1, v3

    .line 9332
    :goto_2
    const/4 v3, 0x0

    aput v2, v4, v3

    .line 9333
    const/4 v2, 0x1

    aput v1, v4, v2

    .line 9334
    return-object v4

    .line 9321
    :cond_0
    sub-int v1, v11, v7

    .line 9322
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 9324
    :cond_1
    if-eqz v2, :cond_2

    move v1, v2

    :goto_3
    move v2, v1

    .line 9325
    goto :goto_1

    .line 9324
    :cond_2
    sub-int v2, v9, v5

    .line 9325
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    .line 9330
    :cond_3
    sub-int v1, v10, v6

    .line 9331
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2
.end method

.method private d(Landroid/support/v7/widget/RecyclerView;II)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 9433
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 9434
    if-nez v1, :cond_1

    .line 9448
    :cond_0
    :goto_0
    return v0

    .line 9437
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->A()I

    move-result v2

    .line 9438
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->B()I

    move-result v3

    .line 9439
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->y()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v5

    sub-int/2addr v4, v5

    .line 9440
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->z()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->D()I

    move-result v6

    sub-int/2addr v5, v6

    .line 9441
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    .line 9442
    invoke-virtual {p0, v1, v6}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9444
    iget v1, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p2

    if-ge v1, v4, :cond_0

    iget v1, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p2

    if-le v1, v2, :cond_0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p3

    if-ge v1, v5, :cond_0

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p3

    if-le v1, v3, :cond_0

    .line 9448
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 8480
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 8489
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 8498
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 8507
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8554
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 8561
    :cond_0
    :goto_0
    return-object v0

    .line 8557
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 8558
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/b;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 8561
    goto :goto_0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 9723
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public G()I
    .locals 1

    .prologue
    .line 9730
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method H()V
    .locals 1

    .prologue
    .line 9752
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->t:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz v0, :cond_0

    .line 9753
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->t:Landroid/support/v7/widget/RecyclerView$q;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$q;->a()V

    .line 9755
    :cond_0
    return-void
.end method

.method public I()V
    .locals 1

    .prologue
    .line 9917
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->u:Z

    .line 9918
    return-void
.end method

.method J()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 10110
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->v()I

    move-result v2

    move v1, v0

    .line 10111
    :goto_0
    if-ge v1, v2, :cond_0

    .line 10112
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$h;->h(I)Landroid/view/View;

    move-result-object v3

    .line 10113
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 10114
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_1

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_1

    .line 10115
    const/4 v0, 0x1

    .line 10118
    :cond_0
    return v0

    .line 10111
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 7878
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9952
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    if-nez v1, :cond_1

    .line 9955
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public abstract a()Landroid/support/v7/widget/RecyclerView$LayoutParams;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 7861
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 7837
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 7838
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 7842
    :goto_0
    return-object v0

    .line 7839
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 7840
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 7842
    :cond_1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 1

    .prologue
    .line 9264
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$h$a;)V
    .locals 0

    .prologue
    .line 7572
    return-void
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$h$a;)V
    .locals 0

    .prologue
    .line 7600
    return-void
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$n;)V
    .locals 1

    .prologue
    .line 8396
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->h(I)Landroid/view/View;

    move-result-object v0

    .line 8397
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->f(I)V

    .line 8398
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/View;)V

    .line 8399
    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 3

    .prologue
    .line 7340
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->A()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v1

    add-int/2addr v0, v1

    .line 7341
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->B()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->D()I

    move-result v2

    add-int/2addr v1, v2

    .line 7342
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->F()I

    move-result v2

    invoke-static {p2, v0, v2}, Landroid/support/v7/widget/RecyclerView$h;->a(III)I

    move-result v0

    .line 7343
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->G()I

    move-result v2

    invoke-static {p3, v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->a(III)I

    move-result v1

    .line 7344
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->f(II)V

    .line 7345
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 9749
    return-void
.end method

.method a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .prologue
    .line 9794
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 9795
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 0

    .prologue
    .line 9495
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 2

    .prologue
    .line 8657
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->v()I

    move-result v0

    .line 8658
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 8659
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$h;->h(I)Landroid/view/View;

    move-result-object v1

    .line 8660
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;ILandroid/view/View;)V

    .line 8658
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8662
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;II)V
    .locals 1

    .prologue
    .line 9705
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    .line 9706
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 9824
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9825
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 9826
    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 9828
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9829
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 9830
    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 9834
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    .line 9835
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v1

    .line 9836
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->e(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v2

    .line 9837
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v3

    .line 9834
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 9838
    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 9839
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 9898
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/view/View;)I

    move-result v0

    .line 9899
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    .line 9901
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 9903
    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 9904
    return-void

    :cond_0
    move v0, v4

    .line 9898
    goto :goto_0

    :cond_1
    move v2, v4

    .line 9899
    goto :goto_1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 9859
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    if-nez p3, :cond_1

    .line 9870
    :cond_0
    :goto_0
    return-void

    .line 9862
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    .line 9863
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    .line 9864
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    .line 9865
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9862
    :cond_2
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 9867
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    .line 9868
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_0

    .line 9865
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 0

    .prologue
    .line 7790
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 9533
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 9545
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .prologue
    .line 9597
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 9580
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9581
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 0

    .prologue
    .line 7711
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->e(Landroid/support/v7/widget/RecyclerView;)V

    .line 7712
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 8004
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;I)V

    .line 8005
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 8022
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    .line 8023
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 7

    .prologue
    .line 8834
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 8836
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8837
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    .line 8838
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    .line 8840
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->y()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->w()I

    move-result v4

    .line 8841
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->A()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 8843
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v6

    .line 8840
    invoke-static {v3, v4, v2, v5, v6}, Landroid/support/v7/widget/RecyclerView$h;->a(IIIIZ)I

    move-result v2

    .line 8844
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->z()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->x()I

    move-result v4

    .line 8845
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->B()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->D()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 8847
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v6

    .line 8844
    invoke-static {v3, v4, v1, v5, v6}, Landroid/support/v7/widget/RecyclerView$h;->a(IIIIZ)I

    move-result v1

    .line 8848
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8849
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 8851
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 9050
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 9051
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 9052
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p5, v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 9055
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 2

    .prologue
    .line 8289
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 8290
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8291
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/l;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/l;->e(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 8295
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isRemoved()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/support/v7/widget/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8299
    return-void

    .line 8293
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/l;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/l;->f(Landroid/support/v7/widget/RecyclerView$u;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 9102
    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9103
    return-void
.end method

.method a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .prologue
    .line 9874
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 9876
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/b;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9877
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 9880
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 0

    .prologue
    .line 8385
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/view/View;)V

    .line 8386
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/View;)V

    .line 8387
    return-void
.end method

.method public a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 9069
    if-eqz p2, :cond_1

    .line 9070
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 9071
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 9072
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    .line 9071
    invoke-virtual {p3, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9077
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9078
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 9079
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9080
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/RectF;

    .line 9081
    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9082
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9083
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    .line 9084
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    .line 9085
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    .line 9086
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    .line 9087
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 9083
    invoke-virtual {p3, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9091
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 9092
    return-void

    .line 9074
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 9843
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9844
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 7401
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7402
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 7404
    :cond_0
    return-void
.end method

.method a(ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 9993
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    .prologue
    .line 7820
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10009
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 10035
    :cond_0
    :goto_0
    return v1

    .line 10013
    :cond_1
    sparse-switch p3, :sswitch_data_0

    move v0, v1

    move v3, v1

    .line 10031
    :goto_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    .line 10034
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    move v1, v2

    .line 10035
    goto :goto_0

    .line 10015
    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10016
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->z()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->B()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->D()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    .line 10018
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10019
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->y()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->A()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    .line 10023
    :sswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10024
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->z()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->B()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->D()I

    move-result v3

    sub-int/2addr v0, v3

    .line 10026
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10027
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->y()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->A()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v4

    sub-int/2addr v3, v4

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    .line 10013
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 10061
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 9479
    invoke-virtual {p0, p1, p3, p4}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .prologue
    .line 9353
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 9373
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I

    move-result-object v2

    .line 9375
    aget v3, v2, v0

    .line 9376
    aget v2, v2, v1

    .line 9377
    if-eqz p5, :cond_0

    invoke-direct {p0, p1, v3, v2}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/support/v7/widget/RecyclerView;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9378
    :cond_0
    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 9379
    :cond_1
    if-eqz p4, :cond_3

    .line 9380
    invoke-virtual {p1, v3, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :goto_0
    move v0, v1

    .line 9387
    :cond_2
    return v0

    .line 9382
    :cond_3
    invoke-virtual {p1, v3, v2}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9457
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 9523
    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    .prologue
    .line 8758
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->c:Z

    if-eqz v0, :cond_0

    .line 8759
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8760
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 10040
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;ZZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9411
    const/16 v2, 0x6003

    .line 9413
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/k;

    invoke-virtual {v3, p1, v2}, Landroid/support/v7/widget/k;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$h;->s:Landroid/support/v7/widget/k;

    .line 9415
    invoke-virtual {v3, p1, v2}, Landroid/support/v7/widget/k;->a(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 9416
    :goto_0
    if-eqz p2, :cond_2

    move v0, v2

    .line 9419
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 9415
    goto :goto_0

    .line 9419
    :cond_2
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 7654
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7655
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 7657
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 7895
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9971
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    if-nez v1, :cond_1

    .line 9974
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method b(Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 8693
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$n;->e()I

    move-result v1

    .line 8695
    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 8696
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$n;->e(I)Landroid/view/View;

    move-result-object v2

    .line 8697
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v3

    .line 8698
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$u;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8695
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8706
    :cond_0
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView$u;->setIsRecyclable(Z)V

    .line 8707
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$u;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8708
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8710
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/RecyclerView$e;

    if-eqz v4, :cond_2

    .line 8711
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/RecyclerView$e;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView$e;->d(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 8713
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$u;->setIsRecyclable(Z)V

    .line 8714
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/view/View;)V

    goto :goto_1

    .line 8716
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$n;->f()V

    .line 8717
    if-lez v1, :cond_4

    .line 8718
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 8720
    :cond_4
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 7246
    if-nez p1, :cond_0

    .line 7247
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    .line 7248
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    .line 7249
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$h;->g:I

    .line 7250
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$h;->h:I

    .line 7257
    :goto_0
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$h;->e:I

    .line 7258
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$h;->f:I

    .line 7259
    return-void

    .line 7252
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    .line 7253
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/b;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    .line 7254
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$h;->g:I

    .line 7255
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$h;->h:I

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 9555
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 1

    .prologue
    .line 7608
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->v:Z

    .line 7609
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V

    .line 7610
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 8033
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/view/View;I)V

    .line 8034
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 8045
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    .line 8046
    return-void
.end method

.method public b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9171
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 9172
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9177
    :goto_0
    return-void

    .line 9175
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 9176
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 7471
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$h;->w:Z

    .line 7472
    return-void
.end method

.method b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    .prologue
    .line 8772
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->c:Z

    if-eqz v0, :cond_0

    .line 8774
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8775
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 9627
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 8216
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->v()I

    move-result v2

    .line 8217
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 8218
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$h;->h(I)Landroid/view/View;

    move-result-object v0

    .line 8219
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v3

    .line 8220
    if-nez v3, :cond_1

    .line 8217
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 8223
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$u;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$u;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    .line 8224
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$u;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8228
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7262
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$h;->g:I

    .line 7263
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$h;->e:I

    .line 7264
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$h;->e:I

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->b:Z

    if-nez v0, :cond_0

    .line 7265
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$h;->g:I

    .line 7268
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$h;->h:I

    .line 7269
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$h;->f:I

    .line 7270
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$h;->f:I

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->b:Z

    if-nez v0, :cond_1

    .line 7271
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$h;->h:I

    .line 7273
    :cond_1
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 2

    .prologue
    .line 9784
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 9785
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$h;->h(I)Landroid/view/View;

    move-result-object v1

    .line 9786
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9787
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(ILandroid/support/v7/widget/RecyclerView$n;)V

    .line 9784
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9790
    :cond_1
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 2

    .prologue
    .line 7775
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7776
    return-void
.end method

.method c(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 7603
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->v:Z

    .line 7604
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/support/v7/widget/RecyclerView;)V

    .line 7605
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 9567
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 8111
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/b;->a(Landroid/view/View;)V

    .line 8112
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 8310
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 8311
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 7507
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 9936
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 9672
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 8159
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f()I

    move-result v0

    return v0
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 9743
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 9284
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 7928
    return-void
.end method

.method d(II)V
    .locals 8

    .prologue
    const v2, 0x7fffffff

    const/high16 v3, -0x80000000

    .line 7289
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->v()I

    move-result v5

    .line 7290
    if-nez v5, :cond_0

    .line 7291
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    .line 7318
    :goto_0
    return-void

    .line 7299
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    move v1, v3

    move v0, v2

    :goto_1
    if-ge v4, v5, :cond_5

    .line 7300
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView$h;->h(I)Landroid/view/View;

    move-result-object v6

    .line 7301
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    .line 7302
    invoke-virtual {p0, v6, v7}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7303
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v0, :cond_1

    .line 7304
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 7306
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v1, :cond_2

    .line 7307
    iget v1, v7, Landroid/graphics/Rect;->right:I

    .line 7309
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v2, :cond_3

    .line 7310
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 7312
    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_4

    .line 7313
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 7299
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7316
    :cond_5
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 7317
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 7675
    return-void
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 9612
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8189
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 8199
    :cond_0
    :goto_0
    return-object v0

    .line 8192
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 8193
    if-eqz v1, :cond_0

    .line 8196
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/b;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 8199
    goto :goto_0
.end method

.method public e(II)V
    .locals 3

    .prologue
    .line 8341
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->h(I)Landroid/view/View;

    move-result-object v0

    .line 8342
    if-nez v0, :cond_0

    .line 8343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot move a child from non-existing index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    .line 8344
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8346
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->g(I)V

    .line 8347
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/view/View;I)V

    .line 8348
    return-void
.end method

.method public e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7684
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 7905
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Z
    .locals 1

    .prologue
    .line 9988
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 9657
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 8965
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 8966
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 8123
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->h(I)Landroid/view/View;

    move-result-object v0

    .line 8124
    if-eqz v0, :cond_0

    .line 8125
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/b;->a(I)V

    .line 8127
    :cond_0
    return-void
.end method

.method public f(II)V
    .locals 1

    .prologue
    .line 9716
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9717
    return-void
.end method

.method f(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 10089
    .line 10090
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10091
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10089
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->c(II)V

    .line 10093
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 7915
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 9642
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 8979
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 8980
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 8269
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$h;->a(ILandroid/view/View;)V

    .line 8270
    return-void
.end method

.method public h(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 9687
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 9114
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->n(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public h(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 8417
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/b;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 9126
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->l(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public i(I)V
    .locals 1

    .prologue
    .line 8588
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8589
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    .line 8591
    :cond_0
    return-void
.end method

.method public j(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 9138
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->o(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j(I)V
    .locals 1

    .prologue
    .line 8600
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8601
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 8603
    :cond_0
    return-void
.end method

.method public k(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 9150
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->m(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public k(I)V
    .locals 0

    .prologue
    .line 9769
    return-void
.end method

.method public l(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9191
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method l()Z
    .locals 1

    .prologue
    .line 10106
    const/4 v0, 0x0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9206
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9221
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public o(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9236
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 7351
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7352
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 7354
    :cond_0
    return-void
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 7548
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->d:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 7620
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->v:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 7720
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 7962
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->t:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->t:Landroid/support/v7/widget/RecyclerView$q;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 7975
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 8148
    const/4 v0, -0x1

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 8408
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 8435
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$h;->e:I

    return v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 8453
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$h;->f:I

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 8462
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$h;->g:I

    return v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 8471
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$h;->h:I

    return v0
.end method
