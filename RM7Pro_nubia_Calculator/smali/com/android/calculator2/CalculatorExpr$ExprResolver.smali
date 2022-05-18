.class public interface abstract Lcom/android/calculator2/CalculatorExpr$ExprResolver;
.super Ljava/lang/Object;
.source "CalculatorExpr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExprResolver"
.end annotation


# virtual methods
.method public abstract getDegreeMode(J)Z
.end method

.method public abstract getExpr(J)Lcom/android/calculator2/CalculatorExpr;
.end method

.method public abstract getResult(J)Lcom/android/calculator2/UnifiedReal;
.end method

.method public abstract putResultIfAbsent(JLcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;
.end method
