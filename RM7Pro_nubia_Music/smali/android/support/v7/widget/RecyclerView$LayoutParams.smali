.class public Landroid/support/v7/widget/RecyclerView$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field c:Landroid/support/v7/widget/RecyclerView$u;

.field final d:Landroid/graphics/Rect;

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 11054
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 11042
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 11043
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    .line 11047
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    .line 11055
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 11050
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11042
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 11043
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    .line 11047
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    .line 11051
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 1

    .prologue
    .line 11066
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11042
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 11043
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    .line 11047
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    .line 11067
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 11062
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11042
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 11043
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    .line 11047
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    .line 11063
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 11058
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 11042
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 11043
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    .line 11047
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    .line 11059
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .prologue
    .line 11086
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 11097
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isRemoved()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 11108
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isUpdated()Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 11126
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->getLayoutPosition()I

    move-result v0

    return v0
.end method
