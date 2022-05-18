.class Lcn/nubia/camera/k/ag$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/ag;->a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/d;IZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/b/a/f;

.field final synthetic b:Lcn/nubia/camera/k/d;

.field final synthetic c:Landroid/hardware/camera2/TotalCaptureResult;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:I

.field final synthetic h:Lcn/nubia/camera/k/ag;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ag;Lcn/nubia/b/a/f;Lcn/nubia/camera/k/d;Landroid/hardware/camera2/TotalCaptureResult;IZZI)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/nubia/camera/k/ag$1;->h:Lcn/nubia/camera/k/ag;

    iput-object p2, p0, Lcn/nubia/camera/k/ag$1;->a:Lcn/nubia/b/a/f;

    iput-object p3, p0, Lcn/nubia/camera/k/ag$1;->b:Lcn/nubia/camera/k/d;

    iput-object p4, p0, Lcn/nubia/camera/k/ag$1;->c:Landroid/hardware/camera2/TotalCaptureResult;

    iput p5, p0, Lcn/nubia/camera/k/ag$1;->d:I

    iput-boolean p6, p0, Lcn/nubia/camera/k/ag$1;->e:Z

    iput-boolean p7, p0, Lcn/nubia/camera/k/ag$1;->f:Z

    iput p8, p0, Lcn/nubia/camera/k/ag$1;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/k/ag$1;->h:Lcn/nubia/camera/k/ag;

    iget-object v1, p0, Lcn/nubia/camera/k/ag$1;->a:Lcn/nubia/b/a/f;

    iget-object v2, p0, Lcn/nubia/camera/k/ag$1;->b:Lcn/nubia/camera/k/d;

    iget-object v3, p0, Lcn/nubia/camera/k/ag$1;->c:Landroid/hardware/camera2/TotalCaptureResult;

    iget v4, p0, Lcn/nubia/camera/k/ag$1;->d:I

    iget-boolean v5, p0, Lcn/nubia/camera/k/ag$1;->e:Z

    iget-boolean v6, p0, Lcn/nubia/camera/k/ag$1;->f:Z

    iget v7, p0, Lcn/nubia/camera/k/ag$1;->g:I

    invoke-static/range {v0 .. v7}, Lcn/nubia/camera/k/ag;->a(Lcn/nubia/camera/k/ag;Lcn/nubia/b/a/f;Lcn/nubia/camera/k/d;Landroid/hardware/camera2/TotalCaptureResult;IZZI)V

    return-void
.end method
