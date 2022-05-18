.class Lcn/nubia/camera/z/a/d$a;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/z/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/z/a/d;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/z/a/d;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcn/nubia/camera/z/a/d$a;->a:Lcn/nubia/camera/z/a/d;

    const-string p1, "mediacoder_draw"

    .line 334
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 339
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 340
    iget-object v0, p0, Lcn/nubia/camera/z/a/d$a;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {v0}, Lcn/nubia/camera/z/a/d;->h(Lcn/nubia/camera/z/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/z/a/d$a;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {v0}, Lcn/nubia/camera/z/a/d;->i(Lcn/nubia/camera/z/a/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "VideoMakerRender"

    const-string v1, "Save last video when exit"

    .line 341
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcn/nubia/camera/z/a/d$a;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {v0}, Lcn/nubia/camera/z/a/d;->f(Lcn/nubia/camera/z/a/d;)V

    :cond_1
    return-void
.end method
