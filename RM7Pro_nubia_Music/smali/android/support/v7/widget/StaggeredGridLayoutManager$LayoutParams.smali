.class public Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

.field b:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 2416
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 2417
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 2412
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2413
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 2424
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2425
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .prologue
    .line 2420
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2421
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 2450
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 2460
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    if-nez v0, :cond_0

    .line 2461
    const/4 v0, -0x1

    .line 2463
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    goto :goto_0
.end method
