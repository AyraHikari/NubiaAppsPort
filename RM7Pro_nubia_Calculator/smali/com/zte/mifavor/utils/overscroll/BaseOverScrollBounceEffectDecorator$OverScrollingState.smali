.class public Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;
.super Ljava/lang/Object;
.source "BaseOverScrollBounceEffectDecorator.java"

# interfaces
.implements Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OverScrollingState"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QW-QScroll-ScrollState"


# instance fields
.field mCurrDragState:I

.field final mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

.field protected final mTouchDragRatioBck:F

.field protected final mTouchDragRatioFwd:F

.field final synthetic this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;FF)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-virtual {p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->createMotionAttributes()Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    .line 235
    iput p2, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mTouchDragRatioFwd:F

    .line 236
    iput p3, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mTouchDragRatioBck:F

    return-void
.end method


# virtual methods
.method public getStateId()I
    .locals 0

    .line 243
    iget p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mCurrDragState:I

    return p0
.end method

.method public handleEntryTransition(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;)V
    .locals 3

    const-string v0, "QW-QScroll-ScrollState"

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Entry Transition in. mIsBeingDragged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {v2}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$000(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStartAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

    iget-boolean v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;->mDir:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mCurrDragState:I

    .line 316
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStateListener:Lcom/zte/mifavor/utils/overscroll/IOverScrollStateListener;

    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-interface {p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;->getStateId()I

    move-result p1

    invoke-virtual {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->getStateId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/zte/mifavor/utils/overscroll/IOverScrollStateListener;->onOverScrollStateChange(Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;II)V

    const-string p1, "QW-QScroll-ScrollState"

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle Entry Transition out. mIsBeingDragged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$000(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 249
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mViewAdapter:Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v1, v1, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStartAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

    iget v1, v1, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;->mPointerId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    .line 253
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mBounceBackState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;

    invoke-virtual {p1, p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->issueStateTransition(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;)V

    return v4

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    invoke-virtual {v1, v0, p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;->init(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    iget v1, v1, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;->mDeltaOffset:F

    iget-object v3, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    iget-boolean v3, v3, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;->mDir:Z

    iget-object v5, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v5, v5, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStartAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

    iget-boolean v5, v5, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;->mDir:Z

    if-ne v3, v5, :cond_2

    iget v3, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mTouchDragRatioFwd:F

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mTouchDragRatioBck:F

    :goto_0
    div-float/2addr v1, v3

    .line 263
    iget-object v3, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    iget v3, v3, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;->mAbsOffset:F

    add-float/2addr v3, v1

    .line 268
    iget-object v5, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v5, v5, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStartAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

    iget-boolean v5, v5, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;->mDir:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    iget-boolean v5, v5, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;->mDir:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v5, v5, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStartAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

    iget v5, v5, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;->mAbsOffset:F

    cmpg-float v5, v3, v5

    if-lez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v5, v5, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStartAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

    iget-boolean v5, v5, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;->mDir:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    iget-boolean v5, v5, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;->mDir:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v5, v5, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStartAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

    iget v5, v5, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;->mAbsOffset:F

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_5

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v2, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v2, v2, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStartAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

    iget v2, v2, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;->mAbsOffset:F

    invoke-virtual {v1, v0, v2, p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V

    .line 271
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p1, p1, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mUpdateListener:Lcom/zte/mifavor/utils/overscroll/IOverScrollUpdateListener;

    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mCurrDragState:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/zte/mifavor/utils/overscroll/IOverScrollUpdateListener;->onOverScrollUpdate(Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;IF)V

    .line 273
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mIdleState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;

    invoke-virtual {p1, p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->issueStateTransition(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;)V

    return v4

    .line 277
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 281
    :cond_6
    iget-object v5, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {v5}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$100(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {v5}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$100(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 282
    iget-object v5, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {v5}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$100(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const-string v5, "QW-QScroll-ScrollState"

    const-string v6, "cancel spring animation..."

    .line 283
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_8

    .line 288
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    long-to-float v5, v5

    div-float/2addr v1, v5

    iput v1, p1, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mVelocity:F

    .line 291
    :cond_8
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p1, v0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$200(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_9

    float-to-double v5, v3

    const-wide v7, -0x4185280d654350b8L    # -1.0E-7

    cmpl-double p1, v5, v7

    if-gtz p1, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p1, v0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$300(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    const-string p1, "QW-QScroll-ScrollState"

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is Supprt Sink but Drag down is not supported. mIsBeingDragged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$000(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", newOffset = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 296
    :cond_b
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-virtual {p1, v0, v3}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->translateView(Landroid/view/View;F)V

    .line 297
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p1, v4}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$002(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;Z)Z

    .line 300
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p1, p1, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mUpdateListener:Lcom/zte/mifavor/utils/overscroll/IOverScrollUpdateListener;

    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->mCurrDragState:I

    invoke-interface {p1, v0, p0, v3}, Lcom/zte/mifavor/utils/overscroll/IOverScrollUpdateListener;->onOverScrollUpdate(Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;IF)V

    return v4
.end method

.method public handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "QW-QScroll-ScrollState"

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle Up Or Cancel Touch Event in. mIsBeingDragged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {v1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$000(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mBounceBackState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;

    invoke-virtual {p1, p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->issueStateTransition(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;)V

    const/4 p0, 0x0

    return p0
.end method
