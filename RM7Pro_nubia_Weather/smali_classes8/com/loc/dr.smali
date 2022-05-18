.class public final Lcom/loc/dr;
.super Ljava/lang/Object;
.source "LocFilter.java"


# instance fields
.field a:Lcom/loc/ds;

.field b:J

.field c:J

.field d:I

.field e:J

.field f:Lcom/amap/api/location/AMapLocation;

.field g:J

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    iput-wide v2, p0, Lcom/loc/dr;->b:J

    iput-wide v2, p0, Lcom/loc/dr;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/dr;->h:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/dr;->d:I

    iput-wide v2, p0, Lcom/loc/dr;->e:J

    iput-object v1, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    iput-wide v2, p0, Lcom/loc/dr;->g:J

    return-void
.end method

.method private b(Lcom/loc/ds;)Lcom/loc/ds;
    .locals 2

    invoke-static {p1}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/loc/dr;->h:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/loc/ds;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/ei;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/loc/ds;->getLocationType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/loc/ds;->getLocationType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/loc/ds;->setLocationType(I)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    iget v0, p0, Lcom/loc/dr;->d:I

    invoke-virtual {p1, v0}, Lcom/loc/ds;->setLocationType(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 5

    invoke-static {p1}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/dr;->g:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/dr;->g:J

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    if-eq v0, v1, :cond_3

    const-string v0, "gps"

    iget-object v1, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    iput-object p1, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v2, v2, v0

    if-gez v2, :cond_5

    iput-object p1, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v3

    add-float/2addr v2, v3

    long-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    invoke-static {p1, v1}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    const v2, 0x453b8000    # 3000.0f

    add-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_6

    iget-object p1, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    goto/16 :goto_0

    :cond_6
    iput-object p1, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    goto/16 :goto_0
.end method

.method public final a(Lcom/loc/ds;)Lcom/loc/ds;
    .locals 12

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/dr;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iput-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dr;->e:J

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dr;->e:J

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dr;->b:J

    iput-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/loc/ds;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    invoke-virtual {v2}, Lcom/loc/ds;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/loc/ds;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/loc/ds;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dr;->b:J

    iput-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/loc/ds;->c()I

    move-result v0

    iget-object v1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    invoke-virtual {v1}, Lcom/loc/ds;->c()I

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dr;->b:J

    iput-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/loc/ds;->getBuildingId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    invoke-virtual {v1}, Lcom/loc/ds;->getBuildingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/loc/ds;->getBuildingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dr;->b:J

    iput-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/loc/ds;->getLocationType()I

    move-result v0

    iput v0, p0, Lcom/loc/dr;->d:I

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    invoke-static {p1, v0}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v2

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    invoke-virtual {v0}, Lcom/loc/ds;->getAccuracy()F

    move-result v3

    invoke-virtual {p1}, Lcom/loc/ds;->getAccuracy()F

    move-result v4

    sub-float v5, v4, v3

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v6

    iget-wide v0, p0, Lcom/loc/dr;->b:J

    sub-long v8, v6, v0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_a

    const v0, 0x43958000    # 299.0f

    cmpl-float v0, v4, v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    const v0, 0x43958000    # 299.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_b

    const v0, 0x43958000    # 299.0f

    cmpl-float v0, v4, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_2
    if-nez v1, :cond_8

    if-eqz v0, :cond_d

    :cond_8
    iget-wide v0, p0, Lcom/loc/dr;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    iput-wide v6, p0, Lcom/loc/dr;->c:J

    :cond_9
    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    invoke-direct {p0, v0}, Lcom/loc/dr;->b(Lcom/loc/ds;)Lcom/loc/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    :cond_c
    iget-wide v0, p0, Lcom/loc/dr;->c:J

    sub-long v0, v6, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    iput-wide v6, p0, Lcom/loc/dr;->b:J

    iput-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/dr;->c:J

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    goto/16 :goto_0

    :cond_d
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_e

    const v0, 0x43958000    # 299.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_e

    iput-wide v6, p0, Lcom/loc/dr;->b:J

    iput-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/dr;->c:J

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    goto/16 :goto_0

    :cond_e
    const v0, 0x43958000    # 299.0f

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_f

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/dr;->c:J

    :cond_f
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_12

    float-to-double v0, v2

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v10

    if-lez v0, :cond_12

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, v4, v0

    if-lez v0, :cond_12

    const/high16 v0, -0x3c6a0000    # -300.0f

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_10

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    invoke-direct {p0, v0}, Lcom/loc/dr;->b(Lcom/loc/ds;)Lcom/loc/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    goto/16 :goto_0

    :cond_10
    div-float v0, v3, v4

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_11

    iput-wide v6, p0, Lcom/loc/dr;->b:J

    iput-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    invoke-direct {p0, v0}, Lcom/loc/dr;->b(Lcom/loc/ds;)Lcom/loc/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    goto/16 :goto_0

    :cond_12
    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_14

    const-wide/16 v0, 0x7530

    cmp-long v0, v8, v0

    if-ltz v0, :cond_13

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dr;->b:J

    iput-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    invoke-direct {p0, v0}, Lcom/loc/dr;->b(Lcom/loc/ds;)Lcom/loc/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dr;->b:J

    iput-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    iget-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-object v2, p0, Lcom/loc/dr;->a:Lcom/loc/ds;

    iput-wide v0, p0, Lcom/loc/dr;->b:J

    iput-wide v0, p0, Lcom/loc/dr;->c:J

    iput-object v2, p0, Lcom/loc/dr;->f:Lcom/amap/api/location/AMapLocation;

    iput-wide v0, p0, Lcom/loc/dr;->g:J

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/loc/dr;->h:Z

    return-void
.end method
