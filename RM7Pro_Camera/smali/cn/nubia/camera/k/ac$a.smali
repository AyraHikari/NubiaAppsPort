.class Lcn/nubia/camera/k/ac$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/ac;

.field private b:Lcn/nubia/b/k;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ac;Lcn/nubia/b/k;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcn/nubia/camera/k/ac$a;->a:Lcn/nubia/camera/k/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p2, p0, Lcn/nubia/camera/k/ac$a;->b:Lcn/nubia/b/k;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/o;)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcn/nubia/camera/k/ac$a;->a:Lcn/nubia/camera/k/ac;

    iget-object v1, p0, Lcn/nubia/camera/k/ac$a;->b:Lcn/nubia/b/k;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/nubia/camera/k/ac;->a(Lcn/nubia/b/k;Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/o;)Z

    return-void
.end method
