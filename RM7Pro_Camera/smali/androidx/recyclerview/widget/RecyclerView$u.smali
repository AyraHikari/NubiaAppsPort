.class public Landroidx/recyclerview/widget/RecyclerView$u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:I

.field m:J

.field n:I

.field o:I

.field p:I

.field private q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12377
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:I

    const/4 v0, 0x0

    .line 12388
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:I

    .line 12394
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:I

    const/4 v1, 0x1

    .line 12406
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->d:I

    .line 12412
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->e:I

    .line 12414
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:Z

    .line 12421
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Z

    .line 12423
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Z

    .line 12425
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Z

    .line 12431
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->j:Z

    .line 12433
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->k:Z

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 3

    .line 12368
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->d:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    return-void

    .line 12369
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12370
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " but it is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->d:I

    .line 12371
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 12459
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->d:I

    .line 12460
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->e:I

    const/4 p1, 0x0

    .line 12461
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Z

    .line 12462
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Z

    .line 12463
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 12490
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 12501
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->k:Z

    return v0
.end method

.method public c()I
    .locals 1

    .line 12566
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:I

    return v0
.end method

.method public d()Z
    .locals 2

    .line 12575
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()I
    .locals 2

    .line 12611
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:I

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->e:I

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->q:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsMeasuring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
