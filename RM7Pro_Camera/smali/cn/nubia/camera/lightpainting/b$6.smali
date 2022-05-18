.class Lcn/nubia/camera/lightpainting/b$6;
.super Lcn/nubia/camera/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/lightpainting/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/lightpainting/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/lightpainting/b;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/b$6;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-direct {p0}, Lcn/nubia/camera/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public b()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$6;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/b;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$6;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/b;->h(Lcn/nubia/camera/lightpainting/b;)V

    .line 327
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$6;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/b;->i(Lcn/nubia/camera/lightpainting/b;)V

    return-void
.end method
