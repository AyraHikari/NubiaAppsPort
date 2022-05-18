.class Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$1;
.super Ljava/lang/Object;
.source "BaseOverScrollBounceEffectDecorator.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;FFFLandroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$1;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 402
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$1;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$002(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;Z)Z

    const-string p1, "QW-QScrollBaseDecorator"

    .line 403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "on Animation End. +++++++++++++++++++++ mIsBeingDragged = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$1;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p3}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$000(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$1;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    invoke-static {p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->access$100(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 405
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$1;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$1;->this$0:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mIdleState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;

    invoke-virtual {p1, p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->issueStateTransition(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;)V

    return-void
.end method
