.class Lcom/android/calculator2/CalculatorExpr$EvalContext;
.super Ljava/lang/Object;
.source "CalculatorExpr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EvalContext"
.end annotation


# instance fields
.field public final mDegreeMode:Z

.field public final mExprResolver:Lcom/android/calculator2/CalculatorExpr$ExprResolver;

.field public final mPrefixLength:I


# direct methods
.method constructor <init>(Ljava/io/DataInput;ILcom/android/calculator2/CalculatorExpr$ExprResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2015
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/calculator2/CalculatorExpr$EvalContext;->mDegreeMode:Z

    .line 2016
    iput p2, p0, Lcom/android/calculator2/CalculatorExpr$EvalContext;->mPrefixLength:I

    .line 2017
    iput-object p3, p0, Lcom/android/calculator2/CalculatorExpr$EvalContext;->mExprResolver:Lcom/android/calculator2/CalculatorExpr$ExprResolver;

    return-void
.end method

.method constructor <init>(ZILcom/android/calculator2/CalculatorExpr$ExprResolver;)V
    .locals 0

    .line 2009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2010
    iput-boolean p1, p0, Lcom/android/calculator2/CalculatorExpr$EvalContext;->mDegreeMode:Z

    .line 2011
    iput p2, p0, Lcom/android/calculator2/CalculatorExpr$EvalContext;->mPrefixLength:I

    .line 2012
    iput-object p3, p0, Lcom/android/calculator2/CalculatorExpr$EvalContext;->mExprResolver:Lcom/android/calculator2/CalculatorExpr$ExprResolver;

    return-void
.end method


# virtual methods
.method write(Ljava/io/DataOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2020
    iget-boolean p0, p0, Lcom/android/calculator2/CalculatorExpr$EvalContext;->mDegreeMode:Z

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    return-void
.end method
