.class Lcn/nubia/camera/panorama/j$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/panorama/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/panorama/j;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/panorama/j;Landroid/os/Looper;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcn/nubia/camera/panorama/j$a;->a:Lcn/nubia/camera/panorama/j;

    .line 534
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 540
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const-string v2, "PanoramaFragment"

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/panorama/j$a;->a:Lcn/nubia/camera/panorama/j;

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/j;->D()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/panorama/j$a;->a:Lcn/nubia/camera/panorama/j;

    .line 541
    invoke-static {v0}, Lcn/nubia/camera/panorama/j;->c(Lcn/nubia/camera/panorama/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    if-eq v0, v3, :cond_1

    .line 542
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsPaused "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/j$a;->a:Lcn/nubia/camera/panorama/j;

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/j;->D()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/j$a;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {v0}, Lcn/nubia/camera/panorama/j;->d(Lcn/nubia/camera/panorama/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 545
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_4

    const/4 p1, 0x4

    if-eq v0, p1, :cond_3

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2

    goto :goto_0

    .line 560
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/panorama/j$a;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {p1}, Lcn/nubia/camera/panorama/j;->i(Lcn/nubia/camera/panorama/j;)Lcn/nubia/camera/panorama/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/panorama/h;->b()V

    goto :goto_0

    .line 547
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/panorama/j$a;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {p1}, Lcn/nubia/camera/panorama/j;->g(Lcn/nubia/camera/panorama/j;)Lcn/nubia/camera/panorama/f;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/j$a;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {v0}, Lcn/nubia/camera/panorama/j;->e(Lcn/nubia/camera/panorama/j;)[B

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/panorama/j$a;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {v1}, Lcn/nubia/camera/panorama/j;->f(Lcn/nubia/camera/panorama/j;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/panorama/j$a;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {v2}, Lcn/nubia/camera/panorama/j;->f(Lcn/nubia/camera/panorama/j;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/camera/panorama/f;->a([BII)V

    goto :goto_0

    :cond_4
    const-string v0, "MSG_PANO_STOP"

    .line 556
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcn/nubia/camera/panorama/j$a;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {v0}, Lcn/nubia/camera/panorama/j;->i(Lcn/nubia/camera/panorama/j;)Lcn/nubia/camera/panorama/h;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/camera/panorama/h;->a(I)V

    goto :goto_0

    :cond_5
    const-string p1, "MSG_PANO_ERROR"

    .line 553
    invoke-static {v2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    :cond_6
    iget-object p1, p0, Lcn/nubia/camera/panorama/j$a;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {p1}, Lcn/nubia/camera/panorama/j;->i(Lcn/nubia/camera/panorama/j;)Lcn/nubia/camera/panorama/h;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/j$a;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {v0}, Lcn/nubia/camera/panorama/j;->h(Lcn/nubia/camera/panorama/j;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/panorama/h;->a([B)V

    :goto_0
    return-void
.end method
