.class Lcn/nubia/camera/k/ac$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/u;
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/ac;

.field private b:Lcn/nubia/b/k;

.field private c:Lcn/nubia/camera/k/o;

.field private d:Lcn/nubia/camera/k/u;

.field private e:Landroid/hardware/camera2/TotalCaptureResult;

.field private f:Lcn/nubia/camera/k/ac$b;

.field private g:Lcn/nubia/b/a/f;

.field private h:Z

.field private final i:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ac;Lcn/nubia/b/k;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcn/nubia/camera/k/ac$c;->a:Lcn/nubia/camera/k/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 222
    iput-boolean p1, p0, Lcn/nubia/camera/k/ac$c;->h:Z

    .line 223
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/k/ac$c;->i:Ljava/lang/Object;

    .line 226
    iput-object p2, p0, Lcn/nubia/camera/k/ac$c;->b:Lcn/nubia/b/k;

    .line 227
    iput-object p3, p0, Lcn/nubia/camera/k/ac$c;->c:Lcn/nubia/camera/k/o;

    .line 228
    iput-object p4, p0, Lcn/nubia/camera/k/ac$c;->d:Lcn/nubia/camera/k/u;

    return-void
.end method

.method constructor <init>(Lcn/nubia/camera/k/ac;Lcn/nubia/b/k;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/ac$b;)V
    .locals 0

    .line 232
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/ac$c;-><init>(Lcn/nubia/camera/k/ac;Lcn/nubia/b/k;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)V

    .line 233
    iput-object p5, p0, Lcn/nubia/camera/k/ac$c;->f:Lcn/nubia/camera/k/ac$b;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/a/f;
    .locals 0

    .line 215
    iget-object p0, p0, Lcn/nubia/camera/k/ac$c;->g:Lcn/nubia/b/a/f;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcn/nubia/camera/k/ac$c;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/k/ac$c;->h:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/k/ac$c;->e:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/k/ac$c;->g:Lcn/nubia/b/a/f;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 266
    iput-boolean v1, p0, Lcn/nubia/camera/k/ac$c;->h:Z

    .line 270
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    iget-object v0, p0, Lcn/nubia/camera/k/ac$c;->f:Lcn/nubia/camera/k/ac$b;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcn/nubia/camera/k/ac$c;->a:Lcn/nubia/camera/k/ac;

    invoke-static {v0}, Lcn/nubia/camera/k/ac;->a(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->x()Lcom/a/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/k/b/b;

    new-instance v1, Lcn/nubia/camera/k/ac$c$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/k/ac$c$1;-><init>(Lcn/nubia/camera/k/ac$c;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/b/b;->a(Lcn/nubia/camera/k/b/a;)Lcn/nubia/camera/k/b/c;

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/ac$c;->a:Lcn/nubia/camera/k/ac;

    invoke-static {v0}, Lcn/nubia/camera/k/ac;->a(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->x()Lcom/a/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/k/b/b;

    new-instance v1, Lcn/nubia/camera/k/ac$c$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/k/ac$c$2;-><init>(Lcn/nubia/camera/k/ac$c;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/b/b;->a(Lcn/nubia/camera/k/b/a;)Lcn/nubia/camera/k/b/c;

    :goto_0
    return-void

    .line 268
    :cond_1
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 270
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcn/nubia/camera/k/ac$c;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    .line 215
    iget-object p0, p0, Lcn/nubia/camera/k/ac$c;->e:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/camera/k/ac$b;
    .locals 0

    .line 215
    iget-object p0, p0, Lcn/nubia/camera/k/ac$c;->f:Lcn/nubia/camera/k/ac$b;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/k;
    .locals 0

    .line 215
    iget-object p0, p0, Lcn/nubia/camera/k/ac$c;->b:Lcn/nubia/b/k;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/camera/k/o;
    .locals 0

    .line 215
    iget-object p0, p0, Lcn/nubia/camera/k/ac$c;->c:Lcn/nubia/camera/k/o;

    return-object p0
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcn/nubia/camera/k/ac$c;->d:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0, p1}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/k/ac$c;->d:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p1}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 253
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/k/ac$c;->e:Landroid/hardware/camera2/TotalCaptureResult;

    .line 254
    invoke-direct {p0}, Lcn/nubia/camera/k/ac$c;->a()V

    return-void
.end method

.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcn/nubia/camera/k/ac$c;->g:Lcn/nubia/b/a/f;

    .line 260
    invoke-direct {p0}, Lcn/nubia/camera/k/ac$c;->a()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 215
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/k/ac$c;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
