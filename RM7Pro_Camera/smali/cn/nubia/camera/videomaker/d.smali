.class public Lcn/nubia/camera/videomaker/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Landroid/graphics/Bitmap;

.field d:Ljava/lang/String;

.field e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcn/nubia/camera/videomaker/d;->b:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcn/nubia/camera/videomaker/d;->c:Landroid/graphics/Bitmap;

    .line 15
    iput-object v0, p0, Lcn/nubia/camera/videomaker/d;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/d;->e:Z

    .line 22
    iput p1, p0, Lcn/nubia/camera/videomaker/d;->a:I

    .line 23
    iput-object p2, p0, Lcn/nubia/camera/videomaker/d;->b:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcn/nubia/camera/videomaker/d;->c:Landroid/graphics/Bitmap;

    .line 25
    iput-object p4, p0, Lcn/nubia/camera/videomaker/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcn/nubia/camera/videomaker/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcn/nubia/camera/videomaker/d;->e:Z

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 37
    iget-object v0, p0, Lcn/nubia/camera/videomaker/d;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/d;->e:Z

    return v0
.end method

.method public d()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/nubia/camera/videomaker/d;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcn/nubia/camera/videomaker/d;->c:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
