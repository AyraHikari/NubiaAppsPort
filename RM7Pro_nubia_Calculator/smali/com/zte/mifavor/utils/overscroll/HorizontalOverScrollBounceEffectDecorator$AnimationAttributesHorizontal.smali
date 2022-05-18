.class public Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;
.super Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseAnimationAttributes;
.source "HorizontalOverScrollBounceEffectDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnimationAttributesHorizontal"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseAnimationAttributes;-><init>()V

    .line 45
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iput-object v0, p0, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;->mProperty:Landroid/util/Property;

    return-void
.end method


# virtual methods
.method protected init(Landroid/view/View;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;->mAbsOffset:F

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;->mMaxOffset:F

    return-void
.end method
