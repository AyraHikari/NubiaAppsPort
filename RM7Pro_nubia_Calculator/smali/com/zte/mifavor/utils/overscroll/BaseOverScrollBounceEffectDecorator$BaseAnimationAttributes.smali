.class public abstract Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseAnimationAttributes;
.super Ljava/lang/Object;
.source "BaseOverScrollBounceEffectDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "BaseAnimationAttributes"
.end annotation


# instance fields
.field public mAbsOffset:F

.field public mMaxOffset:F

.field public mProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iput-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseAnimationAttributes;->mProperty:Landroid/util/Property;

    return-void
.end method


# virtual methods
.method protected abstract init(Landroid/view/View;)V
.end method
