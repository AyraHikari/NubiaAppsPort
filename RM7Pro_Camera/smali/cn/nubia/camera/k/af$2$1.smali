.class Lcn/nubia/camera/k/af$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/af$2;->onConfingSuccess(Lcn/nubia/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/af$2;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/af$2;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/nubia/camera/k/af$2$1;->a:Lcn/nubia/camera/k/af$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcn/nubia/camera/k/af$2$1;->a:Lcn/nubia/camera/k/af$2;

    iget-object p1, p1, Lcn/nubia/camera/k/af$2;->a:Lcn/nubia/camera/k/af;

    invoke-static {p1}, Lcn/nubia/camera/k/af;->a(Lcn/nubia/camera/k/af;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    const-string p1, "SlowShutterCapture"

    const-string v0, "Reconfig take"

    .line 110
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcn/nubia/camera/k/af$2$1;->a:Lcn/nubia/camera/k/af$2;

    iget-object p1, p1, Lcn/nubia/camera/k/af$2;->a:Lcn/nubia/camera/k/af;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/k/af;->b(Lcn/nubia/camera/k/af;Z)V

    return-void
.end method
