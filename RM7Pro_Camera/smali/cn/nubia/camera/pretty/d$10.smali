.class Lcn/nubia/camera/pretty/d$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/d;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/d;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcn/nubia/camera/pretty/d$10;->a:Lcn/nubia/camera/pretty/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 480
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$10;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->b(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/pretty/d$10;->a:Lcn/nubia/camera/pretty/d;

    .line 481
    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->b(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/pretty/d$10;->a:Lcn/nubia/camera/pretty/d;

    .line 482
    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->b(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-ne p1, v0, :cond_1

    .line 483
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/f/b;->b()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$10;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->j(Lcn/nubia/camera/pretty/d;)V

    return-void

    .line 484
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "State limit, can\'t enable pretty tab. (DeviceState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/pretty/d$10;->a:Lcn/nubia/camera/pretty/d;

    .line 485
    invoke-static {v0}, Lcn/nubia/camera/pretty/d;->b(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; FunctionState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/pretty/d$10;->a:Lcn/nubia/camera/pretty/d;

    .line 486
    invoke-static {v0}, Lcn/nubia/camera/pretty/d;->b(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; UIState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/pretty/d$10;->a:Lcn/nubia/camera/pretty/d;

    .line 487
    invoke-static {v0}, Lcn/nubia/camera/pretty/d;->b(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; isCommandEnable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 488
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/f/b;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PortraitPrettySettingLayout"

    .line 484
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
