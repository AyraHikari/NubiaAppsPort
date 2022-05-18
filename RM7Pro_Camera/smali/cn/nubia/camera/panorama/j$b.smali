.class final Lcn/nubia/camera/panorama/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/panorama/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 573
    iput v0, p0, Lcn/nubia/camera/panorama/j$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/panorama/j$1;)V
    .locals 0

    .line 572
    invoke-direct {p0}, Lcn/nubia/camera/panorama/j$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 583
    iput v0, p0, Lcn/nubia/camera/panorama/j$b;->a:I

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 577
    iget v0, p0, Lcn/nubia/camera/panorama/j$b;->a:I

    or-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/panorama/j$b;->a:I

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 586
    iget v0, p0, Lcn/nubia/camera/panorama/j$b;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
