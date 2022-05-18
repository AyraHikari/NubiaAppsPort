.class public Lcn/nubia/camera/k/x$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroid/util/Size;

.field b:Landroid/util/Size;

.field c:Landroid/util/Size;

.field final synthetic d:Lcn/nubia/camera/k/x;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcn/nubia/camera/k/x$b;->d:Lcn/nubia/camera/k/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p2, p0, Lcn/nubia/camera/k/x$b;->a:Landroid/util/Size;

    .line 365
    iput-object p3, p0, Lcn/nubia/camera/k/x$b;->b:Landroid/util/Size;

    .line 366
    iput-object p4, p0, Lcn/nubia/camera/k/x$b;->c:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public a()Landroid/util/Size;
    .locals 1

    .line 370
    iget-object v0, p0, Lcn/nubia/camera/k/x$b;->a:Landroid/util/Size;

    return-object v0
.end method

.method public b()Landroid/util/Size;
    .locals 1

    .line 374
    iget-object v0, p0, Lcn/nubia/camera/k/x$b;->b:Landroid/util/Size;

    return-object v0
.end method

.method public c()Landroid/util/Size;
    .locals 1

    .line 378
    iget-object v0, p0, Lcn/nubia/camera/k/x$b;->c:Landroid/util/Size;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 385
    :cond_0
    instance-of v1, p1, Lcn/nubia/camera/k/x$b;

    if-eqz v1, :cond_1

    .line 386
    check-cast p1, Lcn/nubia/camera/k/x$b;

    .line 387
    iget-object v1, p1, Lcn/nubia/camera/k/x$b;->b:Landroid/util/Size;

    iget-object v2, p0, Lcn/nubia/camera/k/x$b;->b:Landroid/util/Size;

    invoke-virtual {v1, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcn/nubia/camera/k/x$b;->a:Landroid/util/Size;

    iget-object v1, p0, Lcn/nubia/camera/k/x$b;->a:Landroid/util/Size;

    invoke-virtual {p1, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
