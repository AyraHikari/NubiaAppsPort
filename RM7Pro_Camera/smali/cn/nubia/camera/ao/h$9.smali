.class Lcn/nubia/camera/ao/h$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/ao/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ao/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/h;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcn/nubia/camera/ao/h$9;->a:Lcn/nubia/camera/ao/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 864
    iget-object v0, p0, Lcn/nubia/camera/ao/h$9;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v0}, Lcn/nubia/camera/ao/h;->s(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/ao/h$9$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/ao/h$9$1;-><init>(Lcn/nubia/camera/ao/h$9;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
