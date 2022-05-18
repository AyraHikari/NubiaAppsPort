.class Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$SerializableLock;
.super Ljava/lang/Object;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializableLock"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7aea5a1b7445eeacL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$1;)V
    .locals 0
    .param p1, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$1;

    .prologue
    .line 748
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$SerializableLock;-><init>()V

    return-void
.end method
