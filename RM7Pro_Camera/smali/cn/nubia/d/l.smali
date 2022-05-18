.class public Lcn/nubia/d/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(FF)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const-wide/16 v0, 0x1

    .line 41
    iput-wide v0, p0, Lcn/nubia/d/l;->a:J

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    float-to-double p1, p1

    div-double/2addr v0, p1

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/d/l;->b:J

    goto :goto_0

    :cond_0
    div-float/2addr p1, p2

    .line 44
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lcn/nubia/d/l;->a:J

    div-float/2addr v0, p2

    .line 45
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcn/nubia/d/l;->b:J

    :goto_0
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcn/nubia/d/l;->a:J

    .line 36
    iput-wide p3, p0, Lcn/nubia/d/l;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcn/nubia/d/l;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcn/nubia/d/l;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 87
    :cond_1
    instance-of v2, p1, Lcn/nubia/d/l;

    if-eqz v2, :cond_2

    .line 88
    check-cast p1, Lcn/nubia/d/l;

    .line 89
    iget-wide v2, p0, Lcn/nubia/d/l;->a:J

    iget-wide v4, p1, Lcn/nubia/d/l;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcn/nubia/d/l;->b:J

    iget-wide v4, p1, Lcn/nubia/d/l;->b:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcn/nubia/d/l;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/d/l;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
