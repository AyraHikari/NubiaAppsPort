.class public Lcn/nubia/camera/dualcameracalibration/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcn/nubia/camera/dualcameracalibration/i;->a:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/i;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 10
    iget v0, p0, Lcn/nubia/camera/dualcameracalibration/i;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/camera/dualcameracalibration/i;->a:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 14
    iget v0, p0, Lcn/nubia/camera/dualcameracalibration/i;->a:I

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/i;->b:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/i;->b:Z

    return v0
.end method
