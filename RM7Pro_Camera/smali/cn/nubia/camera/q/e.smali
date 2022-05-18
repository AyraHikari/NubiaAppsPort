.class public Lcn/nubia/camera/q/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/q/e$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/widget/ImageView;

.field private c:Lcn/nubia/camera/ad/a;

.field private d:Lcn/nubia/camera/k/ah;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcn/nubia/camera/q/e;->a:Z

    .line 25
    new-instance v0, Lcn/nubia/camera/q/e$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/q/e$a;-><init>(Lcn/nubia/camera/q/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/camera/q/e;->e:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcn/nubia/camera/q/e;->b:Landroid/widget/ImageView;

    .line 29
    iput-object p2, p0, Lcn/nubia/camera/q/e;->c:Lcn/nubia/camera/ad/a;

    .line 30
    iput-object p3, p0, Lcn/nubia/camera/q/e;->d:Lcn/nubia/camera/k/ah;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/q/e;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/camera/q/e;->a:Z

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/q/e;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcn/nubia/camera/q/e;->a:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/q/e;)Landroid/widget/ImageView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/camera/q/e;->b:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 35
    iget-object p1, p0, Lcn/nubia/camera/q/e;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/nubia/camera/q/e;->c:Lcn/nubia/camera/ad/a;

    iget-object v1, p0, Lcn/nubia/camera/q/e;->d:Lcn/nubia/camera/k/ah;

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/camera/q/e;->a(Landroid/widget/ImageView;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 40
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 41
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 44
    :cond_0
    invoke-virtual {p3}, Lcn/nubia/camera/k/ah;->z()Lcn/nubia/camera/k/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/ab;->g()Z

    move-result p1

    iget-boolean v0, p0, Lcn/nubia/camera/q/e;->a:Z

    if-ne p1, v0, :cond_1

    return-void

    .line 47
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f01d5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {v0, v1, p1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p3}, Lcn/nubia/camera/k/ah;->z()Lcn/nubia/camera/k/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/ab;->g()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const-wide/16 v2, -0x1

    .line 51
    invoke-virtual {p3}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    .line 52
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/camera/ba/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "pref_third_arith_hdr_key"

    invoke-virtual {p1, p3, p2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 53
    iget-boolean p1, p0, Lcn/nubia/camera/q/e;->a:Z

    if-nez p1, :cond_3

    .line 54
    iget-object p1, p0, Lcn/nubia/camera/q/e;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    iget-object p1, p0, Lcn/nubia/camera/q/e;->e:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 59
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/camera/q/e;->a:Z

    if-eqz p1, :cond_3

    .line 60
    iget-object p1, p0, Lcn/nubia/camera/q/e;->e:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    iget-object p1, p0, Lcn/nubia/camera/q/e;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method
