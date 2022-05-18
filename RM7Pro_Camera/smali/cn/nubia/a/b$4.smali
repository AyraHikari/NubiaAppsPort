.class Lcn/nubia/a/b$4;
.super Ljava/lang/Thread;
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

    .line 94
    iput-object p1, p0, Lcn/nubia/a/b$4;->a:Lcn/nubia/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 96
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 97
    iput v1, v0, Landroid/os/Message;->what:I

    .line 98
    iget-object v1, p0, Lcn/nubia/a/b$4;->a:Lcn/nubia/a/b;

    invoke-static {v1}, Lcn/nubia/a/b;->d(Lcn/nubia/a/b;)[Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/a/b;->a(Lcn/nubia/a/b;[Landroid/view/View;)[Landroid/view/View;

    .line 99
    iget-object v1, p0, Lcn/nubia/a/b$4;->a:Lcn/nubia/a/b;

    invoke-static {v1}, Lcn/nubia/a/b;->e(Lcn/nubia/a/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
