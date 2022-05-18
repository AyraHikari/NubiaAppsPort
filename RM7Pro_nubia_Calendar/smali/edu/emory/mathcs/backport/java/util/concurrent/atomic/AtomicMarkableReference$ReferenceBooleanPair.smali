.class Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;
.super Ljava/lang/Object;
.source "AtomicMarkableReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicMarkableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceBooleanPair"
.end annotation


# instance fields
.field private final bit:Z

.field private final reference:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "i"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->reference:Ljava/lang/Object;

    iput-boolean p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->bit:Z

    .line 27
    return-void
.end method

.method static access$000(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    .prologue
    .line 22
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method static access$100(Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Z
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    .prologue
    .line 22
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->bit:Z

    return v0
.end method
