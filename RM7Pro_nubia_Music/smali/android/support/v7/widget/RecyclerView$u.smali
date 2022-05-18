.class public abstract Landroid/support/v7/widget/RecyclerView$u;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "u"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_SET_A11Y_ITEM_DELEGATE:I = 0x4000

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field mOldPosition:I

.field mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAccessibilityState:I

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Landroid/support/v7/widget/RecyclerView$n;

.field mShadowedHolder:Landroid/support/v7/widget/RecyclerView$u;

.field mShadowingHolder:Landroid/support/v7/widget/RecyclerView$u;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10502
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Landroid/support/v7/widget/RecyclerView$u;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 10529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10390
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    .line 10391
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mOldPosition:I

    .line 10392
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mItemId:J

    .line 10393
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mItemViewType:I

    .line 10394
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    .line 10397
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$u;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$u;

    .line 10399
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$u;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$u;

    .line 10504
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$u;->mPayloads:Ljava/util/List;

    .line 10505
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$u;->mUnmodifiedPayloads:Ljava/util/List;

    .line 10507
    iput v4, p0, Landroid/support/v7/widget/RecyclerView$u;->mIsRecyclableCount:I

    .line 10511
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$u;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$n;

    .line 10513
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView$u;->mInChangeScrap:Z

    .line 10517
    iput v4, p0, Landroid/support/v7/widget/RecyclerView$u;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10520
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mPendingAccessibilityState:I

    .line 10530
    if-nez p1, :cond_0

    .line 10531
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10533
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    .line 10534
    return-void
.end method

.method static synthetic access$1002(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$n;)Landroid/support/v7/widget/RecyclerView$n;
    .locals 0

    .prologue
    .line 10387
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$u;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$n;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 1

    .prologue
    .line 10387
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mInChangeScrap:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/support/v7/widget/RecyclerView$u;Z)Z
    .locals 0

    .prologue
    .line 10387
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$u;->mInChangeScrap:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 1

    .prologue
    .line 10387
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$u;->shouldBeKeptAsChild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 10387
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 10387
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$u;->onEnteredHiddenState(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 10387
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$u;->onLeftHiddenState(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 1

    .prologue
    .line 10387
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$u;->doesTransientStatePreventRecycling()Z

    move-result v0

    return v0
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .prologue
    .line 10748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 10749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPayloads:Ljava/util/List;

    .line 10750
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mUnmodifiedPayloads:Ljava/util/List;

    .line 10752
    :cond_0
    return-void
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 1

    .prologue
    .line 10889
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onEnteredHiddenState(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 10795
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    .line 10796
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10797
    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$u;I)Z

    .line 10799
    return-void
.end method

.method private onLeftHiddenState(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 10805
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$u;I)Z

    .line 10807
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10808
    return-void
.end method

.method private shouldBeKeptAsChild()Z
    .locals 1

    .prologue
    .line 10881
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 10739
    if-nez p1, :cond_1

    .line 10740
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$u;->addFlags(I)V

    .line 10745
    :cond_0
    :goto_0
    return-void

    .line 10741
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 10742
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$u;->createPayloadsIfNeeded()V

    .line 10743
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addFlags(I)V
    .locals 1

    .prologue
    .line 10735
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    .line 10736
    return-void
.end method

.method clearOldPosition()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 10559
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mOldPosition:I

    .line 10560
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    .line 10561
    return-void
.end method

.method clearPayload()V
    .locals 1

    .prologue
    .line 10755
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 10756
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10758
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    .line 10759
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .prologue
    .line 10686
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    .line 10687
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .prologue
    .line 10690
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    .line 10691
    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1

    .prologue
    .line 10537
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$u;->addFlags(I)V

    .line 10538
    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/RecyclerView$u;->offsetPosition(IZ)V

    .line 10539
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    .line 10540
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .prologue
    .line 10635
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 10636
    const/4 v0, -0x1

    .line 10638
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId()J
    .locals 2

    .prologue
    .line 10663
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .prologue
    .line 10670
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .prologue
    .line 10609
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method public final getOldPosition()I
    .locals 1

    .prologue
    .line 10653
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mOldPosition:I

    return v0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10583
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10762
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 10763
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 10765
    :cond_0
    sget-object v0, Landroid/support/v7/widget/RecyclerView$u;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    .line 10771
    :goto_0
    return-object v0

    .line 10768
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mUnmodifiedPayloads:Ljava/util/List;

    goto :goto_0

    .line 10771
    :cond_2
    sget-object v0, Landroid/support/v7/widget/RecyclerView$u;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    goto :goto_0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 1

    .prologue
    .line 10719
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .prologue
    .line 10727
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBound()Z
    .locals 1

    .prologue
    .line 10711
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInvalid()Z
    .locals 1

    .prologue
    .line 10703
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRecyclable()Z
    .locals 1

    .prologue
    .line 10872
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    .line 10873
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRemoved()Z
    .locals 1

    .prologue
    .line 10715
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScrap()Z
    .locals 1

    .prologue
    .line 10674
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTmpDetached()Z
    .locals 1

    .prologue
    .line 10723
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUpdated()Z
    .locals 1

    .prologue
    .line 10893
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsUpdate()Z
    .locals 1

    .prologue
    .line 10707
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method offsetPosition(IZ)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 10543
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mOldPosition:I

    if-ne v0, v1, :cond_0

    .line 10544
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mOldPosition:I

    .line 10546
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 10547
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    .line 10549
    :cond_1
    if-eqz p2, :cond_2

    .line 10550
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    .line 10552
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    .line 10553
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10554
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    .line 10556
    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 10776
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    .line 10777
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    .line 10778
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mOldPosition:I

    .line 10779
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mItemId:J

    .line 10780
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    .line 10781
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$u;->mIsRecyclableCount:I

    .line 10782
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$u;

    .line 10783
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$u;

    .line 10784
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->clearPayload()V

    .line 10785
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$u;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10786
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mPendingAccessibilityState:I

    .line 10787
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 10788
    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .prologue
    .line 10564
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10565
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mOldPosition:I

    .line 10567
    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2

    .prologue
    .line 10731
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    .line 10732
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 3

    .prologue
    .line 10847
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mIsRecyclableCount:I

    .line 10848
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mIsRecyclableCount:I

    if-gez v0, :cond_2

    .line 10849
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mIsRecyclableCount:I

    .line 10854
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10864
    :cond_0
    :goto_1
    return-void

    .line 10847
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10856
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mIsRecyclableCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 10857
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    goto :goto_1

    .line 10858
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mIsRecyclableCount:I

    if-nez v0, :cond_0

    .line 10859
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    goto :goto_1
.end method

.method setScrapContainer(Landroid/support/v7/widget/RecyclerView$n;Z)V
    .locals 0

    .prologue
    .line 10698
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$u;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$n;

    .line 10699
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView$u;->mInChangeScrap:Z

    .line 10700
    return-void
.end method

.method shouldIgnore()Z
    .locals 1

    .prologue
    .line 10570
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stopIgnoring()V
    .locals 1

    .prologue
    .line 10694
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    .line 10695
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10812
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10813
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mItemId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mOldPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mPreLayoutPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10815
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->isScrap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10816
    const-string v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mInChangeScrap:Z

    if-eqz v0, :cond_a

    const-string v0, "[changeScrap]"

    .line 10817
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10819
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10820
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->isBound()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10821
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->needsUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10822
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10823
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10824
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10825
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->isRecyclable()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$u;->mIsRecyclableCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10826
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->isAdapterPositionUnknown()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10828
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10829
    :cond_9
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10830
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10816
    :cond_a
    const-string v0, "[attachedScrap]"

    goto/16 :goto_0
.end method

.method unScrap()V
    .locals 1

    .prologue
    .line 10678
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$n;->c(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 10679
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 1

    .prologue
    .line 10682
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
