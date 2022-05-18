.class Lcn/nubia/camera/clone/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/clone/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/clone/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/clone/d;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcn/nubia/camera/clone/d$2;->a:Lcn/nubia/camera/clone/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 17

    move-object/from16 v1, p0

    if-nez p1, :cond_0

    const-string v0, "CloneFragment"

    const-string v2, "image is null, return..."

    .line 123
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, v1, Lcn/nubia/camera/clone/d$2;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v0}, Lcn/nubia/camera/clone/d;->d(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void

    .line 128
    :cond_0
    iget-object v0, v1, Lcn/nubia/camera/clone/d$2;->a:Lcn/nubia/camera/clone/d;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/d;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CloneFragment"

    const-string v2, "Capture canceled, return..."

    .line 129
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->close()V

    return-void

    .line 133
    :cond_1
    iget-object v0, v1, Lcn/nubia/camera/clone/d$2;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v0}, Lcn/nubia/camera/clone/d;->e(Lcn/nubia/camera/clone/d;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v0, v1, Lcn/nubia/camera/clone/d$2;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v0}, Lcn/nubia/camera/clone/d;->c(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/clone/l;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcn/nubia/camera/clone/d$2;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v0}, Lcn/nubia/camera/clone/d;->c(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/clone/l;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/clone/l;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/f$a;

    .line 136
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/b/a/f$a;

    .line 137
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/b/a/f$a;

    .line 138
    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->b()I

    move-result v7

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->a()I

    move-result v8

    .line 139
    invoke-interface {v3}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v3}, Lcn/nubia/b/a/f$a;->b()I

    move-result v10

    invoke-interface {v3}, Lcn/nubia/b/a/f$a;->a()I

    move-result v11

    .line 140
    invoke-interface {v4}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-interface {v4}, Lcn/nubia/b/a/f$a;->b()I

    move-result v13

    invoke-interface {v4}, Lcn/nubia/b/a/f$a;->a()I

    move-result v14

    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->f()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->c()I

    move-result v16

    .line 138
    invoke-static/range {v6 .. v16}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object v0

    .line 142
    iget-object v3, v1, Lcn/nubia/camera/clone/d$2;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v3}, Lcn/nubia/camera/clone/d;->f(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-static {v3}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->f()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->c()I

    move-result v4

    sget-object v6, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;->b:Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    invoke-static {v0, v3, v4, v6}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;IILcn/nubia/algorithm/utils/YUVAlgorithm$a;)Z

    .line 146
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v3

    .line 151
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v4

    iget-object v6, v1, Lcn/nubia/camera/clone/d$2;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v6}, Lcn/nubia/camera/clone/d;->g(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 152
    iget-object v6, v1, Lcn/nubia/camera/clone/d$2;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v6}, Lcn/nubia/camera/clone/d;->c(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/clone/l;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 153
    iget-object v6, v1, Lcn/nubia/camera/clone/d$2;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v6}, Lcn/nubia/camera/clone/d;->c(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/clone/l;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->f()I

    move-result v7

    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->c()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v3, v7, v8, v4}, Lcn/nubia/camera/clone/l;->a([BIII)V

    .line 155
    :cond_3
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 156
    iget-object v0, v1, Lcn/nubia/camera/clone/d$2;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v0}, Lcn/nubia/camera/clone/d;->h(Lcn/nubia/camera/clone/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string v0, "CloneFragment"

    const-string v3, "CloneJni has been cleaned.."

    .line 158
    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->close()V

    .line 162
    iget-object v0, v1, Lcn/nubia/camera/clone/d$2;->a:Lcn/nubia/camera/clone/d;

    invoke-static {v0}, Lcn/nubia/camera/clone/d;->i(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void

    :catchall_0
    move-exception v0

    .line 160
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 112
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/clone/d$2;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
