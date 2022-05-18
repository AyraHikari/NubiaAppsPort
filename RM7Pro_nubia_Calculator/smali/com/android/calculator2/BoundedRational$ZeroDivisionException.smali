.class public Lcom/android/calculator2/BoundedRational$ZeroDivisionException;
.super Ljava/lang/ArithmeticException;
.source "BoundedRational.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/BoundedRational;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZeroDivisionException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Division by zero"

    .line 276
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    return-void
.end method
