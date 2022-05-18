.class Lcn/nubia/a/b$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/a/b;


# direct methods
.method constructor <init>(Lcn/nubia/a/b;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/nubia/a/b$1;->a:Lcn/nubia/a/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/nubia/a/b$1;->a:Lcn/nubia/a/b;

    invoke-static {v0}, Lcn/nubia/a/b;->a(Lcn/nubia/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "CameraFamilyFragment"

    const-string v0, "first init views and state"

    .line 83
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcn/nubia/a/b$1;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->b(Lcn/nubia/a/b;)V

    .line 85
    iget-object p1, p0, Lcn/nubia/a/b$1;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->c(Lcn/nubia/a/b;)V

    :goto_0
    return-void
.end method
