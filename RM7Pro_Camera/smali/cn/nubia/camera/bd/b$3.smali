.class Lcn/nubia/camera/bd/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bd/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bd/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bd/b;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcn/nubia/camera/bd/b$3;->a:Lcn/nubia/camera/bd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcn/nubia/camera/bd/b$3;->a:Lcn/nubia/camera/bd/b;

    invoke-virtual {v0}, Lcn/nubia/camera/bd/b;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/bd/b$3;->a:Lcn/nubia/camera/bd/b;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/camera/bd/b;->a(Lcn/nubia/camera/bd/b;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method
