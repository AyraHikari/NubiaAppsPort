.class Lcn/nubia/camera/r/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/al/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/o;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/o;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/SensorEvent;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 127
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v2}, Lcn/nubia/camera/r/o;->a(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    .line 128
    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v2, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v2}, Lcn/nubia/camera/r/o;->a(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/r/o$a;

    iget-wide v7, v2, Lcn/nubia/camera/r/o$a;->b:J

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x23c34600

    cmp-long v2, v5, v7

    if-lez v2, :cond_0

    .line 129
    iget-object v2, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v2}, Lcn/nubia/camera/r/o;->b(Lcn/nubia/camera/r/o;)[F

    move-result-object v2

    aget v5, v2, v0

    iget-object v6, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v6}, Lcn/nubia/camera/r/o;->a(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/camera/r/o$a;

    iget-object v6, v6, Lcn/nubia/camera/r/o$a;->a:[F

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    aput v5, v2, v0

    .line 130
    iget-object v2, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v2}, Lcn/nubia/camera/r/o;->b(Lcn/nubia/camera/r/o;)[F

    move-result-object v2

    aget v5, v2, v4

    iget-object v6, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v6}, Lcn/nubia/camera/r/o;->a(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/camera/r/o$a;

    iget-object v6, v6, Lcn/nubia/camera/r/o$a;->a:[F

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    aput v5, v2, v4

    .line 131
    iget-object v2, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v2}, Lcn/nubia/camera/r/o;->b(Lcn/nubia/camera/r/o;)[F

    move-result-object v2

    aget v4, v2, v3

    iget-object v5, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v5}, Lcn/nubia/camera/r/o;->a(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/camera/r/o$a;

    iget-object v5, v5, Lcn/nubia/camera/r/o$a;->a:[F

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 132
    iget-object v2, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v2}, Lcn/nubia/camera/r/o;->a(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->a(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/r/o$a;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {v2, v5, v6, v7}, Lcn/nubia/camera/r/o$a;-><init>([FJ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->b(Lcn/nubia/camera/r/o;)[F

    move-result-object v1

    aget v2, v1, v0

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v2, v5

    aput v2, v1, v0

    .line 141
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->b(Lcn/nubia/camera/r/o;)[F

    move-result-object v1

    aget v2, v1, v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v2, v5

    aput v2, v1, v4

    .line 142
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->b(Lcn/nubia/camera/r/o;)[F

    move-result-object v1

    aget v2, v1, v3

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v2, v5

    aput v2, v1, v3

    .line 145
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->c(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v2}, Lcn/nubia/camera/r/o;->a(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 146
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->c(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 149
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->d(Lcn/nubia/camera/r/o;)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_3

    .line 150
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/r/o;->a(Lcn/nubia/camera/r/o;J)J

    .line 153
    :cond_3
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v3, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v3}, Lcn/nubia/camera/r/o;->d(Lcn/nubia/camera/r/o;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/32 v5, 0x59682f00

    cmp-long v1, v1, v5

    if-lez v1, :cond_4

    .line 154
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->c(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/r/o$a;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {v2, v3, v5, v6}, Lcn/nubia/camera/r/o$a;-><init>([FJ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_4
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->c(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/r/o;->a(Ljava/util/ArrayList;)Z

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/camera/r/o;->a(Lcn/nubia/camera/r/o;Z)Z

    .line 157
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->e(Lcn/nubia/camera/r/o;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 158
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/r/o;->b(Lcn/nubia/camera/r/o;J)J

    .line 160
    :cond_5
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->f(Lcn/nubia/camera/r/o;)Lcn/nubia/camera/r/o$b;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 161
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->g(Lcn/nubia/camera/r/o;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 162
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->f(Lcn/nubia/camera/r/o;)Lcn/nubia/camera/r/o$b;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/camera/r/o$b;->a()V

    .line 164
    :cond_6
    iget-object v1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {v1}, Lcn/nubia/camera/r/o;->e(Lcn/nubia/camera/r/o;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object p1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {p1}, Lcn/nubia/camera/r/o;->h(Lcn/nubia/camera/r/o;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/32 v5, 0x77359400

    cmp-long p1, v1, v5

    if-gez p1, :cond_8

    :cond_7
    move v0, v4

    .line 165
    :cond_8
    iget-object p1, p0, Lcn/nubia/camera/r/o$1;->a:Lcn/nubia/camera/r/o;

    invoke-static {p1}, Lcn/nubia/camera/r/o;->f(Lcn/nubia/camera/r/o;)Lcn/nubia/camera/r/o$b;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/nubia/camera/r/o$b;->a(Z)V

    :cond_9
    return-void
.end method
