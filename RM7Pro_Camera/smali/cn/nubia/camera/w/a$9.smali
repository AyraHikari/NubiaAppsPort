.class Lcn/nubia/camera/w/a$9;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/w/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/w/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/w/a;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcn/nubia/camera/w/a$9;->a:Lcn/nubia/camera/w/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 782
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 783
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 785
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/w/a$9;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/w/a$9;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/w/a$9;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->f(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/w/a$9;->a:Lcn/nubia/camera/w/a;

    .line 786
    invoke-static {v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/w/a$9;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->n(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 789
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/camera/w/a$d;

    .line 790
    iget-object v0, p0, Lcn/nubia/camera/w/a$9;->a:Lcn/nubia/camera/w/a;

    iget-wide v1, p1, Lcn/nubia/camera/w/a$d;->a:J

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;J)V

    .line 791
    iget-object v0, p0, Lcn/nubia/camera/w/a$9;->a:Lcn/nubia/camera/w/a;

    iget v1, p1, Lcn/nubia/camera/w/a$d;->b:I

    invoke-static {v0, v1}, Lcn/nubia/camera/w/a;->c(Lcn/nubia/camera/w/a;I)V

    .line 792
    iget v0, p1, Lcn/nubia/camera/w/a$d;->c:F

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 793
    iget-object v0, p0, Lcn/nubia/camera/w/a$9;->a:Lcn/nubia/camera/w/a;

    iget p1, p1, Lcn/nubia/camera/w/a$d;->c:F

    invoke-static {v0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;F)V

    :cond_2
    :goto_0
    return-void
.end method
