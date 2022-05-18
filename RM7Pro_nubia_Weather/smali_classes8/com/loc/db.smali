.class public Lcom/loc/db;
.super Ljava/lang/Object;
.source "AmapLocation.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:D

.field public e:D

.field public f:D

.field public g:F

.field public h:F

.field public i:F

.field public j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/loc/db;->b:J

    iput-wide v4, p0, Lcom/loc/db;->c:J

    iput-wide v0, p0, Lcom/loc/db;->d:D

    iput-wide v0, p0, Lcom/loc/db;->e:D

    iput-wide v0, p0, Lcom/loc/db;->f:D

    iput v2, p0, Lcom/loc/db;->g:F

    iput v2, p0, Lcom/loc/db;->h:F

    iput v2, p0, Lcom/loc/db;->i:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/db;->j:Z

    iput-object p1, p0, Lcom/loc/db;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/loc/db;)D
    .locals 14

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/loc/db;->e:D

    iget-wide v2, p0, Lcom/loc/db;->d:D

    iget-wide v4, p1, Lcom/loc/db;->e:D

    iget-wide v6, p1, Lcom/loc/db;->d:D

    const-wide v8, 0x41583fbd40000000L    # 6356725.0

    const-wide v10, 0x40d4e90000000000L    # 21412.0

    const-wide v12, 0x4056800000000000L    # 90.0

    sub-double/2addr v12, v2

    mul-double/2addr v10, v12

    const-wide v12, 0x4056800000000000L    # 90.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide v10, 0x400921fb60000000L    # 3.1415927410125732

    mul-double/2addr v10, v2

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    const-wide v12, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double/2addr v4, v12

    const-wide v12, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double/2addr v0, v12

    sub-double v0, v4, v0

    mul-double/2addr v0, v10

    const-wide v4, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double/2addr v4, v6

    const-wide v6, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double/2addr v2, v6

    sub-double v2, v4, v2

    mul-double/2addr v2, v8

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
