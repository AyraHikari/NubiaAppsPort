.class Lcn/nubia/camera/ay/a$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ay/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcn/nubia/camera/ay/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ay/a;Z)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcn/nubia/camera/ay/a$4;->b:Lcn/nubia/camera/ay/a;

    iput-boolean p2, p0, Lcn/nubia/camera/ay/a$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 321
    iget-object v0, p0, Lcn/nubia/camera/ay/a$4;->b:Lcn/nubia/camera/ay/a;

    invoke-static {v0}, Lcn/nubia/camera/ay/a;->i(Lcn/nubia/camera/ay/a;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/ay/a$4;->b:Lcn/nubia/camera/ay/a;

    invoke-static {v1}, Lcn/nubia/camera/ay/a;->j(Lcn/nubia/camera/ay/a;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcn/nubia/camera/ay/a$4;->b:Lcn/nubia/camera/ay/a;

    invoke-static {v1}, Lcn/nubia/camera/ay/a;->k(Lcn/nubia/camera/ay/a;)[I

    move-result-object v1

    invoke-static {v1, v0}, Lcn/nubia/algorithm/camera/TrajectoryAlgorithm;->Compose([ILandroid/graphics/Bitmap;)I

    move-result v1

    .line 323
    iget-object v2, p0, Lcn/nubia/camera/ay/a$4;->b:Lcn/nubia/camera/ay/a;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcn/nubia/camera/ay/a;->a(Lcn/nubia/camera/ay/a;I)V

    .line 324
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x1

    .line 325
    iput v3, v2, Landroid/os/Message;->what:I

    .line 326
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 327
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 328
    iget-boolean v0, p0, Lcn/nubia/camera/ay/a$4;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 329
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 331
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ay/a$4;->b:Lcn/nubia/camera/ay/a;

    invoke-static {v0}, Lcn/nubia/camera/ay/a;->h(Lcn/nubia/camera/ay/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
