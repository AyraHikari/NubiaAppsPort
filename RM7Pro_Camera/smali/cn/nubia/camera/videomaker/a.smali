.class public Lcn/nubia/camera/videomaker/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcn/nubia/camera/videomaker/c$a;

.field protected b:Landroid/graphics/Bitmap;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcn/nubia/camera/videomaker/c$a;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a;->b:Landroid/graphics/Bitmap;

    .line 20
    iput p1, p0, Lcn/nubia/camera/videomaker/a;->d:I

    .line 21
    iput-object p2, p0, Lcn/nubia/camera/videomaker/a;->c:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcn/nubia/camera/videomaker/a;->a:Lcn/nubia/camera/videomaker/c$a;

    .line 23
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/a;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 27
    invoke-static {p0}, Lcn/nubia/camera/videomaker/e;->a(Lcn/nubia/camera/videomaker/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/videomaker/a;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public b()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcn/nubia/camera/videomaker/a;->b:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcn/nubia/camera/videomaker/c$a;
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a;->a:Lcn/nubia/camera/videomaker/c$a;

    return-object v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
