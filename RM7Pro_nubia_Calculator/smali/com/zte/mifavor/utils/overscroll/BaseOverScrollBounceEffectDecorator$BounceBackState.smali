.class public Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;
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
    name = "BounceBackState"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QW-QScroll-BounceState"


# instance fields
.field protected final mAnimAttributes:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseAnimationAttributes;

.field protected final mBounceBackInterpolator:Landroid/view/animation/Interpolator;

.field protected final mDecelerateFactor:F

.field protected final mDoubleDecelerateFactor:F

.field final synthetic this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;F)V
    .locals 1

    .line 335
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->mBounceBackInterpolator:Landroid/view/animation/Interpolator;

    .line 336
    iput p2, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->mDecelerateFactor:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    .line 337
    iput p2, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->mDoubleDecelerateFactor:F

    .line 339
    invoke-virtual {p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->createAnimationAttributes()Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseAnimationAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->mAnimAttributes:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseAnimationAttributes;

    return-void
.end method


# virtual methods
.method public getStateId()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public handleEntryTransition(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;)V
    .locals 4

    const-string v0, "QW-QScroll-BounceState"

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Entry Transition in. mIsBeingDragged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {v2}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$000(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {v0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$000(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStateListener:Lcom/zte/mifavor/utils/overscroll/IOverScrollStateListener;

    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-interface {p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;->getStateId()I

    move-result p1

    invoke-virtual {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->getStateId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/zte/mifavor/utils/overscroll/IOverScrollStateListener;->onOverScrollStateChange(Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;II)V

    .line 352
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$400(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Landroid/view/VelocityTracker;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 355
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p1, p1, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mViewAdapter:Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;

    invoke-interface {p1}, Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const-wide v0, -0x411b074a771c970fL    # -1.0E-5

    float-to-double v2, p1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v2, v0

    if-gez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {v0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$400(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {v0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$400(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    const-string v1, "QW-QScroll-BounceState"

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle Entry Transition. velocity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", translationY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$100(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 364
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$100(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 365
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$400(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    const-string p1, "QW-QScroll-BounceState"

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle Entry Transition out. mIsBeingDragged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {v1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$000(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mIdleState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;

    invoke-virtual {p1, p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->issueStateTransition(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;)V

    return-void
.end method

.method public handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p0, "QW-QScroll-BounceState"

    const-string p1, "handle Move Touch Event in."

    .line 374
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "QW-QScroll-BounceState"

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle Up Or Cancel Touch Event in. mIsBeingDragged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$000(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
