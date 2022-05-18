.class public Landroid/support/v7/widget/RecyclerView$m;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$m$a;
    }
.end annotation


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v7/widget/RecyclerView$m$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5222
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/util/SparseArray;

    .line 5224
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:I

    return-void
.end method

.method private b(I)Landroid/support/v7/widget/RecyclerView$m$a;
    .locals 2

    .prologue
    .line 5347
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$m$a;

    .line 5348
    if-nez v0, :cond_0

    .line 5349
    new-instance v0, Landroid/support/v7/widget/RecyclerView$m$a;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$m$a;-><init>()V

    .line 5350
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5352
    :cond_0
    return-object v0
.end method


# virtual methods
.method a(JJ)J
    .locals 7

    .prologue
    const-wide/16 v4, 0x4

    .line 5285
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5288
    :goto_0
    return-wide p3

    :cond_0
    div-long v0, p1, v4

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    div-long v2, p3, v4

    add-long p3, v0, v2

    goto :goto_0
.end method

.method public a(I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 2

    .prologue
    .line 5252
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$m$a;

    .line 5253
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$m$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5254
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$m$a;->a:Ljava/util/ArrayList;

    .line 5255
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 5257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 5227
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 5228
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$m$a;

    .line 5229
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$m$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5227
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5231
    :cond_0
    return-void
.end method

.method a(IJ)V
    .locals 4

    .prologue
    .line 5292
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->b(I)Landroid/support/v7/widget/RecyclerView$m$a;

    move-result-object v0

    .line 5293
    iget-wide v2, v0, Landroid/support/v7/widget/RecyclerView$m$a;->c:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/support/v7/widget/RecyclerView$m;->a(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/widget/RecyclerView$m$a;->c:J

    .line 5295
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 1

    .prologue
    .line 5314
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:I

    .line 5315
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;Z)V
    .locals 1

    .prologue
    .line 5335
    if-eqz p1, :cond_0

    .line 5336
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->b()V

    .line 5338
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:I

    if-nez v0, :cond_1

    .line 5339
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->a()V

    .line 5341
    :cond_1
    if-eqz p2, :cond_2

    .line 5342
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 5344
    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 3

    .prologue
    .line 5272
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->getItemViewType()I

    move-result v0

    .line 5273
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$m;->b(I)Landroid/support/v7/widget/RecyclerView$m$a;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$m$a;->a:Ljava/util/ArrayList;

    .line 5274
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$m$a;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$m$a;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 5282
    :goto_0
    return-void

    .line 5280
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->resetInternal()V

    .line 5281
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a(IJJ)Z
    .locals 4

    .prologue
    .line 5304
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->b(I)Landroid/support/v7/widget/RecyclerView$m$a;

    move-result-object v0

    iget-wide v0, v0, Landroid/support/v7/widget/RecyclerView$m$a;->c:J

    .line 5305
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long/2addr v0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 5318
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:I

    .line 5319
    return-void
.end method

.method b(IJ)V
    .locals 4

    .prologue
    .line 5298
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->b(I)Landroid/support/v7/widget/RecyclerView$m$a;

    move-result-object v0

    .line 5299
    iget-wide v2, v0, Landroid/support/v7/widget/RecyclerView$m$a;->d:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/support/v7/widget/RecyclerView$m;->a(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/widget/RecyclerView$m$a;->d:J

    .line 5301
    return-void
.end method

.method b(IJJ)Z
    .locals 4

    .prologue
    .line 5309
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->b(I)Landroid/support/v7/widget/RecyclerView$m$a;

    move-result-object v0

    iget-wide v0, v0, Landroid/support/v7/widget/RecyclerView$m$a;->d:J

    .line 5310
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long/2addr v0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
