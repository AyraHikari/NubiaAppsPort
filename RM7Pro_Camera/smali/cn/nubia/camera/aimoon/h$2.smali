.class Lcn/nubia/camera/aimoon/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aimoon/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/h;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/h;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcn/nubia/camera/aimoon/h$2;->a:Lcn/nubia/camera/aimoon/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h$2;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/h;->a(Lcn/nubia/camera/aimoon/h;)Lcn/nubia/camera/aimoon/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/aimoon/i;->a(J)V

    .line 244
    iget-object p1, p0, Lcn/nubia/camera/aimoon/h$2;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/h;->b(Lcn/nubia/camera/aimoon/h;)Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->a()Z

    .line 245
    iget-object p1, p0, Lcn/nubia/camera/aimoon/h$2;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/h;->c(Lcn/nubia/camera/aimoon/h;)V

    const/4 p1, 0x1

    return p1
.end method
