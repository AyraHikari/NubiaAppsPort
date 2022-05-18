.class Lcn/nubia/camera/q/i$6;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/i;)V
    .locals 0

    .line 1851
    iput-object p1, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1854
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1855
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 1865
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 1870
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-static {p1}, Lcn/nubia/camera/q/i;->e(Lcn/nubia/camera/q/i;)Lcn/nubia/camera/zoom/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1871
    iget-object p1, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-static {p1}, Lcn/nubia/camera/q/i;->e(Lcn/nubia/camera/q/i;)Lcn/nubia/camera/zoom/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/camera/zoom/c;->a(Z)V

    .line 1875
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-static {p1}, Lcn/nubia/camera/q/i;->f(Lcn/nubia/camera/q/i;)Lcn/nubia/camera/facedetection/FaceView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1876
    iget-object p1, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-static {p1}, Lcn/nubia/camera/q/i;->f(Lcn/nubia/camera/q/i;)Lcn/nubia/camera/facedetection/FaceView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {v1}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->G()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/facedetection/FaceView;->a(Ljava/lang/String;I)V

    .line 1880
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-static {p1}, Lcn/nubia/camera/q/i;->g(Lcn/nubia/camera/q/i;)Lcn/nubia/camera/three_a/ui/h;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    .line 1881
    invoke-static {p1}, Lcn/nubia/camera/q/i;->g(Lcn/nubia/camera/q/i;)Lcn/nubia/camera/three_a/ui/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/h;->e()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1882
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    .line 1883
    iget-object v0, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-static {v0}, Lcn/nubia/camera/q/i;->g(Lcn/nubia/camera/q/i;)Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/h;->a(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 1884
    new-instance v0, Lcn/nubia/camera/three_a/b/a;

    iget-object v1, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {v1}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {v2}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcn/nubia/camera/three_a/b/a;-><init>(Lcn/nubia/camera/k/ah;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/ad/a;)V

    .line 1885
    iget-object p1, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/three_a/b/a;)V

    .line 1886
    new-instance p1, Lcn/nubia/camera/three_a/a/b;

    invoke-direct {p1, v0}, Lcn/nubia/camera/three_a/a/b;-><init>(Lcn/nubia/camera/three_a/a/a;)V

    .line 1887
    iget-object v1, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-static {v1}, Lcn/nubia/camera/q/i;->g(Lcn/nubia/camera/q/i;)Lcn/nubia/camera/three_a/ui/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/camera/three_a/ui/h;->a(Lcn/nubia/camera/three_a/ui/h$g;)V

    .line 1888
    iget-object p1, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/b/a;->a(Lcn/nubia/camera/three_a/b/a$a;)V

    goto :goto_0

    .line 1857
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-static {v0}, Lcn/nubia/camera/q/i;->d(Lcn/nubia/camera/q/i;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 1860
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/camera/q/i$a;

    .line 1861
    iget-object v0, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-static {v0}, Lcn/nubia/camera/q/i;->d(Lcn/nubia/camera/q/i;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1862
    iget-object v0, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-static {v0}, Lcn/nubia/camera/q/i;->d(Lcn/nubia/camera/q/i;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/camera/q/i$6;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {v4}, Lcn/nubia/camera/q/i;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f00a4

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v7, p1, Lcn/nubia/camera/q/i$a;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    iget v3, p1, Lcn/nubia/camera/q/i$a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    iget p1, p1, Lcn/nubia/camera/q/i$a;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    return-void
.end method
