.class Lcn/nubia/camera/k/ah$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Ljava/lang/String;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/ah;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ah;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcn/nubia/camera/k/ah$1;->a:Lcn/nubia/camera/k/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/k/ah$1;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/k/ah$1;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/k/ah$1;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->C()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/camera/k/ah$1;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->C()V

    .line 182
    throw v0
.end method
