.class Lcn/nubia/i/h$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/h;


# direct methods
.method constructor <init>(Lcn/nubia/i/h;Landroid/os/Looper;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcn/nubia/i/h$1;->a:Lcn/nubia/i/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 203
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 204
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p0, Lcn/nubia/i/h$1;->a:Lcn/nubia/i/h;

    invoke-static {p1}, Lcn/nubia/i/h;->k(Lcn/nubia/i/h;)Lcn/nubia/i/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lcn/nubia/i/h$1;->a:Lcn/nubia/i/h;

    invoke-static {p1}, Lcn/nubia/i/h;->k(Lcn/nubia/i/h;)Lcn/nubia/i/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/i/h$1;->a:Lcn/nubia/i/h;

    invoke-static {v0}, Lcn/nubia/i/h;->h(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcn/nubia/i/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method
