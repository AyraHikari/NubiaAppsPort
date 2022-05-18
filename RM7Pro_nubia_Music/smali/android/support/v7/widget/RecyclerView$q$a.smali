.class public Landroid/support/v7/widget/RecyclerView$q$a;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:I


# direct methods
.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11521
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->e:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->c:I

    if-ge v0, v1, :cond_0

    .line 11522
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11524
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->c:I

    if-ge v0, v1, :cond_1

    .line 11525
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11527
    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 11488
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->d:I

    if-ltz v0, :cond_0

    .line 11489
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->d:I

    .line 11490
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$q$a;->d:I

    .line 11491
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 11492
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView$q$a;->f:Z

    .line 11518
    :goto_0
    return-void

    .line 11495
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->f:Z

    if-eqz v0, :cond_4

    .line 11496
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$q$a;->b()V

    .line 11497
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->e:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    .line 11498
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->c:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 11499
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/RecyclerView$t;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$q$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$q$a;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$t;->b(II)V

    .line 11507
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->g:I

    .line 11508
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->g:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 11511
    const-string v0, "RecyclerView"

    const-string v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11514
    :cond_1
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView$q$a;->f:Z

    goto :goto_0

    .line 11501
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/RecyclerView$t;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$q$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$q$a;->b:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$q$a;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$t;->a(III)V

    goto :goto_1

    .line 11504
    :cond_3
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/RecyclerView$t;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$q$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$q$a;->b:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$q$a;->c:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$q$a;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$t;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 11516
    :cond_4
    iput v5, p0, Landroid/support/v7/widget/RecyclerView$q$a;->g:I

    goto :goto_0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 11484
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
