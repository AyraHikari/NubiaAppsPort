.class Lcn/nubia/i/e$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/e;


# direct methods
.method constructor <init>(Lcn/nubia/i/e;Landroid/os/Looper;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcn/nubia/i/e$1;->a:Lcn/nubia/i/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/i/c;

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p1}, Lcn/nubia/i/c;->b()Lcn/nubia/i/c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p1}, Lcn/nubia/i/c;->b()Lcn/nubia/i/c$a;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/i/c;->a()Lcn/nubia/i/i;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/nubia/i/c$a;->a(Lcn/nubia/i/i;)V

    :cond_1
    :goto_0
    return-void
.end method
