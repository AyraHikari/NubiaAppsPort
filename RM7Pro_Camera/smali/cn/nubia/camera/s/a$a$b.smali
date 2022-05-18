.class Lcn/nubia/camera/s/a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/s/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:[B

.field b:Landroid/graphics/Matrix;

.field c:[Lcn/nubia/camera/k/j;

.field final synthetic d:Lcn/nubia/camera/s/a$a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/s/a$a;[BLandroid/graphics/Matrix;[Lcn/nubia/camera/k/j;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcn/nubia/camera/s/a$a$b;->d:Lcn/nubia/camera/s/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p2, p0, Lcn/nubia/camera/s/a$a$b;->a:[B

    .line 498
    iput-object p3, p0, Lcn/nubia/camera/s/a$a$b;->b:Landroid/graphics/Matrix;

    .line 499
    iput-object p4, p0, Lcn/nubia/camera/s/a$a$b;->c:[Lcn/nubia/camera/k/j;

    return-void
.end method
