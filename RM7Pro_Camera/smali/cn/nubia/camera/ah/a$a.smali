.class Lcn/nubia/camera/ah/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ah/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ah/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ah/a;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcn/nubia/camera/ah/a$a;->a:Lcn/nubia/camera/ah/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    const-string p1, "MultiExposureFragment"

    const-string v0, "onFrameAvailable!SS"

    .line 743
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object p1, p0, Lcn/nubia/camera/ah/a$a;->a:Lcn/nubia/camera/ah/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ah/a;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 747
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ah/a$a;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 748
    iget-object p1, p0, Lcn/nubia/camera/ah/a$a;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ah/e;->e()V

    .line 749
    iget-object p1, p0, Lcn/nubia/camera/ah/a$a;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->c(Lcn/nubia/camera/ah/a;)I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 750
    iget-object p1, p0, Lcn/nubia/camera/ah/a$a;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/ah/a$a;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->b(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getProgress()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ah/e;->a(FZ)V

    goto :goto_0

    .line 752
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ah/a$a;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ah/e;->a(FZ)V

    :cond_2
    :goto_0
    return-void
.end method
