.class Lorg/apache/commons/lang/enum/Enum$Entry;
.super Ljava/lang/Object;
.source "Enum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/enum/Enum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field final list:Ljava/util/List;

.field final map:Ljava/util/Map;

.field final unmodifiableList:Ljava/util/List;

.field final unmodifiableMap:Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    .line 292
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/enum/Enum$Entry;->unmodifiableMap:Ljava/util/Map;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    .line 300
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/enum/Enum$Entry;->unmodifiableList:Ljava/util/List;

    .line 307
    return-void
.end method
