.class public final Lcom/loc/bz;
.super Ljava/lang/Object;
.source "WifiCollector.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/loc/dd;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/loc/dc;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/dd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bz;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bz;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/dd;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/loc/dd;",
            ">;)V"
        }
    .end annotation

    const/16 v3, 0x28

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dd;

    iget v6, v0, Lcom/loc/dd;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/loc/bz$1;

    invoke-direct {v0, p0}, Lcom/loc/bz$1;-><init>(Lcom/loc/bz;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    move v0, v3

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method final a(Lcom/loc/dc;Ljava/util/List;ZJJ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/loc/dc;",
            "Ljava/util/List",
            "<",
            "Lcom/loc/dd;",
            ">;ZJJ)",
            "Ljava/util/List",
            "<",
            "Lcom/loc/dd;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/loc/bz;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/loc/bz;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/loc/bz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/loc/bz;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p1, p0, Lcom/loc/bz;->b:Lcom/loc/dc;

    iget-object v0, p0, Lcom/loc/bz;->c:Ljava/util/ArrayList;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/16 v2, 0xdac

    iget v3, p1, Lcom/loc/dc;->g:F

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    const/16 v2, 0x7d0

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_3

    sub-long v4, p6, p4

    int-to-long v2, v2

    cmp-long v0, v4, v2

    if-gez v0, :cond_5

    const/4 v0, 0x1

    :cond_3
    :goto_2
    if-eqz v0, :cond_12

    if-eqz p2, :cond_12

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/loc/bz;->b:Lcom/loc/dc;

    if-eqz v0, :cond_f

    iget v0, p1, Lcom/loc/dc;->g:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    const/high16 v0, 0x43480000    # 200.0f

    :goto_3
    iget-object v1, p0, Lcom/loc/bz;->b:Lcom/loc/dc;

    invoke-virtual {p1, v1}, Lcom/loc/dc;->a(Lcom/loc/db;)D

    move-result-wide v2

    float-to-double v0, v0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->a:Ljava/util/List;

    if-eqz p2, :cond_4

    if-nez v0, :cond_9

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget v0, p1, Lcom/loc/dc;->g:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_3

    :cond_7
    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int v4, v1, v3

    const/4 v2, 0x0

    if-le v1, v3, :cond_a

    move-object v1, v0

    move-object v0, p2

    :goto_6
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dd;

    iget-wide v6, v0, Lcom/loc/dd;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    move-object v1, p2

    goto :goto_6

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dd;

    iget-wide v6, v0, Lcom/loc/dd;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_11

    add-int/lit8 v0, v1, 0x1

    :goto_9
    move v1, v0

    goto :goto_8

    :cond_c
    int-to-double v0, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    int-to-double v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_11
    move v0, v1

    goto :goto_9

    :cond_12
    move v0, v1

    goto/16 :goto_0
.end method
