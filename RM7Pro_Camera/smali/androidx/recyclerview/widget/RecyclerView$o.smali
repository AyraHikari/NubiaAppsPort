.class public Landroidx/recyclerview/widget/RecyclerView$o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$o$a;
    }
.end annotation


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/recyclerview/widget/RecyclerView$o$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5658
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 5660
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:I

    return-void
.end method

.method private b(I)Landroidx/recyclerview/widget/RecyclerView$o$a;
    .locals 2

    .line 5815
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o$a;

    if-nez v0, :cond_0

    .line 5817
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$o$a;-><init>()V

    .line 5818
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method a(JJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-wide p3

    :cond_0
    const-wide/16 v0, 0x4

    .line 5756
    div-long/2addr p1, v0

    const-wide/16 v2, 0x3

    mul-long/2addr p1, v2

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public a(I)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 2

    .line 5704
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o$a;

    if-eqz p1, :cond_1

    .line 5705
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$o$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5706
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$o$a;->a:Ljava/util/ArrayList;

    .line 5707
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5708
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$x;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->s()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5709
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$x;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 5666
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5667
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$o$a;

    .line 5668
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$o$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(IJ)V
    .locals 2

    .line 5760
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b(I)Landroidx/recyclerview/widget/RecyclerView$o$a;

    move-result-object p1

    .line 5761
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$o$a;->c:J

    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->a(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroidx/recyclerview/widget/RecyclerView$o$a;->c:J

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 5804
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->c()V

    :cond_0
    if-nez p3, :cond_1

    .line 5806
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:I

    if-nez p1, :cond_1

    .line 5807
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->a()V

    :cond_1
    if-eqz p2, :cond_2

    .line 5810
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->b()V

    :cond_2
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 3

    .line 5740
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->h()I

    move-result v0

    .line 5741
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->b(I)Landroidx/recyclerview/widget/RecyclerView$o$a;

    move-result-object v1

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$o$a;->a:Ljava/util/ArrayList;

    .line 5742
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o$a;

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$o$a;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    return-void

    .line 5748
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->w()V

    .line 5749
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(IJJ)Z
    .locals 4

    .line 5772
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b(I)Landroidx/recyclerview/widget/RecyclerView$o$a;

    move-result-object p1

    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$o$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    add-long/2addr p2, v0

    cmp-long p1, p2, p4

    if-gez p1, :cond_0

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

.method b()V
    .locals 1

    .line 5782
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:I

    return-void
.end method

.method b(IJ)V
    .locals 2

    .line 5766
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b(I)Landroidx/recyclerview/widget/RecyclerView$o$a;

    move-result-object p1

    .line 5767
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$o$a;->d:J

    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->a(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroidx/recyclerview/widget/RecyclerView$o$a;->d:J

    return-void
.end method

.method b(IJJ)Z
    .locals 4

    .line 5777
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b(I)Landroidx/recyclerview/widget/RecyclerView$o$a;

    move-result-object p1

    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$o$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    add-long/2addr p2, v0

    cmp-long p1, p2, p4

    if-gez p1, :cond_0

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

.method c()V
    .locals 1

    .line 5786
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:I

    return-void
.end method
