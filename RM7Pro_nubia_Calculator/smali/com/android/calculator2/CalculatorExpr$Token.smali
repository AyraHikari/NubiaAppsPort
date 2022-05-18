.class abstract Lcom/android/calculator2/CalculatorExpr$Token;
.super Ljava/lang/Object;
.source "CalculatorExpr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Token"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calculator2/CalculatorExpr$1;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorExpr$Token;-><init>()V

    return-void
.end method


# virtual methods
.method abstract kind()Lcom/android/calculator2/CalculatorExpr$TokenKind;
.end method

.method abstract toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method abstract write(Ljava/io/DataOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
