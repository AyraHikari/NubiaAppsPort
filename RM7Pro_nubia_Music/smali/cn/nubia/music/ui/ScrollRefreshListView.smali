.class public Lcn/nubia/music/ui/ScrollRefreshListView;
.super Landroid/widget/ListView;
.source "ScrollRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/ui/ScrollRefreshListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final DONE:I = 0x3

.field private static final LAST_LOADED:I = 0x5

.field private static final LOADING:I = 0x4

.field private static final PULL_To_REFRESH:I = 0x1

.field private static final RATIO:I = 0x3

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_To_REFRESH:I


# instance fields
.field private animation:Landroid/view/animation/RotateAnimation;

.field private arrowImageView:Landroid/widget/ImageView;

.field private footerView:Landroid/widget/LinearLayout;

.field private headContentHeight:I

.field private headContentWidth:I

.field private inflater:Landroid/view/LayoutInflater;

.field private isBack:Z

.field private isRecored:Z

.field private isRefreshable:Z

.field private lastVisibleItemIndex:I

.field private mCanLoadMore:Z

.field private mFooterviewsCount:I

.field private mHeaderviewsCount:I

.field private mLine:Landroid/view/View;

.field private mNoMoreData:Ljava/lang/String;

.field private mPullToRefresh:Ljava/lang/String;

.field private mRefreshing:Ljava/lang/String;

.field private mReleaseToRefresh:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private refreshListener:Lcn/nubia/music/ui/ScrollRefreshListView$OnRefreshListener;

.field private reverseAnimation:Landroid/view/animation/RotateAnimation;

.field private startY:I

.field private state:I

.field private tipsTextview:Landroid/widget/TextView;

.field private totalCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 60
    iput v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mHeaderviewsCount:I

    .line 61
    iput v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mFooterviewsCount:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mNoMoreData:Ljava/lang/String;

    .line 141
    iput-boolean v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mCanLoadMore:Z

    .line 67
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/ScrollRefreshListView;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mHeaderviewsCount:I

    .line 61
    iput v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mFooterviewsCount:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mNoMoreData:Ljava/lang/String;

    .line 141
    iput-boolean v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mCanLoadMore:Z

    .line 72
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/ScrollRefreshListView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 5

    .prologue
    const v4, 0x7f0202a3

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 276
    iget v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    packed-switch v0, :pswitch_data_0

    .line 348
    :goto_0
    :pswitch_0
    return-void

    .line 278
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 279
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 286
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 288
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mReleaseToRefresh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 294
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 298
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-boolean v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isBack:Z

    if-eqz v0, :cond_0

    .line 301
    iput-boolean v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isBack:Z

    .line 302
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 303
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 304
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mPullToRefresh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mPullToRefresh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :pswitch_3
    const-string v0, "REFRESHING..."

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 317
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 319
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mRefreshing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 326
    :pswitch_4
    const-string v0, "DONE"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 329
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 330
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 332
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mPullToRefresh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 338
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 339
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 342
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mNoMoreData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/4 v3, 0x1

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->inflater:Landroid/view/LayoutInflater;

    .line 78
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030030

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    .line 80
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    const v5, 0x7f1000b3

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x46

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 82
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 84
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    const v5, 0x7f1000b4

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    .line 86
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    const v5, 0x7f1000b5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->tipsTextview:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    const v5, 0x7f1000b0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mLine:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/nubia/music/ui/ScrollRefreshListView;->measureView(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->headContentHeight:I

    .line 92
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->headContentWidth:I

    .line 94
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    iget v5, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->headContentHeight:I

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v12, v5, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 95
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->headContentWidth:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " height:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->headContentHeight:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v12}, Lcn/nubia/music/ui/ScrollRefreshListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 100
    invoke-virtual {p0, p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 102
    const v0, 0x7f0b00d9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mReleaseToRefresh:Ljava/lang/String;

    .line 103
    const v0, 0x7f0b00d1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mPullToRefresh:Ljava/lang/String;

    .line 104
    const v0, 0x7f0b00d8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mRefreshing:Ljava/lang/String;

    .line 108
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    .line 110
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 111
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 112
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 114
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    .line 116
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 117
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 118
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 120
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    .line 121
    iput-boolean v12, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isRefreshable:Z

    .line 123
    invoke-virtual {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mHeaderviewsCount:I

    .line 124
    invoke-virtual {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->getFooterViewsCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mFooterviewsCount:I

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHeaderviewsCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mHeaderviewsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFooterviewsCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mFooterviewsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 127
    const v0, 0x7f0b00ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mNoMoreData:Ljava/lang/String;

    .line 128
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 386
    if-nez v0, :cond_0

    .line 388
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 392
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 393
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 396
    if-lez v0, :cond_1

    .line 397
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 402
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 403
    return-void

    .line 399
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->refreshListener:Lcn/nubia/music/ui/ScrollRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->refreshListener:Lcn/nubia/music/ui/ScrollRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcn/nubia/music/ui/ScrollRefreshListView$OnRefreshListener;->onRefresh()V

    .line 382
    :cond_0
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/ListView;->onGlobalLayout()V

    .line 139
    return-void
.end method

.method public onRefreshComplete()V
    .locals 1

    .prologue
    .line 364
    const-string v0, "onRefreshComplete"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    .line 370
    invoke-direct {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->changeHeaderViewByState()V

    .line 371
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    if-nez p1, :cond_1

    .line 146
    const-string v0, "onScroll view == null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mHeaderviewsCount:I

    .line 150
    add-int v0, p2, p3

    iget v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mHeaderviewsCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mFooterviewsCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->lastVisibleItemIndex:I

    .line 152
    iget v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mHeaderviewsCount:I

    sub-int v0, p4, v0

    iget v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mFooterviewsCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->totalCount:I

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScroll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScroll childCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 156
    iget v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->totalCount:I

    if-lez v0, :cond_0

    .line 157
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->totalCount:I

    mul-int/2addr v0, v1

    .line 160
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mCanLoadMore:Z

    goto :goto_0

    .line 163
    :cond_2
    iput-boolean v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mCanLoadMore:Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 173
    invoke-virtual {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 272
    :goto_0
    return v0

    .line 176
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isRefreshable:Z

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 272
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 179
    :pswitch_0
    iget v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->lastVisibleItemIndex:I

    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->totalCount:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isRecored:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mCanLoadMore:Z

    if-eqz v1, :cond_1

    .line 180
    iput-boolean v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isRecored:Z

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->startY:I

    goto :goto_1

    .line 186
    :pswitch_1
    iget v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    if-eq v1, v6, :cond_4

    iget v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    if-eq v1, v7, :cond_4

    .line 187
    iget v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    if-ne v1, v5, :cond_2

    .line 190
    :cond_2
    iget v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    if-ne v1, v0, :cond_3

    .line 191
    iput v5, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    .line 192
    invoke-direct {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->changeHeaderViewByState()V

    .line 195
    :cond_3
    iget v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    if-nez v0, :cond_4

    .line 196
    iput v6, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    .line 197
    invoke-direct {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->changeHeaderViewByState()V

    .line 198
    invoke-direct {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->refresh()V

    .line 202
    :cond_4
    iput-boolean v4, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isRecored:Z

    .line 203
    iput-boolean v4, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isBack:Z

    goto :goto_1

    .line 207
    :pswitch_2
    iget-boolean v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->mCanLoadMore:Z

    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 212
    iget-boolean v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isRecored:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->lastVisibleItemIndex:I

    iget v3, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->totalCount:I

    if-gt v2, v3, :cond_5

    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->lastVisibleItemIndex:I

    iget v3, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->totalCount:I

    if-ne v2, v3, :cond_5

    .line 214
    iput-boolean v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isRecored:Z

    .line 215
    iput v1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->startY:I

    .line 218
    :cond_5
    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    if-eq v2, v6, :cond_1

    iget-boolean v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isRecored:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    if-eq v2, v7, :cond_1

    .line 219
    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    if-nez v2, :cond_6

    .line 220
    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->lastVisibleItemIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcn/nubia/music/ui/ScrollRefreshListView;->setSelection(I)V

    .line 222
    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->startY:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->headContentHeight:I

    if-ge v2, v3, :cond_a

    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->startY:I

    sub-int/2addr v2, v1

    if-lez v2, :cond_a

    .line 224
    iput v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    .line 225
    invoke-direct {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->changeHeaderViewByState()V

    .line 236
    :cond_6
    :goto_2
    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    if-ne v2, v0, :cond_7

    .line 237
    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->lastVisibleItemIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcn/nubia/music/ui/ScrollRefreshListView;->setSelection(I)V

    .line 239
    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->startY:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->headContentHeight:I

    if-lt v2, v3, :cond_c

    .line 240
    iput v4, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    .line 241
    iput-boolean v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isBack:Z

    .line 242
    invoke-direct {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->changeHeaderViewByState()V

    .line 254
    :cond_7
    :goto_3
    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    if-ne v2, v5, :cond_8

    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->startY:I

    sub-int/2addr v2, v1

    if-lez v2, :cond_8

    .line 255
    iput v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    .line 256
    invoke-direct {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->changeHeaderViewByState()V

    .line 259
    :cond_8
    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    if-ne v2, v0, :cond_9

    .line 260
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->headContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->startY:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 264
    :cond_9
    iget v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->footerView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->startY:I

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->headContentHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_1

    .line 228
    :cond_a
    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->startY:I

    sub-int/2addr v2, v1

    if-gtz v2, :cond_b

    .line 229
    iput v5, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    .line 230
    invoke-direct {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->changeHeaderViewByState()V

    goto :goto_2

    .line 232
    :cond_b
    const-string v2, "ACTION_MOVE 12"

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 245
    :cond_c
    iget v2, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->startY:I

    sub-int/2addr v2, v1

    if-gtz v2, :cond_7

    .line 246
    iput v5, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    .line 247
    invoke-direct {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->changeHeaderViewByState()V

    goto :goto_3

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshLastLine()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x5

    iput v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->state:I

    .line 375
    invoke-direct {p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->changeHeaderViewByState()V

    .line 376
    return-void
.end method

.method public setOnRefreshListener(Lcn/nubia/music/ui/ScrollRefreshListView$OnRefreshListener;)V
    .locals 1

    .prologue
    .line 351
    iput-object p1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->refreshListener:Lcn/nubia/music/ui/ScrollRefreshListView$OnRefreshListener;

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isRefreshable:Z

    .line 353
    return-void
.end method

.method public setRefreshListener(Z)V
    .locals 0

    .prologue
    .line 356
    iput-boolean p1, p0, Lcn/nubia/music/ui/ScrollRefreshListView;->isRefreshable:Z

    .line 357
    return-void
.end method
