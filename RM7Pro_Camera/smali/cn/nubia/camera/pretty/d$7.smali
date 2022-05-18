.class Lcn/nubia/camera/pretty/d$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/d;->c(Landroid/view/View;)V
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

    .line 398
    iput-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 402
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->b(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    .line 403
    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->b(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    .line 404
    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->b(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-ne p1, v0, :cond_5

    .line 405
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/f/b;->b()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 414
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->d(Lcn/nubia/camera/pretty/d;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    return-void

    .line 418
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->c(Lcn/nubia/camera/pretty/d;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 419
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->d(Lcn/nubia/camera/pretty/d;)Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f0801ee

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 420
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->c(Lcn/nubia/camera/pretty/d;)Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f0801ed

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 421
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->d(Lcn/nubia/camera/pretty/d;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {v1}, Lcn/nubia/camera/pretty/d;->f(Lcn/nubia/camera/pretty/d;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->c(Lcn/nubia/camera/pretty/d;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {v1}, Lcn/nubia/camera/pretty/d;->e(Lcn/nubia/camera/pretty/d;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->h(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/WaterDropSeekbar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 426
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->g(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/WaterDropSeekbar;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 427
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->c(Lcn/nubia/camera/pretty/d;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    .line 428
    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->i(Lcn/nubia/camera/pretty/d;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 429
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->j(Lcn/nubia/camera/pretty/d;)V

    :cond_4
    return-void

    .line 406
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "State limit, can\'t enable pretty tab. (DeviceState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    .line 407
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

    iget-object v0, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    .line 408
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

    iget-object v0, p0, Lcn/nubia/camera/pretty/d$7;->a:Lcn/nubia/camera/pretty/d;

    .line 409
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

    .line 410
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/f/b;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PortraitPrettySettingLayout"

    .line 406
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
