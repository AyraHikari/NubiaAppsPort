.class public Lu/aly/ag;
.super Ljava/lang/Object;
.source "EventTracker.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Landroid/content/Context;

.field private e:Lu/aly/ae;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x80

    iput v0, p0, Lu/aly/ag;->a:I

    .line 33
    const/16 v0, 0x100

    iput v0, p0, Lu/aly/ag;->b:I

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lu/aly/ag;->c:I

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context is null, can\'t track event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ag;->d:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lu/aly/ag;->d:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ae;->a(Landroid/content/Context;)Lu/aly/ae;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ag;->e:Lu/aly/ae;

    .line 45
    return-void
.end method

.method static synthetic a(Lu/aly/ag;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lu/aly/ag;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 137
    if-lez v0, :cond_0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 142
    :cond_0
    const-string v0, "Event id is empty or too long in tracking Event"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    const-string v0, "map is null or empty in onEvent"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    move v0, v2

    .line 177
    :goto_0
    return v0

    .line 163
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lu/aly/ag;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    .line 165
    goto :goto_0

    .line 168
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    move v0, v2

    .line 169
    goto :goto_0

    .line 172
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 173
    goto :goto_0

    .line 177
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 148
    if-nez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_0

    .line 153
    const-string v0, "Event label or value is empty or too long in tracking Event"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 5

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lu/aly/ag;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lu/aly/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    if-nez p2, :cond_5

    const-string v0, ""

    :goto_1
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lu/aly/av$j;

    invoke-direct {v0}, Lu/aly/av$j;-><init>()V

    .line 93
    iput-object p1, v0, Lu/aly/av$j;->c:Ljava/lang/String;

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lu/aly/av$j;->d:J

    .line 95
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_2

    .line 96
    iput-wide p3, v0, Lu/aly/av$j;->e:J

    .line 98
    :cond_2
    const/4 v1, 0x1

    iput v1, v0, Lu/aly/av$j;->a:I

    .line 99
    iget-object v1, v0, Lu/aly/av$j;->f:Ljava/util/Map;

    if-nez p2, :cond_3

    const-string p2, ""

    :cond_3
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, v0, Lu/aly/av$j;->b:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 101
    iget-object v1, p0, Lu/aly/ag;->d:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/ar;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$j;->b:Ljava/lang/String;

    .line 103
    :cond_4
    iget-object v1, p0, Lu/aly/ag;->e:Lu/aly/ae;

    invoke-virtual {v1, v0}, Lu/aly/ae;->a(Lu/aly/ai;)V

    goto :goto_0

    :cond_5
    move-object v0, p2

    .line 90
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    invoke-direct {p0, p1}, Lu/aly/ag;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v2, Lu/aly/av$j;

    invoke-direct {v2}, Lu/aly/av$j;-><init>()V

    .line 112
    iput-object p1, v2, Lu/aly/av$j;->c:Ljava/lang/String;

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lu/aly/av$j;->d:J

    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lu/aly/av$j;->e:J

    .line 115
    const/4 v0, 0x2

    iput v0, v2, Lu/aly/av$j;->a:I

    .line 116
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 118
    const/4 v0, 0x0

    move v1, v0

    .line 119
    :goto_1
    const/16 v0, 0xa

    if-ge v1, v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    iget-object v4, v2, Lu/aly/av$j;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 124
    :cond_1
    iget-object v0, v2, Lu/aly/av$j;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lu/aly/ag;->d:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ar;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lu/aly/av$j;->b:Ljava/lang/String;

    .line 127
    :cond_2
    iget-object v0, p0, Lu/aly/ag;->e:Lu/aly/ae;

    invoke-virtual {v0, v2}, Lu/aly/ae;->a(Lu/aly/ai;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string v1, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    invoke-direct {p0, p1}, Lu/aly/ag;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-direct {p0, p2}, Lu/aly/ag;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v2, Lu/aly/av$j;

    invoke-direct {v2}, Lu/aly/av$j;-><init>()V

    .line 59
    iput-object p1, v2, Lu/aly/av$j;->c:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lu/aly/av$j;->d:J

    .line 61
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    .line 62
    iput-wide p3, v2, Lu/aly/av$j;->e:J

    .line 64
    :cond_2
    const/4 v0, 0x1

    iput v0, v2, Lu/aly/av$j;->a:I

    .line 65
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 67
    const/4 v0, 0x0

    move v1, v0

    .line 68
    :goto_1
    const/16 v0, 0xa

    if-ge v1, v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    iget-object v4, v2, Lu/aly/av$j;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 73
    :cond_3
    iget-object v0, v2, Lu/aly/av$j;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 74
    iget-object v0, p0, Lu/aly/ag;->d:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ar;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lu/aly/av$j;->b:Ljava/lang/String;

    .line 76
    :cond_4
    iget-object v0, p0, Lu/aly/ag;->e:Lu/aly/ae;

    invoke-virtual {v0, v2}, Lu/aly/ae;->a(Lu/aly/ai;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v1, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;ILjava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v3, 0x0

    .line 184
    invoke-static {}, Lu/aly/n;->a()Lu/aly/n;

    move-result-object v4

    .line 186
    if-nez p1, :cond_0

    .line 187
    const-string v0, "cklist is null!"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    .line 264
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 190
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 191
    const-string v0, "the KeyList is null!"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 197
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lu/aly/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    const-string v0, "Primary key Invalid!"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_4

    .line 203
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 205
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v0, "__cc"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v0, "illegal"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_3
    :goto_2
    invoke-virtual {v4, p3}, Lu/aly/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 239
    const-string v0, "label  Invalid!"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    .line 240
    const-string v4, "__illegal"

    .line 243
    :goto_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 244
    new-instance v0, Lu/aly/l;

    int-to-long v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lu/aly/l;-><init>(Ljava/util/List;JLjava/lang/String;J)V

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v0, Lu/aly/ag$1;

    invoke-direct {v0, p0, v7}, Lu/aly/ag$1;-><init>(Lu/aly/ag;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 210
    :cond_4
    invoke-virtual {v4, v1}, Lu/aly/n;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 211
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 213
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v0, "__cc"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const-string v0, "illegal"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 218
    :cond_5
    invoke-virtual {v4, v1}, Lu/aly/n;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 219
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 221
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-string v0, "__cc"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v0, "illegal"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move v2, v3

    .line 226
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 227
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_7

    .line 229
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 231
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 226
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_8
    move-object v4, p3

    goto :goto_3
.end method
