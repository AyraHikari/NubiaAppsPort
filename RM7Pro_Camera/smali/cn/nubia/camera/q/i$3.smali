.class Lcn/nubia/camera/q/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/b;


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

    .line 1412
    iput-object p1, p0, Lcn/nubia/camera/q/i$3;->a:Lcn/nubia/camera/q/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1415
    iget-object v0, p0, Lcn/nubia/camera/q/i$3;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/i;->a(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcn/nubia/camera/q/i$3;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcn/nubia/camera/q/i$3;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/ah;->a(F)V

    :cond_0
    return-void
.end method
