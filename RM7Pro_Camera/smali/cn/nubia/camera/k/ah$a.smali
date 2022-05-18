.class Lcn/nubia/camera/k/ah$a;
.super Lcn/nubia/b/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/ah;

.field private b:Lcn/nubia/camera/k/q;

.field private c:Lcn/nubia/camera/k/u;

.field private d:Lcn/nubia/camera/selfieflash/c;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;Lcn/nubia/camera/selfieflash/c;)V
    .locals 0

    .line 1202
    iput-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-direct {p0}, Lcn/nubia/b/a$a;-><init>()V

    .line 1203
    iput-object p2, p0, Lcn/nubia/camera/k/ah$a;->b:Lcn/nubia/camera/k/q;

    .line 1204
    iput-object p3, p0, Lcn/nubia/camera/k/ah$a;->c:Lcn/nubia/camera/k/u;

    .line 1205
    iput-object p4, p0, Lcn/nubia/camera/k/ah$a;->d:Lcn/nubia/camera/selfieflash/c;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a;I)V
    .locals 0

    .line 1215
    invoke-super {p0, p1, p2}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;I)V

    return-void
.end method

.method public a(Lcn/nubia/b/a;IJ)V
    .locals 0

    .line 1210
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;IJ)V

    return-void
.end method

.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 1220
    invoke-super/range {p0 .. p6}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 1221
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->w(Lcn/nubia/camera/k/ah;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->x(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/selfieflash/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->q(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/x;->O()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1222
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->b:Lcn/nubia/camera/k/q;

    if-eqz p1, :cond_1

    .line 1223
    invoke-interface {p1}, Lcn/nubia/camera/k/q;->a()V

    .line 1227
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->c:Lcn/nubia/camera/k/u;

    if-eqz p1, :cond_2

    .line 1228
    invoke-interface {p1, p3, p4}, Lcn/nubia/camera/k/u;->a(J)V

    :cond_2
    return-void
.end method

.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1234
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 1235
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->c:Lcn/nubia/camera/k/u;

    if-eqz p1, :cond_0

    .line 1236
    invoke-interface {p1, p3}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 1242
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 1243
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->c:Lcn/nubia/camera/k/u;

    if-eqz p1, :cond_0

    .line 1244
    invoke-interface {p1, p3}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_0
    const-string p1, "StreamController"

    const-string p2, "onCaptureCompleted"

    .line 1246
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->x(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/selfieflash/c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->q(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/x;->O()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    .line 1249
    invoke-static {p1}, Lcn/nubia/camera/k/ah;->w(Lcn/nubia/camera/k/ah;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1250
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->b:Lcn/nubia/camera/k/q;

    if-eqz p1, :cond_3

    .line 1251
    invoke-interface {p1}, Lcn/nubia/camera/k/q;->a()V

    .line 1254
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->d:Lcn/nubia/camera/selfieflash/c;

    if-eqz p1, :cond_4

    .line 1255
    invoke-virtual {p1}, Lcn/nubia/camera/selfieflash/c;->a()V

    .line 1257
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->B()Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 1260
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->D()[Lcn/nubia/b/m;

    move-result-object p1

    if-nez p1, :cond_6

    goto/16 :goto_2

    .line 1272
    :cond_6
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->y(Lcn/nubia/camera/k/ah;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-nez p1, :cond_7

    .line 1273
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move p1, p3

    goto :goto_0

    :cond_7
    move p1, p2

    .line 1276
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->z(Lcn/nubia/camera/k/ah;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1278
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/k/a/a$b;->t:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move p1, p3

    .line 1284
    :cond_8
    iget-object p2, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p2}, Lcn/nubia/camera/k/ah;->A(Lcn/nubia/camera/k/ah;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 1286
    :try_start_1
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move p1, p3

    .line 1292
    :cond_9
    iget-object p2, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p2}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/k/x;->V()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1293
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->B(Lcn/nubia/camera/k/ah;)V

    .line 1294
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/k/x$a;->a:Lcn/nubia/camera/k/x$a;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/k/x;->a(Lcn/nubia/camera/k/x$a;)V

    goto :goto_1

    :cond_a
    move p3, p1

    :goto_1
    if-eqz p3, :cond_b

    .line 1298
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->k()V

    .line 1300
    :cond_b
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->d(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/ab;->i()V

    .line 1302
    iget-object p1, p0, Lcn/nubia/camera/k/ah$a;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->C()V

    :cond_c
    :goto_2
    return-void
.end method
