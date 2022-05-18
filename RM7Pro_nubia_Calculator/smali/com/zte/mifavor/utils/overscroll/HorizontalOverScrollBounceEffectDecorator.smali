.class public Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator;
.super Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;
.source "HorizontalOverScrollBounceEffectDecorator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;,
        Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;FFFLandroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;FFFLandroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V

    return-void
.end method

.method public constructor <init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;Landroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V
    .locals 7

    const/high16 v2, 0x3fc00000    # 1.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40000000    # -2.0f

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;FFFLandroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V

    return-void
.end method


# virtual methods
.method protected createAnimationAttributes()Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseAnimationAttributes;
    .locals 0

    .line 88
    new-instance p0, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;

    invoke-direct {p0}, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;-><init>()V

    return-object p0
.end method

.method protected createMotionAttributes()Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;
    .locals 0

    .line 83
    new-instance p0, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;

    invoke-direct {p0}, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;-><init>()V

    return-object p0
.end method

.method protected translateView(Landroid/view/View;F)V
    .locals 1

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    const-string p0, "QW-QScrollBaseDecorator"

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "translateX  View out. offset = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V
    .locals 1

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    const/4 p0, 0x0

    .line 100
    invoke-virtual {p3, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    sub-float p0, p2, p0

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p3, p0, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const-string p1, "QW-QScrollBaseDecorator"

    .line 102
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "translateX View And Event out. offset = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", deltaX = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
