.class Lcn/nubia/camera/x/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/x/a;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/x/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/x/a;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcn/nubia/camera/x/a$5;->a:Lcn/nubia/camera/x/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcn/nubia/camera/x/a$5;->a:Lcn/nubia/camera/x/a;

    invoke-static {v0}, Lcn/nubia/camera/x/a;->c(Lcn/nubia/camera/x/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/x/a;->b(Lcn/nubia/camera/x/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/x/a;->a(Lcn/nubia/camera/x/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 482
    iget-object v0, p0, Lcn/nubia/camera/x/a$5;->a:Lcn/nubia/camera/x/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/x/a;->a(Lcn/nubia/camera/x/a;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 484
    iget-object v0, p0, Lcn/nubia/camera/x/a$5;->a:Lcn/nubia/camera/x/a;

    invoke-static {v0}, Lcn/nubia/camera/x/a;->g(Lcn/nubia/camera/x/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/x/a$5$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/x/a$5$1;-><init>(Lcn/nubia/camera/x/a$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
