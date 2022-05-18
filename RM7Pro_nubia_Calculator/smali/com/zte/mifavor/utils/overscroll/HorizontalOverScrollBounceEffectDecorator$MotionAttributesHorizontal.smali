.class public Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;
.super Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;
.source "HorizontalOverScrollBounceEffectDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MotionAttributesHorizontal"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 28
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p2, v1, v1}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v2

    sub-float/2addr v0, v2

    .line 29
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v1, v1}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result p2

    sub-float/2addr v2, p2

    .line 30
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    return v1

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;->mAbsOffset:F

    .line 35
    iput v2, p0, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;->mDeltaOffset:F

    .line 36
    iget p1, p0, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;->mDeltaOffset:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v1, p2

    :cond_2
    iput-boolean v1, p0, Lcom/zte/mifavor/utils/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;->mDir:Z

    return p2
.end method
