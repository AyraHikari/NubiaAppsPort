.class Lcn/nubia/camera/aimoon/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/h;->e()V
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

    .line 364
    iput-object p1, p0, Lcn/nubia/camera/aimoon/h$4;->a:Lcn/nubia/camera/aimoon/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h$4;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/h;->k(Lcn/nubia/camera/aimoon/h;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h$4;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/h;->c(Lcn/nubia/camera/aimoon/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h$4;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/h;->l(Lcn/nubia/camera/aimoon/h;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/h$4;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {v1}, Lcn/nubia/camera/aimoon/h;->l(Lcn/nubia/camera/aimoon/h;)V

    .line 375
    throw v0
.end method
