.class public Landroid/support/v7/widget/RecyclerView$v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/view/animation/Interpolator;

.field private e:Z

.field private f:I


# direct methods
.method static synthetic a(Landroid/support/v7/widget/RecyclerView$v$a;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$v$a;->b(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$v$a;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$v$a;->c()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v$a;->d:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$v$a;->c:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    .line 5
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->z(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$y;

    move-result-object p1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$v$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$v$a;->b:I

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/widget/RecyclerView$y;->g(II)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->z(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$y;

    move-result-object p1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$v$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$v$a;->b:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$v$a;->c:I

    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$y;->h(III)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->z(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$y;

    move-result-object p1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$v$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$v$a;->b:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$v$a;->c:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$v$a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$y;->j(IIILandroid/view/animation/Interpolator;)V

    .line 8
    :goto_0
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$v$a;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$v$a;->f:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_2

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$v$a;->e:Z

    goto :goto_1

    .line 11
    :cond_3
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$v$a;->f:I

    :goto_1
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v$a;->d:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$v$a;->c:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$v$a;->c:I

    if-lt v0, v1, :cond_2

    return-void

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
