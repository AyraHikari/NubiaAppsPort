.class Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
.super Ljava/lang/Object;
.source "LinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

.field prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

.field val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    .line 30
    return-void
.end method
