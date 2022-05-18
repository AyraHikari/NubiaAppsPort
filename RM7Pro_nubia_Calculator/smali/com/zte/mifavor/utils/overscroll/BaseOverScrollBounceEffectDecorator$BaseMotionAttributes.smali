.class public abstract Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;
.super Ljava/lang/Object;
.source "BaseOverScrollBounceEffectDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "BaseMotionAttributes"
.end annotation


# instance fields
.field public mAbsOffset:F

.field public mDeltaOffset:F

.field public mDir:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract init(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method
