.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HashEntry"
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;

.field final next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

.field volatile value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILedu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "next"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    .line 201
    iput p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    .line 202
    iput-object p3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 203
    iput-object p4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 204
    return-void
.end method

.method static final newArray(I)[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 207
    new-array v0, p0, [Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    return-object v0
.end method
