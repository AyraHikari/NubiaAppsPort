.class public Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;
.super Landroid/widget/FrameLayout;
.source "StickyHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;,
        Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StickyHeaderListView"


# instance fields
.field protected mAdapter:Landroid/widget/Adapter;

.field protected mChildViewsCreated:Z

.field protected mContext:Landroid/content/Context;

.field protected mCurrentSectionPos:I

.field protected mDoHeaderReset:Z

.field protected mDummyHeader:Landroid/view/View;

.field protected mHeaderHeightListener:Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;

.field protected mIndexer:Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;

.field private mLastStickyHeaderHeight:I

.field protected mListView:Landroid/widget/ListView;

.field protected mListViewHeadersCount:I

.field protected mListener:Landroid/widget/AbsListView$OnScrollListener;

.field protected mNextSectionPosition:I

.field private mSeparatorView:Landroid/view/View;

.field private mSeparatorWidth:I

.field protected mStickyHeader:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-boolean v1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mChildViewsCreated:Z

    .line 54
    iput-boolean v1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mDoHeaderReset:Z

    .line 56
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mContext:Landroid/content/Context;

    .line 57
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mAdapter:Landroid/widget/Adapter;

    .line 58
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mIndexer:Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;

    .line 59
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mHeaderHeightListener:Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;

    .line 60
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    .line 61
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    .line 63
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    .line 64
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 68
    iput v1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mLastStickyHeaderHeight:I

    .line 74
    iput v2, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mCurrentSectionPos:I

    .line 77
    iput v2, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mNextSectionPosition:I

    .line 79
    iput v1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListViewHeadersCount:I

    .line 216
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mContext:Landroid/content/Context;

    .line 220
    return-void
.end method

.method private setChildViews()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 408
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->getChildCount()I

    move-result v1

    .line 409
    .local v1, "iChildNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 410
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 411
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/ListView;

    if-eqz v4, :cond_0

    .line 412
    check-cast v3, Landroid/widget/ListView;

    .end local v3    # "v":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setListView(Landroid/widget/ListView;)V

    .line 409
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    if-nez v4, :cond_2

    .line 418
    new-instance v4, Landroid/widget/ListView;

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setListView(Landroid/widget/ListView;)V

    .line 422
    :cond_2
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    .line 423
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x30

    invoke-direct {v2, v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 425
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 428
    iput-boolean v6, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mChildViewsCreated:Z

    .line 429
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 392
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mChildViewsCreated:Z

    if-nez v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setChildViews()V

    .line 395
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mDoHeaderReset:Z

    .line 396
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 382
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 383
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mChildViewsCreated:Z

    if-nez v0, :cond_0

    .line 384
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setChildViews()V

    .line 386
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mDoHeaderReset:Z

    .line 387
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 253
    invoke-virtual {p0, p2}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->updateStickyHeader(I)V

    .line 255
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 259
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 235
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mAdapter:Landroid/widget/Adapter;

    .line 152
    :cond_0
    return-void
.end method

.method public setHeaderHeightListener(Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;

    .prologue
    .line 192
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mHeaderHeightListener:Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;

    .line 193
    return-void
.end method

.method public setHeaderSeparator(II)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "width"    # I

    .prologue
    .line 271
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    .line 272
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x30

    invoke-direct {v0, v1, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 274
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 276
    iput p2, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorWidth:I

    .line 277
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->addView(Landroid/view/View;)V

    .line 278
    return-void
.end method

.method public setIndexer(Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;)V
    .locals 0
    .param p1, "indexer"    # Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;

    .prologue
    .line 162
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mIndexer:Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;

    .line 163
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "lv"    # Landroid/widget/ListView;

    .prologue
    .line 173
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    .line 174
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 175
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListViewHeadersCount:I

    .line 176
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 189
    return-void
.end method

.method protected updateStickyHeader(I)V
    .locals 13
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 283
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mAdapter:Landroid/widget/Adapter;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    if-eqz v9, :cond_0

    .line 284
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 287
    :cond_0
    iget v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListViewHeadersCount:I

    sub-int/2addr p1, v9

    .line 288
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mIndexer:Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mDoHeaderReset:Z

    if-eqz v9, :cond_7

    .line 291
    const/4 v6, 0x0

    .line 292
    .local v6, "sectionSize":I
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mIndexer:Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;

    .line 293
    invoke-interface {v9, p1}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;->getHeaderPositionFromItemPosition(I)I

    move-result v5

    .line 296
    .local v5, "sectionPos":I
    const/4 v2, 0x0

    .line 297
    .local v2, "newView":Z
    iget v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mCurrentSectionPos:I

    if-eq v5, v9, :cond_2

    .line 301
    const/4 v9, -0x1

    if-ne v5, v9, :cond_8

    .line 302
    const/4 v6, 0x0

    .line 303
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->removeView(Landroid/view/View;)V

    .line 304
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    iput-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    .line 305
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    if-eqz v9, :cond_1

    .line 306
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_1
    const/4 v2, 0x1

    .line 321
    :goto_0
    iput v5, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mCurrentSectionPos:I

    .line 322
    add-int v9, v6, v5

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mNextSectionPosition:I

    .line 329
    :cond_2
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    if-eqz v9, :cond_7

    .line 330
    iget v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mNextSectionPosition:I

    sub-int/2addr v9, p1

    add-int/lit8 v4, v9, -0x1

    .line 332
    .local v4, "sectionLastItemPosition":I
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 333
    .local v7, "stickyHeaderHeight":I
    if-nez v7, :cond_3

    .line 334
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 338
    :cond_3
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mHeaderHeightListener:Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;

    if-eqz v9, :cond_4

    iget v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mLastStickyHeaderHeight:I

    if-eq v9, v7, :cond_4

    .line 340
    iput v7, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mLastStickyHeaderHeight:I

    .line 341
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mHeaderHeightListener:Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;

    .line 342
    invoke-interface {v9, v7}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;->OnHeaderHeightChanged(I)V

    .line 345
    :cond_4
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    .line 346
    invoke-virtual {v9, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 347
    .local v0, "SectionLastView":Landroid/view/View;
    if-eqz v0, :cond_9

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-gt v9, v7, :cond_9

    .line 349
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 350
    .local v1, "lastViewBottom":I
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    sub-int v10, v1, v7

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 352
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    if-eqz v9, :cond_5

    .line 353
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 362
    .end local v1    # "lastViewBottom":I
    :cond_5
    :goto_1
    if-eqz v2, :cond_7

    .line 363
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->addView(Landroid/view/View;)V

    .line 365
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    iget-object v10, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    .line 366
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 367
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    iget v10, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorWidth:I

    invoke-direct {v3, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 369
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v9, 0x0

    iget-object v10, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 371
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 374
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .end local v0    # "SectionLastView":Landroid/view/View;
    .end local v2    # "newView":Z
    .end local v4    # "sectionLastItemPosition":I
    .end local v5    # "sectionPos":I
    .end local v6    # "sectionSize":I
    .end local v7    # "stickyHeaderHeight":I
    :cond_7
    return-void

    .line 311
    .restart local v2    # "newView":Z
    .restart local v5    # "sectionPos":I
    .restart local v6    # "sectionSize":I
    :cond_8
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mIndexer:Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;

    invoke-interface {v9, v5}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;->getHeaderItemsNumber(I)I

    move-result v6

    .line 312
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mAdapter:Landroid/widget/Adapter;

    iget v10, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListViewHeadersCount:I

    add-int/2addr v10, v5

    const/4 v11, 0x0

    iget-object v12, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    invoke-interface {v9, v10, v11, v12}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 314
    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getWidth()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v10, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mListView:Landroid/widget/ListView;

    .line 316
    invoke-virtual {v10}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    const/high16 v11, -0x80000000

    .line 315
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 314
    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 317
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->removeView(Landroid/view/View;)V

    .line 318
    iput-object v8, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    .line 319
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 355
    .end local v8    # "v":Landroid/view/View;
    .restart local v0    # "SectionLastView":Landroid/view/View;
    .restart local v4    # "sectionLastItemPosition":I
    .restart local v7    # "stickyHeaderHeight":I
    :cond_9
    if-eqz v7, :cond_5

    .line 356
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 357
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mStickyHeader:Landroid/view/View;

    iget-object v10, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mDummyHeader:Landroid/view/View;

    .line 358
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 359
    iget-object v9, p0, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->mSeparatorView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method
