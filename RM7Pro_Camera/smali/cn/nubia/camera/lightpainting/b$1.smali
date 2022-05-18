.class Lcn/nubia/camera/lightpainting/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/lightpainting/b;
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

    .line 109
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/b$1;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snapshot received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightPaitingFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$1;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/camera/lightpainting/b;->a(Lcn/nubia/camera/lightpainting/b;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 116
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$1;->a:Lcn/nubia/camera/lightpainting/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/camera/lightpainting/b;->a(Lcn/nubia/camera/lightpainting/b;Z)Z

    return-void
.end method
