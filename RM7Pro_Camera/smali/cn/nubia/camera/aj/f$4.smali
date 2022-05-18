.class Lcn/nubia/camera/aj/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/f;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/aj/h;Lcn/nubia/camera/aj/a/a;Lcn/nubia/camera/z/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/f;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcn/nubia/camera/aj/f$4;->a:Lcn/nubia/camera/aj/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 207
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/ak/a;->a(Landroid/hardware/camera2/CaptureResult;)V

    .line 208
    iget-object p1, p0, Lcn/nubia/camera/aj/f$4;->a:Lcn/nubia/camera/aj/f;

    invoke-static {p1}, Lcn/nubia/camera/aj/f;->o(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/aj/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/camera/aj/h;->b(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method
