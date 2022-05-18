.class public Landroid/support/v7/widget/RecyclerView$n;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field a:Landroid/support/v7/widget/RecyclerView$z;

.field final b:Landroid/graphics/Rect;

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Z

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Z

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Z

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Z

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->r()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v0

    return v0
.end method
