.class public Lcn/nubia/camera/y/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/y/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/y/h;

.field private b:Lcn/nubia/camera/y/h;

.field private c:Ljava/nio/ByteBuffer;

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Matrix;

.field private g:[B

.field private h:Lcn/nubia/camera/y/h$b;

.field private i:Z


# direct methods
.method public constructor <init>(Lcn/nubia/camera/y/h;Lcn/nubia/camera/y/h;[B)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcn/nubia/camera/y/h$d;->a:Lcn/nubia/camera/y/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 212
    iput-boolean p1, p0, Lcn/nubia/camera/y/h$d;->i:Z

    .line 225
    iput-object p2, p0, Lcn/nubia/camera/y/h$d;->b:Lcn/nubia/camera/y/h;

    .line 226
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcn/nubia/camera/y/h$d;->g:[B

    .line 227
    sget-object p1, Lcn/nubia/camera/y/h$b;->b:Lcn/nubia/camera/y/h$b;

    iput-object p1, p0, Lcn/nubia/camera/y/h$d;->h:Lcn/nubia/camera/y/h$b;

    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lcn/nubia/camera/y/h$d;->i:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 233
    iget-boolean v0, p0, Lcn/nubia/camera/y/h$d;->i:Z

    if-eqz v0, :cond_2

    .line 234
    sget-object v0, Lcn/nubia/camera/y/h$1;->a:[I

    iget-object v1, p0, Lcn/nubia/camera/y/h$d;->h:Lcn/nubia/camera/y/h$b;

    invoke-virtual {v1}, Lcn/nubia/camera/y/h$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/y/h$d;->b:Lcn/nubia/camera/y/h;

    iget-object v1, p0, Lcn/nubia/camera/y/h$d;->g:[B

    invoke-static {v0, v1}, Lcn/nubia/camera/y/h;->a(Lcn/nubia/camera/y/h;[B)V

    .line 242
    iput-object v3, p0, Lcn/nubia/camera/y/h$d;->g:[B

    .line 243
    iput-boolean v2, p0, Lcn/nubia/camera/y/h$d;->i:Z

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/y/h$d;->b:Lcn/nubia/camera/y/h;

    iget-object v1, p0, Lcn/nubia/camera/y/h$d;->c:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcn/nubia/camera/y/h$d;->d:I

    iget v5, p0, Lcn/nubia/camera/y/h$d;->e:I

    iget-object v6, p0, Lcn/nubia/camera/y/h$d;->f:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v4, v5, v6}, Lcn/nubia/camera/y/h;->a(Lcn/nubia/camera/y/h;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 237
    iput-object v3, p0, Lcn/nubia/camera/y/h$d;->c:Ljava/nio/ByteBuffer;

    .line 238
    iput-boolean v2, p0, Lcn/nubia/camera/y/h$d;->i:Z

    .line 246
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/y/h$d;->a:Lcn/nubia/camera/y/h;

    invoke-static {v0}, Lcn/nubia/camera/y/h;->c(Lcn/nubia/camera/y/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/y/h$d;->a:Lcn/nubia/camera/y/h;

    invoke-static {v1}, Lcn/nubia/camera/y/h;->d(Lcn/nubia/camera/y/h;)I

    .line 248
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method
