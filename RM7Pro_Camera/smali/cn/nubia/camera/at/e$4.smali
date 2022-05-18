.class Lcn/nubia/camera/at/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/e;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcn/nubia/camera/at/e$4;->a:Lcn/nubia/camera/at/e;

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

    .line 263
    iget-object v0, p0, Lcn/nubia/camera/at/e$4;->a:Lcn/nubia/camera/at/e;

    invoke-static {v0, p1}, Lcn/nubia/camera/at/e;->a(Lcn/nubia/camera/at/e;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    return-void
.end method
