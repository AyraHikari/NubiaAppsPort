.class public Lcom/nubia/cosmos/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lcom/nubia/cosmos/a;->a:J

    const-string v0, "StarTraceEffect"

    const-string v1, "StarTraceEffect StarTraceEffect"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a([I[F)I
    .locals 4

    .line 83
    iget-wide v0, p0, Lcom/nubia/cosmos/a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 85
    invoke-static {v0, v1, p1, p2}, Lcom/nubia/cosmos/Cosmos;->StarTraceEffectSetParam(J[I[F)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a()V
    .locals 2

    const-string v0, "StarTraceEffect"

    const-string v1, "StarTraceEffect create"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/nubia/cosmos/Cosmos;->StarTraceEffectCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nubia/cosmos/a;->a:J

    return-void
.end method

.method public a(I)V
    .locals 4

    .line 113
    iget-wide v0, p0, Lcom/nubia/cosmos/a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 115
    invoke-static {v0, v1, p1}, Lcom/nubia/cosmos/Cosmos;->StarTraceEffectOnProcess(JI)V

    :cond_0
    return-void
.end method

.method public a(IIIZ)V
    .locals 6

    .line 106
    iget-wide v0, p0, Lcom/nubia/cosmos/a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 108
    invoke-static/range {v0 .. v5}, Lcom/nubia/cosmos/Cosmos;->StarTraceEffectInit(JIIIZ)V

    :cond_0
    return-void
.end method

.method public a(IILjava/nio/ByteBuffer;)V
    .locals 4

    .line 92
    iget-wide v0, p0, Lcom/nubia/cosmos/a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 94
    invoke-static {v0, v1, p1, p2, p3}, Lcom/nubia/cosmos/Cosmos;->StarTraceEffectSetSkyImage(JIILjava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;ZI)V
    .locals 4

    .line 148
    iget-wide v0, p0, Lcom/nubia/cosmos/a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 150
    invoke-static {v0, v1, p1, p2, p3}, Lcom/nubia/cosmos/Cosmos;->StarTraceEffectTakePictureBitmap(JLandroid/graphics/Bitmap;ZI)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 70
    iget-wide v0, p0, Lcom/nubia/cosmos/a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 72
    invoke-static {v0, v1}, Lcom/nubia/cosmos/Cosmos;->StarTraceEffectLoadResource(J)J

    :cond_0
    return-void
.end method

.method public b(IILjava/nio/ByteBuffer;)V
    .locals 4

    .line 99
    iget-wide v0, p0, Lcom/nubia/cosmos/a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 101
    invoke-static {v0, v1, p1, p2, p3}, Lcom/nubia/cosmos/Cosmos;->StarTraceEffectSetSkyMask(JIILjava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "StarTraceEffect"

    const-string v1, "StarTraceEffect destroy"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-wide v0, p0, Lcom/nubia/cosmos/a;->a:J

    invoke-static {v0, v1}, Lcom/nubia/cosmos/Cosmos;->StarTraceEffectDestroy(J)V

    const-wide/16 v0, -0x1

    .line 79
    iput-wide v0, p0, Lcom/nubia/cosmos/a;->a:J

    return-void
.end method

.method public d()V
    .locals 4

    .line 120
    iget-wide v0, p0, Lcom/nubia/cosmos/a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 122
    invoke-static {v0, v1}, Lcom/nubia/cosmos/Cosmos;->StarTraceEffectUnInit(J)V

    :cond_0
    return-void
.end method
