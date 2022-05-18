.class public Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers;
.super Ljava/lang/Object;
.source "ThreadHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$UncaughtExceptionHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assignExceptionHandler(Ljava/lang/Runnable;Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$UncaughtExceptionHandler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "handler"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$UncaughtExceptionHandler;

    .prologue
    .line 28
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31
    :cond_1
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$1;

    invoke-direct {v0, p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$1;-><init>(Ljava/lang/Runnable;Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$UncaughtExceptionHandler;)V

    return-object v0
.end method
