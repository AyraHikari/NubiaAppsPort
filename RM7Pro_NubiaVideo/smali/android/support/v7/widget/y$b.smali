.class public Landroid/support/v7/widget/y$b;
.super Landroid/support/v7/widget/RecyclerView$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$n;-><init>(II)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroid/support/v7/widget/y$b;->e:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroid/support/v7/widget/y$b;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/support/v7/widget/y$b;->e:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroid/support/v7/widget/y$b;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$n;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Landroid/support/v7/widget/y$b;->e:I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/support/v7/widget/y$b;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$n;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroid/support/v7/widget/y$b;->e:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/support/v7/widget/y$b;->f:I

    return-void
.end method

.method static synthetic d(Landroid/support/v7/widget/y$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v7/widget/y$b;->e:I

    return p0
.end method

.method static synthetic e(Landroid/support/v7/widget/y$b;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v7/widget/y$b;->e:I

    return p1
.end method

.method static synthetic f(Landroid/support/v7/widget/y$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v7/widget/y$b;->f:I

    return p0
.end method

.method static synthetic g(Landroid/support/v7/widget/y$b;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v7/widget/y$b;->f:I

    return p1
.end method


# virtual methods
.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/y$b;->e:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/y$b;->f:I

    return v0
.end method
