.class public Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;
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
    name = "IdleState"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QW-QScroll-IdleState"


# instance fields
.field final mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

.field final synthetic this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->createMotionAttributes()Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    return-void
.end method


# virtual methods
.method public getStateId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleEntryTransition(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStateListener:Lcom/zte/mifavor/utils/overscroll/IOverScrollStateListener;

    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-interface {p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;->getStateId()I

    move-result p1

    invoke-virtual {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->getStateId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/zte/mifavor/utils/overscroll/IOverScrollStateListener;->onOverScrollStateChange(Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;II)V

    const-string p1, "QW-QScroll-IdleState"

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle Entry Transition out. mIsBeingDragged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$000(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "QW-QScroll-IdleState"

    const-string p1, "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    .line 210
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mViewAdapter:Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    invoke-virtual {v1, v0, p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;->init(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mViewAdapter:Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;->isInAbsoluteStart()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    iget-boolean v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;->mDir:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mViewAdapter:Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;

    .line 185
    invoke-interface {v0}, Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;->isInAbsoluteEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    iget-boolean v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;->mDir:Z

    if-nez v0, :cond_3

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStartAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;->mPointerId:I

    .line 189
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStartAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    iget v1, v1, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;->mAbsOffset:F

    iput v1, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;->mAbsOffset:F

    .line 190
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v0, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStartAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->mMoveAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;

    iget-boolean v1, v1, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;->mDir:Z

    iput-boolean v1, v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;->mDir:Z

    .line 192
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object v1, v1, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mOverScrollingState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->issueStateTransition(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;)V

    .line 193
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mOverScrollingState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;->handleMoveTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 201
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$002(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;Z)Z

    const-string p1, "QW-QScroll-IdleState"

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Up Or Cancel Touch Event. mIsBeingDragged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$000(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
