.class Lcn/nubia/camera/q/e$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/e;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/q/e;Landroid/os/Looper;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/nubia/camera/q/e$a;->a:Lcn/nubia/camera/q/e;

    .line 71
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 76
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/e$a;->a:Lcn/nubia/camera/q/e;

    invoke-static {p1}, Lcn/nubia/camera/q/e;->a(Lcn/nubia/camera/q/e;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 86
    iget-object p1, p0, Lcn/nubia/camera/q/e$a;->a:Lcn/nubia/camera/q/e;

    invoke-static {p1}, Lcn/nubia/camera/q/e;->b(Lcn/nubia/camera/q/e;)Landroid/widget/ImageView;

    move-result-object p1

    const v1, 0x7f080130

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object p1, p0, Lcn/nubia/camera/q/e$a;->a:Lcn/nubia/camera/q/e;

    invoke-static {p1, v0}, Lcn/nubia/camera/q/e;->a(Lcn/nubia/camera/q/e;Z)Z

    .line 88
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/e$a;->removeMessages(I)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/q/e$a;->a:Lcn/nubia/camera/q/e;

    invoke-static {p1}, Lcn/nubia/camera/q/e;->a(Lcn/nubia/camera/q/e;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 79
    iget-object p1, p0, Lcn/nubia/camera/q/e$a;->a:Lcn/nubia/camera/q/e;

    invoke-static {p1}, Lcn/nubia/camera/q/e;->b(Lcn/nubia/camera/q/e;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f08012f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object p1, p0, Lcn/nubia/camera/q/e$a;->a:Lcn/nubia/camera/q/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/q/e;->a(Lcn/nubia/camera/q/e;Z)Z

    .line 81
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/e$a;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method
