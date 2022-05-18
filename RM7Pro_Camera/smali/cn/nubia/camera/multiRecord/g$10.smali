.class Lcn/nubia/camera/multiRecord/g$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/multiRecord/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 1285
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$10;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 4

    .line 1293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1294
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g$10;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/g;->R(Lcn/nubia/camera/multiRecord/g;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$10;->a:Lcn/nubia/camera/multiRecord/g;

    .line 1295
    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->D(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$10;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->D(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_1

    .line 1296
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$10;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->D(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->b()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
