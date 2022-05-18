.class public Landroid/support/v7/widget/RecyclerView$q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$z;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Landroid/util/SparseIntArray;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->b:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$q;->c:I

    return-void
.end method

.method private e(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$z;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$q;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$q;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$q;->b:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView$f;)V
    .locals 0

    .line 1
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$q;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$q;->c:I

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method c()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$q;->c:I

    return-void
.end method

.method public d(I)Landroid/support/v7/widget/RecyclerView$z;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$z;

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method f(Landroid/support/v7/widget/RecyclerView$f;Landroid/support/v7/widget/RecyclerView$f;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$q;->c()V

    :cond_0
    if-nez p3, :cond_1

    .line 2
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$q;->c:I

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$q;->b()V

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView$f;)V

    :cond_2
    return-void
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->m()I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$q;->e(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$q;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->z()V

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
