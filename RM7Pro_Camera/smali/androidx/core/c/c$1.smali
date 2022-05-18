.class Landroidx/core/c/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/c/c;


# direct methods
.method constructor <init>(Landroidx/core/c/c;)V
    .locals 0

    .line 58
    iput-object p1, p0, Landroidx/core/c/c$1;->a:Landroidx/core/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    return v1

    .line 63
    :cond_0
    iget-object v0, p0, Landroidx/core/c/c$1;->a:Landroidx/core/c/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroidx/core/c/c;->a(Ljava/lang/Runnable;)V

    return v1

    .line 66
    :cond_1
    iget-object p1, p0, Landroidx/core/c/c$1;->a:Landroidx/core/c/c;

    invoke-virtual {p1}, Landroidx/core/c/c;->a()V

    return v1
.end method
