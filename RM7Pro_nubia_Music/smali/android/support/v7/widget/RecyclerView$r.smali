.class public Landroid/support/v7/widget/RecyclerView$r;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:I

.field l:J

.field m:I

.field n:I

.field o:I

.field private p:I

.field private q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11747
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$r;->p:I

    .line 11758
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$r;->a:I

    .line 11764
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$r;->b:I

    .line 11776
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:I

    .line 11782
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$r;->d:I

    .line 11784
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->e:Z

    .line 11786
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->f:Z

    .line 11788
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->g:Z

    .line 11790
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Z

    .line 11796
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->i:Z

    .line 11798
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->j:Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$r;I)I
    .locals 0

    .prologue
    .line 11732
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$r;->p:I

    return p1
.end method


# virtual methods
.method a(I)V
    .locals 3

    .prologue
    .line 11738
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 11739
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11740
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$r;->c:I

    .line 11741
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11743
    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11835
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:I

    .line 11836
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$r;->d:I

    .line 11837
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->f:Z

    .line 11838
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->g:Z

    .line 11839
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Z

    .line 11840
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 11865
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r;->f:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 11876
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r;->j:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 11941
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r;->p:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 11950
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 11986
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r;->b:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r;->d:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->q:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
