.class public Landroid/support/v7/widget/RecyclerView$w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation


# instance fields
.field private a:I

.field b:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/support/v7/widget/RecyclerView$z;",
            "Landroid/support/v7/widget/RecyclerView$l;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/support/v7/widget/RecyclerView$z;",
            "Landroid/support/v7/widget/RecyclerView$l;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Landroid/support/v7/widget/RecyclerView$z;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:I

    .line 3
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    .line 4
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    .line 5
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->d:Landroid/support/v4/util/ArrayMap;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->f:I

    .line 7
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    .line 8
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->h:I

    .line 9
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->i:Z

    .line 10
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:Z

    .line 11
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Z

    .line 12
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->l:Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$w;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$w;->h:I

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView$w;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->h:I

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView$w;->i:Z

    return p0
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView$w;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$w;->i:Z

    return p1
.end method

.method static synthetic e(Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView$w;->l:Z

    return p0
.end method

.method static synthetic f(Landroid/support/v7/widget/RecyclerView$w;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$w;->l:Z

    return p1
.end method

.method static synthetic g(Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:Z

    return p0
.end method

.method static synthetic h(Landroid/support/v7/widget/RecyclerView$w;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$w;->j:Z

    return p1
.end method

.method static synthetic i(Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Z

    return p0
.end method

.method static synthetic j(Landroid/support/v7/widget/RecyclerView$w;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Z

    return p1
.end method

.method static synthetic k(Landroid/support/v7/widget/RecyclerView$w;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    return p1
.end method

.method private q(Landroid/support/v4/util/ArrayMap;Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Landroid/support/v7/widget/RecyclerView$z;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$z;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public l()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$w;->h:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->f:I

    :goto_0
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:I

    return v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:Z

    return v0
.end method

.method public p(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->d:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$w;->q(Landroid/support/v4/util/ArrayMap;Landroid/support/v7/widget/RecyclerView$z;)V

    :cond_0
    return-void
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->l:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$w;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPostLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$w;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$w;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$w;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$w;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$w;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$w;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
