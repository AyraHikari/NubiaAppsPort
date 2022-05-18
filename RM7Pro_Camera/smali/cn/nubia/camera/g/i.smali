.class public Lcn/nubia/camera/g/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcn/nubia/camera/ad/a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/nubia/camera/g/i;->a:Lcn/nubia/camera/ad/a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    const-string v1, "ThumbnailOnClickListener"

    if-nez v0, :cond_0

    const-string p1, "Thumbnail is disabled"

    .line 34
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Go to gallery,isSecureCamera"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/g/i;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcn/nubia/camera/g/i;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/d/c;->h:Lcn/nubia/camera/d/c;

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-eq v2, v3, :cond_4

    .line 41
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/d/c;->k:Lcn/nubia/camera/d/c;

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_5

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State error, cannot view pictures. FunctionState: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "; DeviceState: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 47
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/g/i;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/l/a/b;->e()Lcn/nubia/l/a/a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 49
    invoke-virtual {v0}, Lcn/nubia/l/a/a;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object p1, p0, Lcn/nubia/camera/g/i;->a:Lcn/nubia/camera/ad/a;

    .line 50
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->D()Z

    move-result v7

    iget-object p1, p0, Lcn/nubia/camera/g/i;->a:Lcn/nubia/camera/ad/a;

    .line 51
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->k()Z

    move-result v8

    iget-object p1, p0, Lcn/nubia/camera/g/i;->a:Lcn/nubia/camera/ad/a;

    .line 52
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->P()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-boolean v13, v0, Lcn/nubia/l/a/a;->a:Z

    .line 49
    invoke-static/range {v5 .. v13}, Lcn/nubia/camera/ba/a;->a(Landroid/net/Uri;Landroid/content/Context;ZZJJZ)V

    goto :goto_2

    .line 55
    :cond_6
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/g/i;->a:Lcn/nubia/camera/ad/a;

    .line 56
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f015d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v0, v4}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    :goto_2
    return-void
.end method
