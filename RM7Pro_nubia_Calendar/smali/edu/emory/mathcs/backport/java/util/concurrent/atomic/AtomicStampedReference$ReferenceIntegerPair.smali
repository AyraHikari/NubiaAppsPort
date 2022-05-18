.class Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
.super Ljava/lang/Object;
.source "AtomicStampedReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceIntegerPair"
.end annotation


# instance fields
.field private final integer:I

.field private final reference:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->reference:Ljava/lang/Object;

    iput p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->integer:I

    .line 27
    return-void
.end method

.method static access$000(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    .prologue
    .line 22
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method static access$100(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    .prologue
    .line 22
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->integer:I

    return v0
.end method
