.class Lcn/nubia/camera/dualcameracalibration/c$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/dualcameracalibration/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/dualcameracalibration/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/dualcameracalibration/c;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c$a;->a:Lcn/nubia/camera/dualcameracalibration/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "===handlemessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualCalibrationMemberFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c$a;->a:Lcn/nubia/camera/dualcameracalibration/c;

    invoke-virtual {p1}, Lcn/nubia/camera/dualcameracalibration/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 165
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c$a;->a:Lcn/nubia/camera/dualcameracalibration/c;

    invoke-virtual {p1}, Lcn/nubia/camera/dualcameracalibration/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 156
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c$a;->a:Lcn/nubia/camera/dualcameracalibration/c;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/c;->h(Lcn/nubia/camera/dualcameracalibration/c;)Lcn/nubia/camera/g/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/g/a;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c$a;->a:Lcn/nubia/camera/dualcameracalibration/c;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/c;->e(Lcn/nubia/camera/dualcameracalibration/c;)Lcn/nubia/camera/dualcameracalibration/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/dualcameracalibration/b;->b()V

    .line 151
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c$a;->a:Lcn/nubia/camera/dualcameracalibration/c;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/c;->f(Lcn/nubia/camera/dualcameracalibration/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 152
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c$a;->a:Lcn/nubia/camera/dualcameracalibration/c;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/c;->g(Lcn/nubia/camera/dualcameracalibration/c;)Lcn/nubia/camera/dualcameracalibration/c$a;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Lcn/nubia/camera/dualcameracalibration/c$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method
