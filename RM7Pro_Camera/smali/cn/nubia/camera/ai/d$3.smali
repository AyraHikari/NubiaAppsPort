.class Lcn/nubia/camera/ai/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ai/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ai/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ai/d;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcn/nubia/camera/ai/d$3;->a:Lcn/nubia/camera/ai/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 87
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/ak/a;->a(Landroid/hardware/camera2/CaptureResult;)V

    .line 88
    iget-object p1, p0, Lcn/nubia/camera/ai/d$3;->a:Lcn/nubia/camera/ai/d;

    invoke-static {p1}, Lcn/nubia/camera/ai/d;->e(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method
