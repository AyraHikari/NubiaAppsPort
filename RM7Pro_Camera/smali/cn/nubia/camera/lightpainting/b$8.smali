.class Lcn/nubia/camera/lightpainting/b$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/lightpainting/b;->b(Z)V
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

    .line 444
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/b$8;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 2

    .line 447
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$8;->a:Lcn/nubia/camera/lightpainting/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/lightpainting/b;->h(Lcn/nubia/camera/lightpainting/b;Z)Z

    .line 448
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$8;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/b;->n(Lcn/nubia/camera/lightpainting/b;)V

    if-eqz p1, :cond_0

    .line 450
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$8;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/camera/lightpainting/b;->a(Lcn/nubia/camera/lightpainting/b;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method
