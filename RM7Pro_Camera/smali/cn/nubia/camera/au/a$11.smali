.class Lcn/nubia/camera/au/a$11;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/au/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcn/nubia/camera/au/a$11;->a:Lcn/nubia/camera/au/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 201
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/au/a$11;->a:Lcn/nubia/camera/au/a;

    invoke-static {p1}, Lcn/nubia/camera/au/a;->k(Lcn/nubia/camera/au/a;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/au/a$11;->a:Lcn/nubia/camera/au/a;

    invoke-static {p1}, Lcn/nubia/camera/au/a;->i(Lcn/nubia/camera/au/a;)V

    .line 207
    iget-object p1, p0, Lcn/nubia/camera/au/a$11;->a:Lcn/nubia/camera/au/a;

    invoke-static {p1}, Lcn/nubia/camera/au/a;->j(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/au/b/b;->d()V

    goto :goto_0

    .line 203
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/au/a$11;->a:Lcn/nubia/camera/au/a;

    invoke-static {p1}, Lcn/nubia/camera/au/a;->h(Lcn/nubia/camera/au/a;)V

    :goto_0
    return-void
.end method
