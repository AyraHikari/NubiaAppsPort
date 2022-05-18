.class Lcn/nubia/camera/ai/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ai/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ai/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ai/c;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcn/nubia/camera/ai/c$2;->a:Lcn/nubia/camera/ai/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcn/nubia/camera/ai/c$2;->a:Lcn/nubia/camera/ai/c;

    invoke-virtual {p1}, Lcn/nubia/camera/ai/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/ai/c$2$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ai/c$2$1;-><init>(Lcn/nubia/camera/ai/c$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
