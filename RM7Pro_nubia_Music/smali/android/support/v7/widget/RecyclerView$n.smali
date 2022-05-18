.class public final Landroid/support/v7/widget/RecyclerView$n;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "n"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Landroid/support/v7/widget/RecyclerView$m;

.field final synthetic f:Landroid/support/v7/widget/RecyclerView;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Landroid/support/v7/widget/RecyclerView$s;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 5428
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    .line 5430
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    .line 5432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    .line 5434
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    .line 5435
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->g:Ljava/util/List;

    .line 5437
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$n;->h:I

    .line 5438
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$n;->d:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 5850
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 5851
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5852
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 5853
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/ViewGroup;Z)V

    .line 5850
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5856
    :cond_1
    if-nez p2, :cond_2

    .line 5868
    :goto_1
    return-void

    .line 5860
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 5861
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5862
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 5864
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 5865
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5866
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$u;IIJ)Z
    .locals 6

    .prologue
    .line 5534
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5535
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->getItemViewType()I

    move-result v1

    .line 5536
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 5537
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p4, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->e:Landroid/support/v7/widget/RecyclerView$m;

    move-wide v4, p4

    .line 5538
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$m;->b(IJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5540
    const/4 v0, 0x0

    .line 5549
    :goto_0
    return v0

    .line 5542
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->bindViewHolder(Landroid/support/v7/widget/RecyclerView$u;I)V

    .line 5543
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    .line 5544
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$n;->e:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->getItemViewType()I

    move-result v5

    sub-long/2addr v0, v2

    invoke-virtual {v4, v5, v0, v1}, Landroid/support/v7/widget/RecyclerView$m;->b(IJ)V

    .line 5545
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$n;->e(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 5546
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5547
    iput p3, p1, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    .line 5549
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 2

    .prologue
    .line 5828
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5829
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    .line 5830
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 5832
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 5835
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5836
    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$u;->addFlags(I)V

    .line 5837
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .line 5838
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->b()Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-result-object v1

    .line 5837
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 5841
    :cond_1
    return-void
.end method

.method private f(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 2

    .prologue
    .line 5844
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 5845
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/ViewGroup;Z)V

    .line 5847
    :cond_0
    return-void
.end method


# virtual methods
.method a(IZJ)Landroid/support/v7/widget/RecyclerView$u;
    .locals 11

    .prologue
    const/16 v10, 0x2000

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5671
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 5672
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    .line 5673
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    .line 5674
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5679
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5680
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$n;->f(I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v1

    .line 5681
    if-eqz v1, :cond_6

    move v0, v6

    :goto_0
    move v2, v0

    move-object v0, v1

    .line 5684
    :goto_1
    if-nez v0, :cond_4

    .line 5685
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$n;->b(IZ)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 5686
    if-eqz v0, :cond_4

    .line 5687
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 5689
    if-nez p2, :cond_3

    .line 5692
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$u;->addFlags(I)V

    .line 5693
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5694
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3, v7}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5695
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->unScrap()V

    .line 5699
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/support/v7/widget/RecyclerView$u;)V

    :cond_3
    move-object v0, v8

    .line 5707
    :cond_4
    :goto_3
    if-nez v0, :cond_18

    .line 5708
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/a;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/a;->b(I)I

    move-result v3

    .line 5709
    if-ltz v3, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    if-lt v3, v1, :cond_9

    .line 5710
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    .line 5712
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v7

    .line 5681
    goto/16 :goto_0

    .line 5696
    :cond_7
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5697
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->clearReturnedFromScrapFlag()V

    goto :goto_2

    :cond_8
    move v2, v6

    .line 5703
    goto :goto_3

    .line 5715
    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result v1

    .line 5717
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 5718
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v1, p2}, Landroid/support/v7/widget/RecyclerView$n;->a(JIZ)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 5720
    if-eqz v0, :cond_17

    .line 5722
    iput v3, v0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    move v9, v6

    .line 5726
    :goto_4
    if-nez v0, :cond_b

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->i:Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v2, :cond_b

    .line 5729
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->i:Landroid/support/v7/widget/RecyclerView$s;

    .line 5730
    invoke-virtual {v2, p0, p1, v1}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/support/v7/widget/RecyclerView$n;II)Landroid/view/View;

    move-result-object v2

    .line 5731
    if-eqz v2, :cond_b

    .line 5732
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 5733
    if-nez v0, :cond_a

    .line 5734
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    .line 5736
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5737
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5738
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    .line 5740
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5744
    :cond_b
    if-nez v0, :cond_c

    .line 5749
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$n;->g()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$m;->a(I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 5750
    if-eqz v0, :cond_c

    .line 5751
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->resetInternal()V

    .line 5752
    sget-boolean v2, Landroid/support/v7/widget/RecyclerView;->a:Z

    if-eqz v2, :cond_c

    .line 5753
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->f(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 5757
    :cond_c
    if-nez v0, :cond_f

    .line 5758
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 5759
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p3, v4

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->e:Landroid/support/v7/widget/RecyclerView$m;

    move-wide v4, p3

    .line 5760
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$m;->a(IJJ)Z

    move-result v0

    if-nez v0, :cond_d

    move-object v1, v8

    .line 5824
    :goto_5
    return-object v1

    .line 5764
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4, v1}, Landroid/support/v7/widget/RecyclerView$a;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 5765
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->z()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 5767
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    .line 5768
    if-eqz v4, :cond_e

    .line 5769
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v0, Landroid/support/v7/widget/RecyclerView$u;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5773
    :cond_e
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    .line 5774
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$n;->e:Landroid/support/v7/widget/RecyclerView$m;

    sub-long v2, v4, v2

    invoke-virtual {v8, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$m;->a(IJ)V

    :cond_f
    move-object v1, v0

    move v8, v9

    .line 5784
    :goto_6
    if-eqz v8, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_10

    .line 5785
    invoke-virtual {v1, v10}, Landroid/support/v7/widget/RecyclerView$u;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5786
    invoke-virtual {v1, v7, v10}, Landroid/support/v7/widget/RecyclerView$u;->setFlags(II)V

    .line 5787
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$r;->i:Z

    if-eqz v0, :cond_10

    .line 5789
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$e;->e(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    .line 5790
    or-int/lit16 v0, v0, 0x1000

    .line 5791
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/RecyclerView$e;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    .line 5792
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v4

    .line 5791
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/support/v7/widget/RecyclerView$e;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$u;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v0

    .line 5793
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$e$c;)V

    .line 5798
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->isBound()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5800
    iput p1, v1, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    move v2, v7

    .line 5811
    :goto_7
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5813
    if-nez v0, :cond_13

    .line 5814
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 5815
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5822
    :goto_8
    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$u;

    .line 5823
    if-eqz v8, :cond_15

    if-eqz v2, :cond_15

    :goto_9
    iput-boolean v6, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    goto/16 :goto_5

    .line 5801
    :cond_11
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->isBound()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$u;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5807
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/a;->b(I)I

    move-result v2

    move-object v0, p0

    move v3, p1

    move-wide v4, p3

    .line 5808
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/support/v7/widget/RecyclerView$u;IIJ)Z

    move-result v0

    move v2, v0

    goto :goto_7

    .line 5816
    :cond_13
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 5817
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 5818
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 5820
    :cond_14
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    goto :goto_8

    :cond_15
    move v6, v7

    .line 5823
    goto :goto_9

    :cond_16
    move v2, v7

    goto :goto_7

    :cond_17
    move v9, v2

    goto/16 :goto_4

    :cond_18
    move-object v1, v0

    move v8, v2

    goto/16 :goto_6

    :cond_19
    move-object v0, v8

    move v2, v7

    goto/16 :goto_1
.end method

.method a(JIZ)Landroid/support/v7/widget/RecyclerView$u;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 6218
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6219
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 6220
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 6221
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->getItemId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6222
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_1

    .line 6223
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$u;->addFlags(I)V

    .line 6224
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6233
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6234
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$u;->setFlags(II)V

    .line 6266
    :cond_0
    :goto_1
    return-object v0

    .line 6239
    :cond_1
    if-nez p4, :cond_2

    .line 6243
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6244
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6245
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/view/View;)V

    .line 6219
    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 6251
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6252
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    .line 6253
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 6254
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->getItemId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_5

    .line 6255
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_4

    .line 6256
    if-nez p4, :cond_0

    .line 6257
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 6260
    :cond_4
    if-nez p4, :cond_5

    .line 6261
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$n;->d(I)V

    move-object v0, v1

    .line 6262
    goto :goto_1

    .line 6252
    :cond_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    .line 6266
    goto :goto_1
.end method

.method a(IZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 5647
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$n;->a(IZJ)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 5451
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5452
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$n;->d()V

    .line 5453
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 5461
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$n;->h:I

    .line 5462
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$n;->b()V

    .line 5463
    return-void
.end method

.method a(II)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 6290
    if-ge p1, p2, :cond_1

    .line 6293
    const/4 v0, -0x1

    move v1, v0

    move v2, p2

    move v3, p1

    .line 6299
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v5

    .line 6300
    :goto_1
    if-ge v4, v6, :cond_4

    .line 6301
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 6302
    if-eqz v0, :cond_0

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    if-lt v7, v3, :cond_0

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    if-le v7, v2, :cond_2

    .line 6300
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 6297
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    move v2, p1

    move v3, p2

    goto :goto_0

    .line 6305
    :cond_2
    iget v7, v0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    if-ne v7, p1, :cond_3

    .line 6306
    sub-int v7, p2, p1

    invoke-virtual {v0, v7, v5}, Landroid/support/v7/widget/RecyclerView$u;->offsetPosition(IZ)V

    goto :goto_2

    .line 6308
    :cond_3
    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/RecyclerView$u;->offsetPosition(IZ)V

    goto :goto_2

    .line 6315
    :cond_4
    return-void
.end method

.method a(IIZ)V
    .locals 4

    .prologue
    .line 6338
    add-int v2, p1, p2

    .line 6339
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6340
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 6341
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 6342
    if-eqz v0, :cond_0

    .line 6343
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    if-lt v3, v2, :cond_1

    .line 6349
    neg-int v3, p2

    invoke-virtual {v0, v3, p3}, Landroid/support/v7/widget/RecyclerView$u;->offsetPosition(IZ)V

    .line 6340
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6350
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 6352
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$u;->addFlags(I)V

    .line 6353
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$n;->d(I)V

    goto :goto_1

    .line 6357
    :cond_2
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;Z)V
    .locals 1

    .prologue
    .line 6284
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$n;->a()V

    .line 6285
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$n;->g()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;Z)V

    .line 6286
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$m;)V
    .locals 2

    .prologue
    .line 6364
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->e:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz v0, :cond_0

    .line 6365
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->e:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->b()V

    .line 6367
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$n;->e:Landroid/support/v7/widget/RecyclerView$m;

    .line 6368
    if-eqz p1, :cond_1

    .line 6369
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->e:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 6371
    :cond_1
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 0

    .prologue
    .line 6360
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$n;->i:Landroid/support/v7/widget/RecyclerView$s;

    .line 6361
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$u;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x4000

    .line 6039
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 6040
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$u;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6041
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$u;->setFlags(II)V

    .line 6042
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 6044
    :cond_0
    if-eqz p2, :cond_1

    .line 6045
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$n;->d(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 6047
    :cond_1
    iput-object v2, p1, Landroid/support/v7/widget/RecyclerView$u;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 6048
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$n;->g()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 6049
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 5883
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 5884
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5885
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5887
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5888
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->unScrap()V

    .line 5892
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 5893
    return-void

    .line 5889
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5890
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->clearReturnedFromScrapFlag()V

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5496
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5501
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    .line 5517
    :cond_0
    :goto_0
    return v0

    .line 5503
    :cond_1
    iget v2, p1, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 5504
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    .line 5505
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5507
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5509
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    iget v3, p1, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result v2

    .line 5510
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->getItemViewType()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 5511
    goto :goto_0

    .line 5514
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5515
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->getItemId()J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    iget v5, p1, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b(I)I
    .locals 3

    .prologue
    .line 5618
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 5619
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    .line 5620
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5622
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5625
    :goto_0
    return p1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/a;->b(I)I

    move-result p1

    goto :goto_0
.end method

.method b(IZ)Landroid/support/v7/widget/RecyclerView$u;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 6164
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6167
    :goto_0
    if-ge v2, v3, :cond_3

    .line 6168
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 6169
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 6170
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$r;->f:Z

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6171
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$u;->addFlags(I)V

    .line 6213
    :cond_1
    :goto_1
    return-object v0

    .line 6167
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 6176
    :cond_3
    if-nez p2, :cond_5

    .line 6177
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/b;->c(I)Landroid/view/View;

    move-result-object v2

    .line 6178
    if-eqz v2, :cond_5

    .line 6181
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 6182
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/b;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/b;->e(Landroid/view/View;)V

    .line 6183
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/b;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/b;->b(Landroid/view/View;)I

    move-result v1

    .line 6184
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 6185
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    .line 6186
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6188
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/b;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/b;->e(I)V

    .line 6189
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$n;->c(Landroid/view/View;)V

    .line 6190
    const/16 v1, 0x2020

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$u;->addFlags(I)V

    goto :goto_1

    .line 6197
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6198
    :goto_2
    if-ge v1, v2, :cond_7

    .line 6199
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 6202
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_6

    .line 6203
    if-nez p2, :cond_1

    .line 6204
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 6198
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6213
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method b()V
    .locals 3

    .prologue
    .line 5466
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$h;->x:I

    .line 5467
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$n;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:I

    .line 5470
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5471
    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$n;->d:I

    if-le v1, v2, :cond_1

    .line 5472
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->d(I)V

    .line 5471
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 5466
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5474
    :cond_1
    return-void
.end method

.method b(II)V
    .locals 4

    .prologue
    .line 6318
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6319
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6320
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 6321
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 6326
    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Landroid/support/v7/widget/RecyclerView$u;->offsetPosition(IZ)V

    .line 6319
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6329
    :cond_1
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5944
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->isScrap()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5945
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5947
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->isScrap()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " isAttached:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    .line 5948
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v0, v2

    goto :goto_0

    .line 5951
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5952
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    .line 5954
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5957
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5958
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    .line 5960
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5964
    :cond_4
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$u;->access$900(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v4

    .line 5965
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_b

    if-eqz v4, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    .line 5967
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 5974
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->isRecyclable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5975
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:I

    if-lez v0, :cond_d

    const/16 v0, 0x20e

    .line 5976
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$u;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 5981
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5982
    iget v3, p0, Landroid/support/v7/widget/RecyclerView$n;->d:I

    if-lt v0, v3, :cond_6

    if-lez v0, :cond_6

    .line 5983
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$n;->d(I)V

    .line 5984
    add-int/lit8 v0, v0, -0x1

    .line 5988
    :cond_6
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->z()Z

    move-result v3

    if-eqz v3, :cond_8

    if-lez v0, :cond_8

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/e$a;

    iget v5, p1, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    .line 5990
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/e$a;->a(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 5992
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 5993
    :goto_2
    if-ltz v3, :cond_7

    .line 5994
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    .line 5995
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/e$a;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/e$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 6000
    :cond_7
    add-int/lit8 v0, v3, 0x1

    .line 6002
    :cond_8
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v1

    .line 6005
    :goto_3
    if-nez v0, :cond_9

    .line 6006
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/support/v7/widget/RecyclerView$u;Z)V

    move v2, v1

    .line 6024
    :cond_9
    :goto_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/l;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/l;->g(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 6025
    if-nez v0, :cond_a

    if-nez v2, :cond_a

    if-eqz v4, :cond_a

    .line 6026
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 6028
    :cond_a
    return-void

    :cond_b
    move v0, v2

    .line 5967
    goto :goto_1

    .line 5998
    :cond_c
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    .line 5999
    goto :goto_2

    :cond_d
    move v0, v2

    goto :goto_3

    :cond_e
    move v0, v2

    goto :goto_4
.end method

.method b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 6057
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 6058
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$u;->access$1002(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$n;)Landroid/support/v7/widget/RecyclerView$n;

    .line 6059
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$u;->access$1102(Landroid/support/v7/widget/RecyclerView$u;Z)Z

    .line 6060
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->clearReturnedFromScrapFlag()V

    .line 6061
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 6062
    return-void
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 5643
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$n;->a(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5482
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->g:Ljava/util/List;

    return-object v0
.end method

.method c(II)V
    .locals 4

    .prologue
    .line 6381
    add-int v2, p1, p2

    .line 6382
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6383
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 6384
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 6385
    if-nez v0, :cond_1

    .line 6383
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6389
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    .line 6390
    if-lt v3, p1, :cond_0

    if-ge v3, v2, :cond_0

    .line 6391
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$u;->addFlags(I)V

    .line 6392
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$n;->d(I)V

    goto :goto_1

    .line 6397
    :cond_2
    return-void
.end method

.method c(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 6100
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$u;->access$1100(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6101
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6105
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView$u;->access$1002(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$n;)Landroid/support/v7/widget/RecyclerView$n;

    .line 6106
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView$u;->access$1102(Landroid/support/v7/widget/RecyclerView$u;Z)Z

    .line 6107
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->clearReturnedFromScrapFlag()V

    .line 6108
    return-void

    .line 6103
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 6074
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 6075
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$u;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6076
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6077
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6078
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    .line 6080
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6082
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$u;->setScrapContainer(Landroid/support/v7/widget/RecyclerView$n;Z)V

    .line 6083
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6091
    :goto_0
    return-void

    .line 6085
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 6086
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    .line 6088
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$u;->setScrapContainer(Landroid/support/v7/widget/RecyclerView$n;Z)V

    .line 6089
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method d()V
    .locals 1

    .prologue
    .line 5905
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5906
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 5907
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->d(I)V

    .line 5906
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5909
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5910
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5911
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/e$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/e$a;->a()V

    .line 5913
    :cond_1
    return-void
.end method

.method d(I)V
    .locals 2

    .prologue
    .line 5930
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 5934
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/support/v7/widget/RecyclerView$u;Z)V

    .line 5935
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5936
    return-void
.end method

.method d(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 6270
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/RecyclerView$o;

    if-eqz v0, :cond_0

    .line 6271
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/RecyclerView$o;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 6273
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_1

    .line 6274
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 6276
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    if-eqz v0, :cond_2

    .line 6277
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/l;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/l;->g(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 6280
    :cond_2
    return-void
.end method

.method e()I
    .locals 1

    .prologue
    .line 6111
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method e(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 6115
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    return-object v0
.end method

.method f(I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    .line 6128
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 6153
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    .line 6132
    :goto_1
    if-ge v3, v4, :cond_3

    .line 6133
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 6134
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->wasReturnedFromScrap()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->getLayoutPosition()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 6135
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$u;->addFlags(I)V

    goto :goto_0

    .line 6132
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 6140
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6141
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/a;->b(I)I

    move-result v0

    .line 6142
    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 6143
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v6

    .line 6144
    :goto_2
    if-ge v2, v4, :cond_5

    .line 6145
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 6146
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->getItemId()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    .line 6147
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$u;->addFlags(I)V

    goto :goto_0

    .line 6144
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 6153
    goto :goto_0
.end method

.method f()V
    .locals 1

    .prologue
    .line 6119
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6120
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 6121
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6123
    :cond_0
    return-void
.end method

.method g()Landroid/support/v7/widget/RecyclerView$m;
    .locals 1

    .prologue
    .line 6374
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->e:Landroid/support/v7/widget/RecyclerView$m;

    if-nez v0, :cond_0

    .line 6375
    new-instance v0, Landroid/support/v7/widget/RecyclerView$m;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->e:Landroid/support/v7/widget/RecyclerView$m;

    .line 6377
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->e:Landroid/support/v7/widget/RecyclerView$m;

    return-object v0
.end method

.method h()V
    .locals 4

    .prologue
    .line 6400
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6401
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6402
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 6403
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 6404
    if-eqz v0, :cond_0

    .line 6405
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$u;->addFlags(I)V

    .line 6406
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$u;->addChangePayload(Ljava/lang/Object;)V

    .line 6402
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6411
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$n;->d()V

    .line 6413
    :cond_2
    return-void
.end method

.method i()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6416
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6417
    :goto_0
    if-ge v2, v3, :cond_0

    .line 6418
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 6419
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->clearOldPosition()V

    .line 6417
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 6421
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6422
    :goto_1
    if-ge v2, v3, :cond_1

    .line 6423
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->clearOldPosition()V

    .line 6422
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6425
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 6426
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6427
    :goto_2
    if-ge v1, v2, :cond_2

    .line 6428
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->clearOldPosition()V

    .line 6427
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6431
    :cond_2
    return-void
.end method

.method j()V
    .locals 4

    .prologue
    .line 6434
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6435
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6436
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 6437
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 6438
    if-eqz v0, :cond_0

    .line 6439
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    .line 6435
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6442
    :cond_1
    return-void
.end method
