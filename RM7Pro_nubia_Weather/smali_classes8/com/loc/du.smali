.class public final Lcom/loc/du;
.super Ljava/lang/Object;
.source "CellAgeEstimator.java"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/loc/dv;",
            ">;"
        }
    .end annotation
.end field

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/du;->a:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/du;->b:J

    return-void
.end method

.method private static a(II)J
    .locals 6

    const-wide/32 v4, 0xffff

    int-to-long v0, p0

    and-long/2addr v0, v4

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/loc/dv;)J
    .locals 8

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/loc/dv;->p:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    iget-object v6, p0, Lcom/loc/du;->a:Ljava/util/HashMap;

    iget v0, p1, Lcom/loc/dv;->k:I

    packed-switch v0, :pswitch_data_0

    move-wide v2, v4

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dv;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/loc/dv;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    iget v0, p1, Lcom/loc/dv;->c:I

    iget v1, p1, Lcom/loc/dv;->d:I

    invoke-static {v0, v1}, Lcom/loc/du;->a(II)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1

    :pswitch_1
    iget v0, p1, Lcom/loc/dv;->h:I

    iget v1, p1, Lcom/loc/dv;->i:I

    invoke-static {v0, v1}, Lcom/loc/du;->a(II)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1

    :cond_2
    iget v1, v0, Lcom/loc/dv;->j:I

    iget v7, p1, Lcom/loc/dv;->j:I

    if-eq v1, v7, :cond_3

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/loc/dv;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-wide v4, v0, Lcom/loc/dv;->m:J

    iput-wide v4, p1, Lcom/loc/dv;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    iget-wide v0, v0, Lcom/loc/dv;->m:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/loc/du;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/du;->b:J

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/loc/dv;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v6

    iget-wide v0, p0, Lcom/loc/du;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/loc/du;->b:J

    sub-long v0, v6, v0

    const-wide/32 v8, 0xea60

    cmp-long v0, v0, v8

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/loc/du;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v5, v4

    :goto_1
    if-ge v5, v9, :cond_4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dv;

    iget-boolean v1, v0, Lcom/loc/dv;->p:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/loc/dv;->k:I

    packed-switch v1, :pswitch_data_0

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/dv;

    if-eqz v1, :cond_2

    iget v10, v1, Lcom/loc/dv;->j:I

    iget v11, v0, Lcom/loc/dv;->j:I

    if-ne v10, v11, :cond_3

    iget-wide v10, v1, Lcom/loc/dv;->m:J

    iput-wide v10, v0, Lcom/loc/dv;->m:J

    :cond_2
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :pswitch_0
    iget v1, v0, Lcom/loc/dv;->c:I

    iget v2, v0, Lcom/loc/dv;->d:I

    invoke-static {v1, v2}, Lcom/loc/du;->a(II)J

    move-result-wide v2

    goto :goto_2

    :pswitch_1
    iget v1, v0, Lcom/loc/dv;->h:I

    iget v2, v0, Lcom/loc/dv;->i:I

    invoke-static {v1, v2}, Lcom/loc/du;->a(II)J

    move-result-wide v2

    goto :goto_2

    :cond_3
    iput-wide v6, v0, Lcom/loc/dv;->m:J

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v4

    :goto_4
    if-ge v1, v5, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dv;

    iget-boolean v4, v0, Lcom/loc/dv;->p:Z

    if-eqz v4, :cond_5

    iget v4, v0, Lcom/loc/dv;->k:I

    packed-switch v4, :pswitch_data_1

    :goto_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :pswitch_2
    iget v2, v0, Lcom/loc/dv;->c:I

    iget v3, v0, Lcom/loc/dv;->d:I

    invoke-static {v2, v3}, Lcom/loc/du;->a(II)J

    move-result-wide v2

    goto :goto_5

    :pswitch_3
    iget v2, v0, Lcom/loc/dv;->h:I

    iget v3, v0, Lcom/loc/dv;->i:I

    invoke-static {v2, v3}, Lcom/loc/du;->a(II)J

    move-result-wide v2

    goto :goto_5

    :cond_6
    iput-wide v6, p0, Lcom/loc/du;->b:J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
