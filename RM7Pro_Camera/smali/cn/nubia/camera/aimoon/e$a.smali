.class Lcn/nubia/camera/aimoon/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/u;
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aimoon/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/e;

.field private b:Z

.field private c:Landroid/hardware/camera2/TotalCaptureResult;

.field private d:[B

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcn/nubia/camera/aimoon/e;Z)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcn/nubia/camera/aimoon/e$a;->a:Lcn/nubia/camera/aimoon/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcn/nubia/camera/aimoon/e$a;->b:Z

    .line 144
    iput-boolean p2, p0, Lcn/nubia/camera/aimoon/e$a;->b:Z

    return-void
.end method

.method private a()V
    .locals 7

    .line 185
    iget-object v0, p0, Lcn/nubia/camera/aimoon/e$a;->a:Lcn/nubia/camera/aimoon/e;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/e;->c(Lcn/nubia/camera/aimoon/e;)Lcn/nubia/camera/aimoon/g;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v5, p0, Lcn/nubia/camera/aimoon/e$a;->c:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v5, :cond_1

    iget-object v2, p0, Lcn/nubia/camera/aimoon/e$a;->d:[B

    if-eqz v2, :cond_1

    .line 187
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/e$a;->b:Z

    if-eqz v0, :cond_0

    .line 188
    iget v3, p0, Lcn/nubia/camera/aimoon/e$a;->f:I

    iget v4, p0, Lcn/nubia/camera/aimoon/e$a;->g:I

    iget v6, p0, Lcn/nubia/camera/aimoon/e$a;->e:I

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/camera/aimoon/g;->a([BIILandroid/hardware/camera2/TotalCaptureResult;I)V

    goto :goto_0

    .line 190
    :cond_0
    iget v3, p0, Lcn/nubia/camera/aimoon/e$a;->f:I

    iget v4, p0, Lcn/nubia/camera/aimoon/e$a;->g:I

    iget v6, p0, Lcn/nubia/camera/aimoon/e$a;->e:I

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/camera/aimoon/g;->b([BIILandroid/hardware/camera2/TotalCaptureResult;I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iput-object p1, p0, Lcn/nubia/camera/aimoon/e$a;->c:Landroid/hardware/camera2/TotalCaptureResult;

    .line 175
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/e$a;->a()V

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 1

    .line 149
    invoke-interface {p1}, Lcn/nubia/b/a/f;->b()I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/aimoon/e$a;->e:I

    const/16 v0, 0x23

    if-ne p2, v0, :cond_0

    .line 152
    iget-object p2, p0, Lcn/nubia/camera/aimoon/e$a;->a:Lcn/nubia/camera/aimoon/e;

    invoke-static {p2, p1}, Lcn/nubia/camera/aimoon/e;->a(Lcn/nubia/camera/aimoon/e;Lcn/nubia/b/a/f;)[B

    move-result-object p2

    goto :goto_0

    .line 154
    :cond_0
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/b/a/f$a;

    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 155
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 156
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p2, v0

    .line 158
    :goto_0
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/aimoon/e$a;->f:I

    .line 161
    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/aimoon/e$a;->g:I

    .line 162
    iput-object p2, p0, Lcn/nubia/camera/aimoon/e$a;->d:[B

    .line 163
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/e$a;->a()V

    .line 164
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 136
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/aimoon/e$a;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
