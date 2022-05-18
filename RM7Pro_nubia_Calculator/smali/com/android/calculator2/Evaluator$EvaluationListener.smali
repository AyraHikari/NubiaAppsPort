.class public interface abstract Lcom/android/calculator2/Evaluator$EvaluationListener;
.super Ljava/lang/Object;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EvaluationListener"
.end annotation


# virtual methods
.method public abstract onCancelled(J)V
.end method

.method public abstract onError(JI)V
.end method

.method public abstract onEvaluate(JIIILjava/lang/String;)V
.end method

.method public abstract onReevaluate(J)V
.end method
