.class public Lcn/nubia/camera/aimoon/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aimoon/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:[B

.field e:I

.field f:Landroid/hardware/camera2/TotalCaptureResult;

.field final synthetic g:Lcn/nubia/camera/aimoon/g;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/aimoon/g;II[BILandroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcn/nubia/camera/aimoon/g$a;->g:Lcn/nubia/camera/aimoon/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput p2, p0, Lcn/nubia/camera/aimoon/g$a;->a:I

    .line 475
    iput p3, p0, Lcn/nubia/camera/aimoon/g$a;->b:I

    .line 476
    iput-object p4, p0, Lcn/nubia/camera/aimoon/g$a;->d:[B

    .line 477
    iput p5, p0, Lcn/nubia/camera/aimoon/g$a;->c:I

    .line 478
    iput-object p6, p0, Lcn/nubia/camera/aimoon/g$a;->f:Landroid/hardware/camera2/TotalCaptureResult;

    .line 479
    iput p7, p0, Lcn/nubia/camera/aimoon/g$a;->e:I

    return-void
.end method
