.class Lorg/apache/commons/lang/IntHashMap$Entry;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/IntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field final hash:I

.field final key:I

.field next:Lorg/apache/commons/lang/IntHashMap$Entry;

.field value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Lorg/apache/commons/lang/IntHashMap$Entry;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "next"    # Lorg/apache/commons/lang/IntHashMap$Entry;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    .line 85
    iput p2, p0, Lorg/apache/commons/lang/IntHashMap$Entry;->key:I

    .line 86
    iput-object p3, p0, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 87
    iput-object p4, p0, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 88
    return-void
.end method
