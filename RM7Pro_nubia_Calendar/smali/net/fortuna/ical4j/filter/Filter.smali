.class public Lnet/fortuna/ical4j/filter/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# static fields
.field public static final MATCH_ALL:I = 0x2

.field public static final MATCH_ANY:I = 0x1


# instance fields
.field private rules:Ljava/util/List;

.field private type:I


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/filter/Rule;)V
    .locals 3
    .param p1, "rule"    # Lnet/fortuna/ical4j/filter/Rule;

    .prologue
    const/4 v2, 0x1

    .line 80
    new-array v0, v2, [Lnet/fortuna/ical4j/filter/Rule;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, v2}, Lnet/fortuna/ical4j/filter/Filter;-><init>([Lnet/fortuna/ical4j/filter/Rule;I)V

    .line 81
    return-void
.end method

.method public constructor <init>([Lnet/fortuna/ical4j/filter/Rule;I)V
    .locals 1
    .param p1, "rules"    # [Lnet/fortuna/ical4j/filter/Rule;
    .param p2, "type"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/filter/Filter;->rules:Ljava/util/List;

    .line 92
    iput p2, p0, Lnet/fortuna/ical4j/filter/Filter;->type:I

    .line 93
    return-void
.end method

.method private matchAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    .local v1, "list":Ljava/util/List;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v4, "temp":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/filter/Filter;->getRules()[Lnet/fortuna/ical4j/filter/Rule;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 127
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 129
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/filter/Filter;->getRules()[Lnet/fortuna/ical4j/filter/Rule;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-interface {v5, v3}, Lnet/fortuna/ical4j/filter/Rule;->match(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 133
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    move-object v1, v4

    .line 134
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "temp":Ljava/util/List;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .restart local v4    # "temp":Ljava/util/List;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_2
    return-object v1
.end method

.method private matchAny(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v1, "matches":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 143
    .local v3, "o":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/filter/Filter;->getRules()[Lnet/fortuna/ical4j/filter/Rule;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 144
    invoke-virtual {p0}, Lnet/fortuna/ical4j/filter/Filter;->getRules()[Lnet/fortuna/ical4j/filter/Rule;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v4, v3}, Lnet/fortuna/ical4j/filter/Rule;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    .end local v2    # "n":I
    .end local v3    # "o":Ljava/lang/Object;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public final filter(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 101
    invoke-virtual {p0}, Lnet/fortuna/ical4j/filter/Filter;->getRules()[Lnet/fortuna/ical4j/filter/Rule;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/filter/Filter;->getRules()[Lnet/fortuna/ical4j/filter/Rule;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    .line 106
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .local v1, "filtered":Ljava/util/Collection;
    :goto_0
    iget v2, p0, Lnet/fortuna/ical4j/filter/Filter;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/filter/Filter;->matchAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 120
    .end local v1    # "filtered":Ljava/util/Collection;
    :goto_1
    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "filtered":Ljava/util/Collection;
    goto :goto_0

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/filter/Filter;->matchAny(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .end local v1    # "filtered":Ljava/util/Collection;
    :cond_1
    move-object v1, p1

    .line 120
    goto :goto_1
.end method

.method public final filter([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 159
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/fortuna/ical4j/filter/Filter;->filter(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 162
    .local v1, "filtered":Ljava/util/Collection;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    .line 161
    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 168
    :goto_0
    return-object v3

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ase":Ljava/lang/ArrayStoreException;
    const-class v3, Lnet/fortuna/ical4j/filter/Filter;

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 166
    .local v2, "log":Lorg/apache/commons/logging/Log;
    const-string v3, "Error converting to array - using default approach"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 168
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public final getRules()[Lnet/fortuna/ical4j/filter/Rule;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lnet/fortuna/ical4j/filter/Filter;->rules:Ljava/util/List;

    iget-object v1, p0, Lnet/fortuna/ical4j/filter/Filter;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lnet/fortuna/ical4j/filter/Rule;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/fortuna/ical4j/filter/Rule;

    check-cast v0, [Lnet/fortuna/ical4j/filter/Rule;

    return-object v0
.end method

.method public final setRules([Lnet/fortuna/ical4j/filter/Rule;)V
    .locals 1
    .param p1, "rules"    # [Lnet/fortuna/ical4j/filter/Rule;

    .prologue
    .line 182
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/filter/Filter;->rules:Ljava/util/List;

    .line 183
    return-void
.end method
