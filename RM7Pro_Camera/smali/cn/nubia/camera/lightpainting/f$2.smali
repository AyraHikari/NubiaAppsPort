.class Lcn/nubia/camera/lightpainting/f$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/lightpainting/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/lightpainting/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/lightpainting/f;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/f$2;->a:Lcn/nubia/camera/lightpainting/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 200
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 201
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/f$2;->a:Lcn/nubia/camera/lightpainting/f;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/f;->b(Lcn/nubia/camera/lightpainting/f;)Lcn/nubia/camera/lightpainting/f$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/f$2;->a:Lcn/nubia/camera/lightpainting/f;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/f;->b(Lcn/nubia/camera/lightpainting/f;)Lcn/nubia/camera/lightpainting/f$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/lightpainting/f$a;->a()V

    .line 205
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/f$2;->a:Lcn/nubia/camera/lightpainting/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/lightpainting/f;->a(Lcn/nubia/camera/lightpainting/f;Lcn/nubia/camera/lightpainting/f$a;)Lcn/nubia/camera/lightpainting/f$a;

    :cond_1
    :goto_0
    return-void
.end method
