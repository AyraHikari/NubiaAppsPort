.class Lcn/nubia/camera/z/a/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/z/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/z/a/d;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/z/a/d;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcn/nubia/camera/z/a/d$b;->a:Lcn/nubia/camera/z/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/z/a/d;Lcn/nubia/camera/z/a/d$1;)V
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lcn/nubia/camera/z/a/d$b;-><init>(Lcn/nubia/camera/z/a/d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 1

    const-string p4, "llw"

    const-string v0, "tackPicture onPreviewDataCopy"

    .line 318
    invoke-static {p4, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p4, p0, Lcn/nubia/camera/z/a/d$b;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {p4}, Lcn/nubia/camera/z/a/d;->g(Lcn/nubia/camera/z/a/d;)Landroid/os/Handler;

    move-result-object p4

    if-nez p4, :cond_0

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mDrawHandler is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/z/a/d$b;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {p2}, Lcn/nubia/camera/z/a/d;->g(Lcn/nubia/camera/z/a/d;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ignore this onPreviewDataCopy"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoMakerRender"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_0
    iget-object p4, p0, Lcn/nubia/camera/z/a/d$b;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {p4}, Lcn/nubia/camera/z/a/d;->g(Lcn/nubia/camera/z/a/d;)Landroid/os/Handler;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p4

    .line 324
    iget-object v0, p0, Lcn/nubia/camera/z/a/d$b;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {v0, p2}, Lcn/nubia/camera/z/a/d;->a(Lcn/nubia/camera/z/a/d;I)I

    .line 325
    iget-object p2, p0, Lcn/nubia/camera/z/a/d$b;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {p2, p3}, Lcn/nubia/camera/z/a/d;->b(Lcn/nubia/camera/z/a/d;I)I

    .line 326
    iput-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 327
    iget-object p1, p0, Lcn/nubia/camera/z/a/d$b;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {p1}, Lcn/nubia/camera/z/a/d;->g(Lcn/nubia/camera/z/a/d;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
