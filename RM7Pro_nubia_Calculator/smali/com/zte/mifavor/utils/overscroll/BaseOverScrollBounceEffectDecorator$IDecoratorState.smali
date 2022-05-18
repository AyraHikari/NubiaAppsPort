.class public interface abstract Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;
.super Ljava/lang/Object;
.source "BaseOverScrollBounceEffectDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "IDecoratorState"
.end annotation


# virtual methods
.method public abstract getStateId()I
.end method

.method public abstract handleEntryTransition(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;)V
.end method

.method public abstract handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
.end method
