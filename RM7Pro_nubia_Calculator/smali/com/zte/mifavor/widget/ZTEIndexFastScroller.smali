.class public Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
.super Ljava/lang/Object;
.source "ZTEIndexFastScroller.java"


# static fields
.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_HIDING:I = 0x3

.field private static final STATE_SHOWING:I = 0x1

.field private static final STATE_SHOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ZTEIndexFastScroller"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private indexPaint:Landroid/graphics/Paint;

.field private indexbarPaint:Landroid/graphics/Paint;

.field private isStopedScroll:Z

.field private layoutDirection:I

.field private locale:Ljava/util/Locale;

.field private mAdapter:Landroid/widget/Adapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentSection:I

.field private mDensity:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field public mIndexBarTopMargin:F

.field private mIndexbarMargin:F

.field private mIndexbarRect:Landroid/graphics/RectF;

.field private mIndexbarWidth:F

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mIsIndexing:Z

.field private mIsScrolling:Z

.field private mIsShowPreview:Z

.field private mIsTouchIndexOnce:Z

.field private mListView:Landroid/widget/ListView;

.field private mListViewHeight:I

.field private mListViewWidth:I

.field private mPreviewPadding:F

.field private mScaledDensity:F

.field private mScrollerBarTextColor:I

.field private mSections:[Ljava/lang/String;

.field public mShowPreviewNotOnScrollBar:Z

.field public mShowScrollerBar:Z

.field public mState:I

.field private mToastTextDisPlay:Z

.field private mTouchPadding:I

.field private mTouchScroller:Z

.field private previewPaint:Landroid/graphics/Paint;

.field private previewTextPaint:Landroid/graphics/Paint;

.field scrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 6

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowScrollerBar:Z

    .line 41
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowPreviewNotOnScrollBar:Z

    const/4 v2, 0x0

    .line 42
    iput v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    const/4 v3, -0x1

    .line 51
    iput v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 52
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 53
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsTouchIndexOnce:Z

    .line 55
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    const/4 v4, 0x0

    .line 56
    iput-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    .line 57
    iput-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    .line 58
    iput-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    .line 61
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    .line 62
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z

    .line 63
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 65
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mToastTextDisPlay:Z

    const v5, -0x686869

    .line 67
    iput v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScrollerBarTextColor:I

    .line 68
    iput-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    .line 69
    iput-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mGestureDetector:Landroid/view/GestureDetector;

    .line 72
    iput-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 73
    iput-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->bitmap:Landroid/graphics/Bitmap;

    .line 74
    iput-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexbarPaint:Landroid/graphics/Paint;

    .line 75
    iput-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    .line 76
    iput-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewPaint:Landroid/graphics/Paint;

    .line 77
    iput-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v4, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;

    invoke-direct {v4, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;-><init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V

    iput-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v4, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;

    invoke-direct {v4, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;-><init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V

    iput-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 168
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScaledDensity:F

    .line 171
    iput-object p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    .line 172
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setAdapter(Landroid/widget/Adapter;)V

    .line 174
    iget p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr p1, v4

    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarWidth:F

    .line 175
    iget p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr p1, v2

    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    .line 176
    iget p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr p1, v4

    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    .line 178
    iget p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    iget v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr p1, v5

    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    .line 179
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 181
    new-instance p1, Landroid/graphics/RectF;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v2, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    .line 184
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zte/extres/R$drawable;->fastscroll_label_zte_light:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 185
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->bitmap:Landroid/graphics/Bitmap;

    .line 187
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexbarPaint:Landroid/graphics/Paint;

    .line 188
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexbarPaint:Landroid/graphics/Paint;

    const p2, 0x999999

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexbarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 190
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexbarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    .line 193
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScaledDensity:F

    mul-float/2addr p2, v4

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewPaint:Landroid/graphics/Paint;

    .line 197
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    .line 200
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 202
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    const/high16 v0, 0x42340000    # 45.0f

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 204
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zte/extres/R$color;->mfv_common_index_letter:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScrollerBarTextColor:I

    .line 206
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchPadding:I

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    return p0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    return p1
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByListPos(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z

    return p0
.end method

.method static synthetic access$502(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z

    return p1
.end method

.method static synthetic access$600(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    return p0
.end method

.method static synthetic access$602(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$700(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;J)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->fade(J)V

    return-void
.end method

.method static synthetic access$802(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    return p1
.end method

.method private contains(FF)Z
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v0, v2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    goto :goto_1

    .line 502
    :cond_0
    iget p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->layoutDirection:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 503
    iget-boolean p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowScrollerBar:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    .line 504
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    goto :goto_0

    .line 506
    :cond_1
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    goto :goto_0

    .line 510
    :cond_2
    iget-boolean p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowScrollerBar:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    .line 511
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    const-string p0, "wyt"

    const-string p1, "contains=true"

    .line 512
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "wyt"

    const-string p2, "contains=false"

    .line 514
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private fade(J)V
    .locals 4

    .line 549
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method private getItemTextThumbs(I)Ljava/lang/String;
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 211
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    return-object v1
.end method

.method private getListIndexInCenter()I
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p0

    sub-int/2addr v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private getSectionByListPos(I)I
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {p0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getSectionByPoint(F)I
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    add-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    return v1

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 528
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length p0, p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-int p0, p1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private setState(I)V
    .locals 2

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 470
    :cond_0
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    const-string p1, "ZTEIndexFastScroller"

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, 0x1f4

    .line 490
    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->fade(J)V

    goto :goto_0

    .line 485
    :pswitch_1
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x0

    .line 481
    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->fade(J)V

    goto :goto_0

    .line 475
    :pswitch_3
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkSectionExistContacts(I)Z
    .locals 6

    .line 328
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 333
    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v2, :cond_1

    if-eq v2, v3, :cond_1

    const-string p0, "ZTEIndexFastScroller"

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSectionExistContacts true, section = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentSectionPos = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", nextSectionPos = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-ne v2, v3, :cond_2

    .line 339
    iget-object v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    add-int/2addr v0, v4

    invoke-interface {v3, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    if-ne p1, v3, :cond_2

    const-string v1, "ZTEIndexFastScroller"

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSectionExistContacts true, nextSectionPos = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIndexer.getSectionForPosition(currentSectionPos+1) = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {p0, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", section = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    const-string p0, "ZTEIndexFastScroller"

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSectionExistContacts false, section = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 218
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->locale:Ljava/util/Locale;

    .line 219
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->layoutDirection:I

    .line 220
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowScrollerBar:Z

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexbarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 231
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 232
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v1, v3

    sub-float v1, v0, v1

    div-float/2addr v1, v2

    const/4 v3, 0x0

    .line 233
    :goto_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 234
    iget v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    if-ne v3, v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$color;->mfv_common_index_letter_fc:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 237
    :cond_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScrollerBarTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    :goto_1
    iget v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarWidth:F

    iget-object v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v2

    .line 240
    iget v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->layoutDirection:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 241
    iget-object v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v4

    iget v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchPadding:I

    int-to-float v4, v4

    add-float/2addr v6, v4

    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    add-float/2addr v4, v7

    int-to-float v7, v3

    mul-float/2addr v7, v0

    add-float/2addr v4, v7

    add-float/2addr v4, v1

    iget-object v7, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    .line 242
    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    sub-float/2addr v4, v7

    iget-object v7, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    .line 241
    invoke-virtual {p1, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 244
    :cond_1
    iget-object v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    add-float/2addr v6, v7

    int-to-float v7, v3

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    .line 245
    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    .line 244
    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    :cond_2
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 258
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewWidth:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v2

    iget v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewHeight:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    div-float/2addr v4, v2

    iget v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewWidth:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    div-float/2addr v5, v2

    add-float/2addr v5, v0

    iget v6, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewHeight:I

    int-to-float v6, v6

    sub-float/2addr v6, v0

    div-float/2addr v6, v2

    add-float/2addr v6, v0

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 275
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getListIndexInCenter()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getItemTextThumbs(I)Ljava/lang/String;

    move-result-object v3

    .line 276
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mToastTextDisPlay:Z

    if-eqz v4, :cond_5

    .line 277
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_3

    .line 278
    iget v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    if-ltz v3, :cond_5

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    if-eqz v3, :cond_5

    .line 279
    iget-object v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    iget v7, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 282
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->bitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 283
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    iget v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    aget-object v4, v4, v5

    iget v5, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    add-float/2addr v5, v0

    sub-float/2addr v5, v6

    iget v0, v1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    .line 284
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v6

    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    .line 283
    invoke-virtual {p1, v4, v5, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 291
    :cond_3
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    if-eqz v4, :cond_5

    :cond_4
    if-eqz v3, :cond_5

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowPreviewNotOnScrollBar:Z

    if-eqz v4, :cond_5

    .line 294
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 297
    iget-object v7, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->bitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 298
    iget v5, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v4

    div-float/2addr v0, v2

    add-float/2addr v5, v0

    sub-float/2addr v5, v6

    iget v0, v1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    .line 299
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v6

    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    .line 298
    invoke-virtual {p1, v3, v5, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public getCurrentSection(FF)I
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 557
    :cond_0
    iget p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    return p0
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public invalidTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->contains(FF)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 311
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    const-string v0, "ZTEIndexFastScroller"

    const-string v3, "onInvalidTouchEvent MotionEvent.ACTION_UP"

    .line 313
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 315
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    const/4 v0, 0x3

    .line 316
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    .line 318
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByPoint(F)I

    move-result p1

    .line 319
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->checkSectionExistContacts(I)Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    .line 430
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewWidth:I

    .line 431
    iput p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewHeight:I

    .line 432
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    iput-object p3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->locale:Ljava/util/Locale;

    .line 433
    iget-object p3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->locale:Ljava/util/Locale;

    invoke-static {p3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->layoutDirection:I

    .line 434
    iget p3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->layoutDirection:I

    const/4 p4, 0x1

    if-eq p3, p4, :cond_0

    .line 435
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    iget p4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float p4, p1, p4

    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarWidth:F

    sub-float/2addr p4, v0

    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchPadding:I

    int-to-float v0, v0

    sub-float/2addr p4, v0

    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr p1, v1

    int-to-float p2, p2

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr p2, v1

    invoke-direct {p3, p4, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    goto :goto_0

    .line 440
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    iget p3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    iget p4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    add-float/2addr p4, v0

    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarWidth:F

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p2, p2

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr p2, v1

    invoke-direct {p1, p3, p4, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "ZTEIndexFastScroller"

    const-string v0, "gengbin,onTouchEvent():MotionEvent.ACTION_CANCEL"

    .line 416
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 418
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 419
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsTouchIndexOnce:Z

    .line 420
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    goto/16 :goto_1

    .line 378
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsTouchIndexOnce:Z

    if-eqz v0, :cond_0

    .line 380
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByPoint(F)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 382
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz p1, :cond_1

    .line 383
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    iget p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    invoke-interface {v0, p0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 386
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;-><init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mGestureDetector:Landroid/view/GestureDetector;

    .line 400
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    const-string p0, "ZTEIndexFastScroller"

    const-string p1, "gengbin,onTouchEvent():MotionEvent.ACTION_MOVE"

    .line 403
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 406
    :pswitch_2
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 407
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 408
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsTouchIndexOnce:Z

    .line 409
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    .line 410
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const-string p0, "ZTEIndexFastScroller"

    const-string p1, "gengbin,onTouchEvent():MotionEvent.ACTION_UP"

    .line 413
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 353
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 356
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 359
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-eqz v0, :cond_4

    .line 360
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsTouchIndexOnce:Z

    .line 361
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByPoint(F)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 363
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz p1, :cond_3

    .line 364
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    iget p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    invoke-interface {v0, p0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_3
    const-string p0, "ZTEIndexFastScroller"

    const-string p1, "gengbin,onTouchEvent():MotionEvent.ACTION_DOWN mTouchScroller=true"

    .line 366
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 369
    :cond_4
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 370
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsTouchIndexOnce:Z

    .line 371
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByListPos(I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    const-string p0, "ZTEIndexFastScroller"

    const-string p1, "gengbin,onTouchEvent():MotionEvent.ACTION_DOWN mTouchScroller=false1"

    .line 372
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string p0, "ZTEIndexFastScroller"

    const-string p1, "gengbin,onTouchEvent():MotionEvent.ACTION_DOWN mTouchScroller=false2"

    .line 375
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string p0, "ZTEIndexFastScroller"

    const-string p1, "gengbin,onTouchEvent():nocase"

    .line 425
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1

    .line 459
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 460
    move-object v0, p1

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    .line 461
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    .line 462
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 450
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 451
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    :cond_0
    return-void
.end method
