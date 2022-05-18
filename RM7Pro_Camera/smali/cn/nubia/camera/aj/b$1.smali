.class Lcn/nubia/camera/aj/b$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/b;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method a()I
    .locals 3

    .line 106
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    const/4 v1, 0x0

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    invoke-static {v0}, Lcn/nubia/camera/aj/b;->d(Lcn/nubia/camera/aj/b;)Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/k/ai;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 108
    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    invoke-static {v0}, Lcn/nubia/camera/aj/b;->d(Lcn/nubia/camera/aj/b;)Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->m:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 112
    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    invoke-static {v0}, Lcn/nubia/camera/aj/b;->a(Lcn/nubia/camera/aj/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_7

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_1

    goto/16 :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/aj/b$1;->a()I

    move-result p1

    if-nez p1, :cond_2

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    invoke-static {v0}, Lcn/nubia/camera/aj/b;->b(Lcn/nubia/camera/aj/b;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    .line 92
    invoke-static {p1}, Lcn/nubia/camera/aj/b;->b(Lcn/nubia/camera/aj/b;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 93
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    invoke-static {p1}, Lcn/nubia/camera/aj/b;->c(Lcn/nubia/camera/aj/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne p1, v0, :cond_4

    .line 94
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    invoke-static {p1}, Lcn/nubia/camera/aj/b;->d(Lcn/nubia/camera/aj/b;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->k()V

    goto :goto_0

    .line 97
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    iget-object p1, p1, Lcn/nubia/camera/aj/b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    iget-object p1, p1, Lcn/nubia/camera/aj/b;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 80
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    invoke-static {p1, v2}, Lcn/nubia/camera/aj/b;->a(Lcn/nubia/camera/aj/b;Z)V

    .line 81
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    invoke-static {p1}, Lcn/nubia/camera/aj/b;->b(Lcn/nubia/camera/aj/b;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 82
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    iget-object p1, p1, Lcn/nubia/camera/aj/b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    iget-object p1, p1, Lcn/nubia/camera/aj/b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 85
    :cond_6
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    invoke-static {p1, v2}, Lcn/nubia/camera/aj/b;->b(Lcn/nubia/camera/aj/b;Z)Z

    .line 86
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    iget-object p1, p1, Lcn/nubia/camera/aj/b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    iget-object p1, p1, Lcn/nubia/camera/aj/b;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 74
    :cond_7
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    invoke-static {p1, v0}, Lcn/nubia/camera/aj/b;->a(Lcn/nubia/camera/aj/b;Z)V

    .line 75
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    invoke-static {p1, v0}, Lcn/nubia/camera/aj/b;->b(Lcn/nubia/camera/aj/b;Z)Z

    .line 76
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    iget-object p1, p1, Lcn/nubia/camera/aj/b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    iget-object p1, p0, Lcn/nubia/camera/aj/b$1;->a:Lcn/nubia/camera/aj/b;

    iget-object p1, p1, Lcn/nubia/camera/aj/b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    :goto_0
    return-void
.end method
