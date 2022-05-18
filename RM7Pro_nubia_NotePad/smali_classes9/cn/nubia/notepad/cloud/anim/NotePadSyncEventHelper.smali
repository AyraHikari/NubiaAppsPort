.class public Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;
.super Ljava/lang/Object;
.source "NotePadSyncEventHelper.java"

# interfaces
.implements Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;
    }
.end annotation


# static fields
.field private static final DRAG_STATE_DRAGGING:I = 0x2

.field private static final DRAG_STATE_FLING:I = 0x3

.field private static final DRAG_STATE_IDLE:I = 0x1

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NoteBookEventHelper"

.field private static final VIEW_SHIFT:I = 0x2e


# instance fields
.field private mActivePointerId:I

.field private mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

.field private mBackGroundView:Landroid/view/View;

.field private mCanDragToSynchronization:Z

.field private mConditionHeight:F

.field private mDensity:F

.field private mDragState:I

.field private mFooterView:Landroid/view/View;

.field private mHeadView:Landroid/view/View;

.field private mIsBeingDragged:Z

.field private mIsLoading:Z

.field private mIsStackFromTop:Z

.field private mLastMotionY:F

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;

.field private mMaxTranslationHeight:F

.field private mTotalShift:F

.field private mTouchSlop:F

.field private mTranslationY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/ListView;
    .param p3, "headView"    # Landroid/view/View;
    .param p4, "footerView"    # Landroid/view/View;
    .param p5, "backgroundView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mActivePointerId:I

    .line 31
    const/high16 v0, 0x44480000    # 800.0f

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mMaxTranslationHeight:F

    .line 471
    iput-boolean v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mCanDragToSynchronization:Z

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    .line 47
    const/high16 v0, 0x40c00000    # 6.0f

    iget v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTouchSlop:F

    .line 48
    iput-object p2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    .line 49
    iput-object p3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mHeadView:Landroid/view/View;

    .line 50
    iput-object p4, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mFooterView:Landroid/view/View;

    .line 51
    iput-object p5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mBackGroundView:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isStackFromBottom()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsStackFromTop:Z

    .line 53
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsStackFromTop:Z

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mHeadView:Landroid/view/View;

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    .line 58
    :goto_1
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->setBackAnimationListener(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;)V

    .line 59
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->processViewVisible()V

    .line 61
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    iget-object v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mFooterView:Landroid/view/View;

    invoke-direct {v0, p1, v2, v1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    goto :goto_1
.end method

.method private doDragForFooter(F)V
    .locals 3
    .param p1, "delay"    # F

    .prologue
    const/4 v2, 0x0

    .line 325
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    .line 326
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 327
    iput v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    .line 329
    :cond_0
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mConditionHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    .line 330
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    .line 332
    :cond_1
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mMaxTranslationHeight:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 333
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mMaxTranslationHeight:F

    neg-float v0, v0

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    .line 335
    :cond_2
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mFooterView:Landroid/view/View;

    const/high16 v1, 0x42380000    # 46.0f

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 336
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 337
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mBackGroundView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 338
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->doFooterStateChanged()V

    .line 339
    return-void
.end method

.method private doDragForHeader(F)V
    .locals 3
    .param p1, "delay"    # F

    .prologue
    const/4 v2, 0x0

    .line 297
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    .line 298
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 299
    iput v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    .line 301
    :cond_0
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mConditionHeight:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    .line 302
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    .line 304
    :cond_1
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mMaxTranslationHeight:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 305
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mMaxTranslationHeight:F

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    .line 308
    :cond_2
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mHeadView:Landroid/view/View;

    const/high16 v1, -0x3dc80000    # -46.0f

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 309
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 310
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mBackGroundView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 311
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->doHeaderStateChanged()V

    .line 312
    return-void
.end method

.method private doDragForHeaderOrFooterView(F)V
    .locals 1
    .param p1, "delay"    # F

    .prologue
    .line 289
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsStackFromTop:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0, p1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->doDragForHeader(F)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->doDragForFooter(F)V

    goto :goto_0
.end method

.method private doEventUpForFooter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 369
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    .line 370
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->canResetState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iput v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    .line 372
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mHeadView:Landroid/view/View;

    const/high16 v1, 0x42380000    # 46.0f

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 373
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 374
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mBackGroundView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 375
    iput v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    .line 383
    :goto_0
    return-void

    .line 376
    :cond_0
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mConditionHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 377
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->processBackEventUp(FF)V

    goto :goto_0

    .line 378
    :cond_1
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mConditionHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    const/high16 v2, -0x3dc80000    # -46.0f

    iget v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->processBackLoadingEventUp(FF)V

    goto :goto_0

    .line 381
    :cond_2
    iput v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    goto :goto_0
.end method

.method private doEventUpForHeader()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 352
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    .line 353
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->canResetState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iput v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    .line 355
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mHeadView:Landroid/view/View;

    const/high16 v1, -0x3dc80000    # -46.0f

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 356
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 357
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mBackGroundView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 358
    iput v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    .line 366
    :goto_0
    return-void

    .line 359
    :cond_0
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mConditionHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->processBackEventUp(FF)V

    goto :goto_0

    .line 361
    :cond_1
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mConditionHeight:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    const/high16 v2, 0x42380000    # 46.0f

    iget v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->processBackLoadingEventUp(FF)V

    goto :goto_0

    .line 364
    :cond_2
    iput v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    goto :goto_0
.end method

.method private doEventUpForHeaderOrFooterView()V
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsStackFromTop:Z

    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->doEventUpForHeader()V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->doEventUpForFooter()V

    goto :goto_0
.end method

.method private doFooterStateChanged()V
    .locals 2

    .prologue
    .line 342
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mConditionHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->processDragState()V

    .line 346
    :cond_0
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mConditionHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->processDragStretchingState()V

    .line 349
    :cond_1
    return-void
.end method

.method private doHeaderStateChanged()V
    .locals 2

    .prologue
    .line 315
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mConditionHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->processDragState()V

    .line 319
    :cond_0
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mConditionHeight:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->processDragStretchingState()V

    .line 322
    :cond_1
    return-void
.end method

.method private isListViewReachBottomEdge()Z
    .locals 6

    .prologue
    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, "result":Z
    iget-object v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    .line 276
    :try_start_0
    iget-object v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    .line 277
    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 276
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, "bottomChildView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 279
    iget-object v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v3, v4, :cond_1

    const/4 v2, 0x1

    .line 285
    .end local v0    # "bottomChildView":Landroid/view/View;
    :cond_0
    :goto_0
    return v2

    .line 279
    .restart local v0    # "bottomChildView":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 281
    .end local v0    # "bottomChildView":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 282
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isListViewReachTopEdge()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, "result":Z
    iget-object v4, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    .line 261
    :try_start_0
    iget-object v4, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 262
    .local v2, "topChildView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {v2}, Landroid/view/View;->getTop()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 269
    .end local v2    # "topChildView":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .restart local v2    # "topChildView":Landroid/view/View;
    :cond_1
    move v1, v3

    .line 263
    goto :goto_0

    .line 265
    .end local v2    # "topChildView":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isPCondition()Z
    .locals 7

    .prologue
    const/16 v6, 0x1a

    const/high16 v5, 0x40c00000    # 6.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 109
    const-string v2, "NX616J"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_3

    .line 110
    :cond_0
    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTotalShift:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTouchSlop:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 117
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    const-string v2, "NX629J"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NX563J"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 112
    :cond_4
    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_5

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTotalShift:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTouchSlop:F

    div-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    .line 114
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v6, :cond_8

    .line 115
    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_7

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTotalShift:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTouchSlop:F

    div-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_7
    move v0, v1

    goto :goto_0

    .line 117
    :cond_8
    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 249
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 250
    .local v1, "pointerId":I
    iget v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 251
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 252
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mLastMotionY:F

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mActivePointerId:I

    .line 255
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 251
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processTouchSlop()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsStackFromTop:Z

    if-eqz v0, :cond_3

    .line 92
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->isListViewReachTopEdge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTotalShift:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTouchSlop:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 93
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->isPCondition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    :cond_1
    iput v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTotalShift:F

    .line 95
    iput-boolean v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsBeingDragged:Z

    .line 96
    iput v4, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    .line 106
    :cond_2
    :goto_0
    return-void

    .line 99
    :cond_3
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->isListViewReachBottomEdge()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTotalShift:F

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTouchSlop:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 100
    :cond_4
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->isPCondition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    :cond_5
    iput-boolean v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsBeingDragged:Z

    .line 102
    iput v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTotalShift:F

    .line 103
    iput v4, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    goto :goto_0
.end method

.method private processViewVisible()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    const/high16 v3, 0x42380000    # 46.0f

    const/high16 v2, -0x3dc80000    # -46.0f

    .line 66
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsStackFromTop:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mHeadView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 70
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mConditionHeight:F

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mFooterView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 75
    iget v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mConditionHeight:F

    goto :goto_0
.end method


# virtual methods
.method public animationEnd()V
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    .line 433
    return-void
.end method

.method public canLoadingData()V
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsLoading:Z

    .line 438
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListener:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListener:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;

    invoke-interface {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;->canLoadingData()V

    .line 440
    :cond_0
    return-void
.end method

.method public hideHeaderOrFooter()V
    .locals 3

    .prologue
    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsLoading:Z

    .line 462
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    .line 463
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    .line 464
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mHeadView:Landroid/view/View;

    const/high16 v1, -0x3dc80000    # -46.0f

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 465
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mFooterView:Landroid/view/View;

    const/high16 v1, 0x42380000    # 46.0f

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 466
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 467
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mBackGroundView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 468
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->reSetState()V

    .line 469
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 479
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListener:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListener:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;

    invoke-interface {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;->onHeadFooterClicked()V

    .line 482
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 126
    .local v0, "action":I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    iget-boolean v6, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsBeingDragged:Z

    if-nez v6, :cond_1

    :cond_0
    iget v6, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 175
    :cond_1
    :goto_0
    return v5

    .line 130
    :cond_2
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 175
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsBeingDragged:Z

    goto :goto_0

    .line 133
    :pswitch_1
    const/4 v5, 0x0

    iput v5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTotalShift:F

    .line 134
    iput-boolean v9, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsBeingDragged:Z

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mLastMotionY:F

    .line 136
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mActivePointerId:I

    goto :goto_1

    .line 141
    :pswitch_2
    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mActivePointerId:I

    .line 142
    .local v1, "activePointerId":I
    if-eq v1, v8, :cond_3

    .line 146
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 147
    .local v3, "pointerIndex":I
    if-ne v3, v8, :cond_4

    .line 148
    const-string v5, "NoteBookEventHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid pointerId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in onInterceptTouchEvent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 152
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mLastMotionY:F

    sub-float v4, v5, v6

    .line 153
    .local v4, "yDiff":F
    iget v5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTotalShift:F

    add-float/2addr v5, v4

    iput v5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTotalShift:F

    .line 154
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->processTouchSlop()V

    .line 155
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iput v5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mLastMotionY:F

    goto :goto_1

    .line 161
    .end local v1    # "activePointerId":I
    .end local v3    # "pointerIndex":I
    .end local v4    # "yDiff":F
    :pswitch_3
    iput-boolean v9, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsBeingDragged:Z

    .line 162
    iput v8, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mActivePointerId:I

    .line 163
    iput v5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    goto :goto_1

    .line 166
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 167
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iput v5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mLastMotionY:F

    .line 168
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mActivePointerId:I

    goto :goto_1

    .line 172
    .end local v2    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onScrollBackToLoadingUpdate(F)V
    .locals 4
    .param p1, "delay"    # F

    .prologue
    const/high16 v3, 0x42380000    # 46.0f

    .line 420
    iput p1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    .line 421
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 422
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mBackGroundView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 423
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsStackFromTop:Z

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mHeadView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mFooterView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public onScrollBackUpdate(F)V
    .locals 3
    .param p1, "delay"    # F

    .prologue
    .line 408
    iput p1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    .line 409
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 410
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mBackGroundView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 411
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsStackFromTop:Z

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mHeadView:Landroid/view/View;

    const/high16 v1, -0x3dc80000    # -46.0f

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mFooterView:Landroid/view/View;

    const/high16 v1, 0x42380000    # 46.0f

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDensity:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 179
    iget-boolean v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsLoading:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mCanDragToSynchronization:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 180
    :cond_0
    iget v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTranslationY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 181
    iput v6, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    .line 182
    iget-object v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-virtual {v3}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->canResetState()Z

    .line 243
    :cond_1
    :goto_0
    return v6

    .line 186
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 189
    :pswitch_1
    iput v4, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTotalShift:F

    .line 190
    iput-boolean v7, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsBeingDragged:Z

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mLastMotionY:F

    .line 192
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mActivePointerId:I

    goto :goto_0

    .line 197
    :pswitch_2
    iget v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 201
    iget v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mActivePointerId:I

    if-eq v3, v5, :cond_1

    .line 205
    iget v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 206
    .local v0, "activePointerIndex":I
    if-ne v0, v5, :cond_3

    .line 207
    const-string v3, "NoteBookEventHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in onTouchEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mLastMotionY:F

    sub-float v2, v3, v4

    .line 212
    .local v2, "yDiff":F
    iget v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTotalShift:F

    add-float/2addr v3, v2

    iput v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mTotalShift:F

    .line 213
    iget-boolean v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsBeingDragged:Z

    if-nez v3, :cond_4

    .line 214
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->processTouchSlop()V

    .line 216
    :cond_4
    iget-boolean v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsBeingDragged:Z

    if-eqz v3, :cond_1

    .line 217
    invoke-direct {p0, v2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->doDragForHeaderOrFooterView(F)V

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mLastMotionY:F

    goto :goto_0

    .line 224
    .end local v0    # "activePointerIndex":I
    .end local v2    # "yDiff":F
    :pswitch_3
    iput v5, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mActivePointerId:I

    .line 225
    iget-boolean v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsBeingDragged:Z

    if-eqz v3, :cond_5

    .line 226
    iput-boolean v7, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsBeingDragged:Z

    .line 227
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->doEventUpForHeaderOrFooterView()V

    goto :goto_0

    .line 229
    :cond_5
    iput v6, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mDragState:I

    goto :goto_0

    .line 233
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 234
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mActivePointerId:I

    .line 235
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mLastMotionY:F

    goto/16 :goto_0

    .line 240
    .end local v1    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCanDragToSynchronization(Z)V
    .locals 0
    .param p1, "canDragToSynchronization"    # Z

    .prologue
    .line 474
    iput-boolean p1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mCanDragToSynchronization:Z

    .line 475
    return-void
.end method

.method setIsStackFromBottom(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isStackForBottom"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsStackFromTop:Z

    .line 81
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsStackFromTop:Z

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mHeadView:Landroid/view/View;

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    .line 86
    :goto_1
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->setBackAnimationListener(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;)V

    .line 87
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->processViewVisible()V

    .line 88
    return-void

    :cond_0
    move v0, v2

    .line 80
    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    iget-object v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mFooterView:Landroid/view/View;

    invoke-direct {v0, p1, v2, v1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    goto :goto_1
.end method

.method public setLoadDataListener(Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;

    .prologue
    .line 445
    iput-object p1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListener:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;

    .line 446
    return-void
.end method

.method public startLoadingAnimation()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->reStartLoadingAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsLoading:Z

    .line 458
    :cond_0
    return-void
.end method

.method stopLoading(II)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "state"    # I

    .prologue
    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsLoading:Z

    .line 395
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->stopLoading(II)V

    .line 396
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mIsStackFromTop:Z

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 398
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 400
    :cond_0
    return-void
.end method

.method updateSyncTip(II)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "state"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->mAnimationController:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->updateSyncTip(II)V

    .line 404
    return-void
.end method
