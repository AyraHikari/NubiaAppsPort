.class Lcn/nubia/camera/bb/v$11;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/bb/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/v;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/v;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1134
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1135
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 1143
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {p1}, Lcn/nubia/camera/bb/v;->A(Lcn/nubia/camera/bb/v;)F

    move-result p1

    .line 1144
    iget-object v1, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v1}, Lcn/nubia/camera/bb/v;->B(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/bb/ad;->e(Lcn/nubia/camera/ad/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    .line 1145
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v2}, Lcn/nubia/camera/bb/v;->A(Lcn/nubia/camera/bb/v;)F

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v4}, Lcn/nubia/camera/bb/v;->C(Lcn/nubia/camera/bb/v;)F

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;F)F

    .line 1146
    iget-object v2, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v2}, Lcn/nubia/camera/bb/v;->A(Lcn/nubia/camera/bb/v;)F

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v3}, Lcn/nubia/camera/bb/v;->D(Lcn/nubia/camera/bb/v;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 1147
    iget-object v2, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v2}, Lcn/nubia/camera/bb/v;->D(Lcn/nubia/camera/bb/v;)F

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;F)F

    goto :goto_1

    .line 1148
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v2}, Lcn/nubia/camera/bb/v;->A(Lcn/nubia/camera/bb/v;)F

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v3}, Lcn/nubia/camera/bb/v;->E(Lcn/nubia/camera/bb/v;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 1149
    iget-object v2, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v2}, Lcn/nubia/camera/bb/v;->E(Lcn/nubia/camera/bb/v;)F

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;F)F

    .line 1152
    :cond_3
    :goto_1
    iget-object v2, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v2}, Lcn/nubia/camera/bb/v;->A(Lcn/nubia/camera/bb/v;)F

    move-result v2

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_5

    .line 1153
    iget-object p1, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-virtual {p1}, Lcn/nubia/camera/bb/v;->N()Lcn/nubia/camera/zoom/c;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v2}, Lcn/nubia/camera/bb/v;->A(Lcn/nubia/camera/bb/v;)F

    move-result v2

    invoke-virtual {p1, v2}, Lcn/nubia/camera/zoom/c;->a(F)V

    .line 1154
    iget-object p1, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {p1}, Lcn/nubia/camera/bb/v;->d(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/bb/ac;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1155
    iget-object p1, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {p1}, Lcn/nubia/camera/bb/v;->d(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/bb/ac;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-virtual {v2}, Lcn/nubia/camera/bb/v;->N()Lcn/nubia/camera/zoom/c;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v3}, Lcn/nubia/camera/bb/v;->F(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/camera/zoom/c;->a(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p1, v2}, Lcn/nubia/camera/bb/ac;->a(F)V

    .line 1157
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {p1}, Lcn/nubia/camera/bb/v;->G(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/zoom/arc/VideoZoomView;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v2}, Lcn/nubia/camera/bb/v;->A(Lcn/nubia/camera/bb/v;)F

    move-result v2

    invoke-virtual {p1, v2}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->setCenterText(F)V

    .line 1159
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {p1}, Lcn/nubia/camera/bb/v;->G(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/zoom/arc/VideoZoomView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {p1}, Lcn/nubia/camera/bb/v;->G(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/zoom/arc/VideoZoomView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 1162
    :cond_6
    iget-object p1, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {p1}, Lcn/nubia/camera/bb/v;->H(Lcn/nubia/camera/bb/v;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3

    .line 1160
    :cond_7
    :goto_2
    iget-object p1, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-static {p1}, Lcn/nubia/camera/bb/v;->H(Lcn/nubia/camera/bb/v;)Landroid/os/Handler;

    move-result-object p1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 1137
    :cond_8
    iget-object p1, p0, Lcn/nubia/camera/bb/v$11;->a:Lcn/nubia/camera/bb/v;

    invoke-virtual {p1}, Lcn/nubia/camera/bb/v;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    .line 1139
    invoke-virtual {p1, v0}, Lcn/nubia/camera/zoom/c;->a(Z)V

    :cond_9
    :goto_3
    return-void
.end method
