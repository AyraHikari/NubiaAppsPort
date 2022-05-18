.class public Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;
.super Ljava/lang/Object;
.source "MultiSelectionManagerImpl.java"

# interfaces
.implements Lcn/nubia/improve/multiselection/MultiSelectionManagerInterface;


# instance fields
.field private final LOG_DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mCurrSelectedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mInSelectedRegion:Z

.field private mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

.field private mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

.field private mOverscrollEffect:I

.field private mPaper:Lcn/nubia/gallery3d/ui/Paper;

.field private mPreIndex:I

.field private final mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

.field private mSelectedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

.field private mStartIndex:I

.field private mTotalSelectedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private temp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/ScrollerHelper;ILcn/nubia/gallery3d/ui/Paper;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "multiselect"

    .line 24
    iput-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->LOG_DEBUG:Z

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    .line 28
    iput-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mPaper:Lcn/nubia/gallery3d/ui/Paper;

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mStartIndex:I

    .line 31
    iput v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrentIndex:I

    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mPreIndex:I

    .line 34
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    .line 35
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;

    .line 36
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    .line 37
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->temp:Ljava/util/Set;

    .line 38
    iput-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 39
    iput-boolean v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mInSelectedRegion:Z

    .line 42
    iput-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    .line 43
    iput p2, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mOverscrollEffect:I

    .line 44
    iput-object p3, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mPaper:Lcn/nubia/gallery3d/ui/Paper;

    return-void
.end method

.method private declared-synchronized getChangedIndex()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->temp:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 196
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->temp:Ljava/util/Set;

    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 197
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->temp:Ljava/util/Set;

    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->temp:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 200
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->temp:Ljava/util/Set;

    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 201
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->temp:Ljava/util/Set;

    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 203
    :goto_0
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->temp:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCurrentSelected(II)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    if-gt p1, p2, :cond_2

    :goto_0
    if-gt p1, p2, :cond_5

    .line 173
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-boolean v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->LOG_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "multiselect"

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCurrentSelected__111 add index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lt p1, p2, :cond_5

    .line 182
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 183
    iget-boolean v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->LOG_DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "multiselect"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCurrentSelected__222 add index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_3
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 190
    :cond_5
    iget-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private movePage(IF)V
    .locals 1

    int-to-float p1, p1

    sub-float/2addr p1, p2

    const/high16 v0, 0x43960000    # 300.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/16 p1, 0x14

    .line 160
    invoke-direct {p0, p1}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->movePageByDistance(I)V

    :cond_0
    cmpg-float p1, p2, v0

    if-gez p1, :cond_1

    const/16 p1, -0x14

    .line 163
    invoke-direct {p0, p1}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->movePageByDistance(I)V

    :cond_1
    return-void
.end method

.method private movePageByDistance(I)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    .line 140
    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getScrollLimit()I

    move-result v1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v0, p1, v2, v1}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->startScroll(III)I

    move-result p1

    .line 141
    iget v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mOverscrollEffect:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mPaper:Lcn/nubia/gallery3d/ui/Paper;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/Paper;->overScroll(F)V

    :cond_0
    return-void
.end method

.method private declared-synchronized toggleChangedIndex(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 207
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 208
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 210
    iget-boolean v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mInSelectedRegion:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq v0, v2, :cond_2

    .line 213
    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onSingleTapUp(I)V

    goto :goto_1

    .line 216
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eq v0, v2, :cond_2

    .line 219
    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onSingleTapUp(I)V

    .line 222
    :cond_2
    :goto_1
    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_3
    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public actionLongPress(I)Z
    .locals 3

    .line 80
    iput p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mStartIndex:I

    .line 81
    iput p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mPreIndex:I

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mInSelectedRegion:Z

    .line 83
    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 84
    iget-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    iget v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mStartIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    iget v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mStartIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    iput-boolean v2, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mInSelectedRegion:Z

    .line 90
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    if-eqz p1, :cond_2

    iget v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mStartIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public actionMove(Landroid/view/MotionEvent;I)Z
    .locals 3

    .line 233
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotMaxIndexByPosition(FF)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 234
    iget v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mPreIndex:I

    if-eq v0, v1, :cond_0

    .line 235
    iget v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mStartIndex:I

    invoke-direct {p0, v1, v0}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->getCurrentSelected(II)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;

    .line 236
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->getChangedIndex()Ljava/util/Set;

    move-result-object v0

    .line 238
    invoke-direct {p0, v0}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->toggleChangedIndex(Ljava/util/Set;)V

    .line 241
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p2, p1}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->movePage(IF)V

    .line 242
    iget p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrentIndex:I

    iput p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mPreIndex:I

    const/4 p1, 0x1

    return p1
.end method

.method public actionSelectCluster(I)V
    .locals 5

    .line 106
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    instance-of v1, v0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_0
    instance-of v1, v0, Lcn/nubia/gallery3d/ui/layout/LocationLayout;

    if-eqz v1, :cond_1

    .line 109
    check-cast v0, Lcn/nubia/gallery3d/ui/layout/LocationLayout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/LocationLayout;->getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    instance-of v1, v0, Lcn/nubia/gallery3d/ui/layout/AlbumLayout;

    if-eqz v1, :cond_2

    .line 111
    check-cast v0, Lcn/nubia/gallery3d/ui/layout/AlbumLayout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/AlbumLayout;->getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_3

    .line 117
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    .line 118
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getStartIndex()I

    move-result v0

    .line 119
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->size()I

    move-result v1

    .line 121
    iget-object v2, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->getInverseSelection()Z

    move-result v2

    iget-object v3, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getIndexSet()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->isClusterSelected(Ljava/util/HashSet;)Z

    move-result p1

    xor-int/2addr p1, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 122
    iget-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {p1, v0, v1}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onUnSelectCluster(II)V

    :goto_1
    if-ge v2, v1, :cond_7

    .line 124
    iget-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    add-int v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 125
    iget-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    :cond_5
    iget-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {p1, v0, v1}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onSelectCluster(II)V

    :goto_2
    if-ge v2, v1, :cond_7

    .line 131
    iget-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    add-int v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 132
    iget-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    :goto_3
    const-string p1, "multiselect"

    const-string v0, "actionSelectCluster return because of clusters == null"

    .line 114
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public actionSinpleTap(I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public actionUp()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 51
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mInSelectedRegion:Z

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    iget-object v1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 57
    :goto_0
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 58
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public resetCache()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 64
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mCurrSelectedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 65
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public selectAll()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 72
    iget-object v2, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mTotalSelectedSet:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLayout(Lcn/nubia/gallery3d/ui/layout/Layout;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    return-void
.end method

.method public setListener(Lcn/nubia/gallery3d/ui/SlotView$Listener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    return-void
.end method

.method public setSelectionManager(Lcn/nubia/gallery3d/ui/SelectionManager;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    return-void
.end method
