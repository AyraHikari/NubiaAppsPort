.class Lcn/nubia/camera/b/k$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/b/k;


# direct methods
.method constructor <init>(Lcn/nubia/camera/b/k;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcn/nubia/camera/b/k$4;->a:Lcn/nubia/camera/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 311
    :try_start_0
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->g:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 312
    iget-object v1, p0, Lcn/nubia/camera/b/k$4;->a:Lcn/nubia/camera/b/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;F)F

    .line 314
    iget-object v0, p0, Lcn/nubia/camera/b/k$4;->a:Lcn/nubia/camera/b/k;

    invoke-static {v0, p1}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 316
    sget-object p1, Lcn/nubia/camera/b/i;->d:[Ljava/lang/Object;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 318
    iget-object v2, p0, Lcn/nubia/camera/b/k$4;->a:Lcn/nubia/camera/b/k;

    invoke-static {v2}, Lcn/nubia/camera/b/k;->g(Lcn/nubia/camera/b/k;)J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    long-to-float v3, v3

    cmpg-float v3, v3, p1

    if-gez v3, :cond_1

    iget-object v3, p0, Lcn/nubia/camera/b/k$4;->a:Lcn/nubia/camera/b/k;

    invoke-static {v3}, Lcn/nubia/camera/b/k;->h(Lcn/nubia/camera/b/k;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-float v0, v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {v2, p1}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;Z)Z

    .line 319
    iget-object p1, p0, Lcn/nubia/camera/b/k$4;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->i(Lcn/nubia/camera/b/k;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 321
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NormalAIControl"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
