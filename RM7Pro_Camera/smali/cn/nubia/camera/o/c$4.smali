.class Lcn/nubia/camera/o/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/o/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/o/c;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/o/c;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v0}, Lcn/nubia/camera/o/c;->g(Lcn/nubia/camera/o/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v0}, Lcn/nubia/camera/o/c;->h(Lcn/nubia/camera/o/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    .line 431
    iget-object v0, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v0}, Lcn/nubia/camera/o/c;->h(Lcn/nubia/camera/o/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 432
    iget-object v0, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v0}, Lcn/nubia/camera/o/c;->i(Lcn/nubia/camera/o/c;)Lcom/android/common/ui/NubiaProgressWheel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->b()V

    .line 433
    iget-object v0, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v0}, Lcn/nubia/camera/o/c;->i(Lcn/nubia/camera/o/c;)Lcom/android/common/ui/NubiaProgressWheel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ElectronicFnoFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 454
    iget-object v2, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v2}, Lcn/nubia/camera/o/c;->l(Lcn/nubia/camera/o/c;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 455
    iget-object v3, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v3, v0, v1}, Lcn/nubia/camera/o/c;->a(Lcn/nubia/camera/o/c;J)J

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 457
    iget-object v1, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v1}, Lcn/nubia/camera/o/c;->h(Lcn/nubia/camera/o/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v1

    sget-object v3, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v1, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 458
    iget-object v1, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v1}, Lcn/nubia/camera/o/c;->h(Lcn/nubia/camera/o/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v1

    new-instance v3, Lcn/nubia/camera/o/c$4$1;

    invoke-direct {v3, p0}, Lcn/nubia/camera/o/c$4$1;-><init>(Lcn/nubia/camera/o/c$4;)V

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZILcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    goto :goto_0

    :cond_0
    if-ge p1, v1, :cond_1

    .line 465
    iget-object v1, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v1}, Lcn/nubia/camera/o/c;->h(Lcn/nubia/camera/o/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v1

    sget-object v3, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v1, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 466
    iget-object v1, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v1}, Lcn/nubia/camera/o/c;->h(Lcn/nubia/camera/o/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "ElectronicFnoFragment"

    const-string v1, "onCapturecanceled"

    .line 439
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v0}, Lcn/nubia/camera/o/c;->j(Lcn/nubia/camera/o/c;)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "ElectronicFnoFragment"

    const-string v1, "onCaptureCompleted"

    .line 445
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v0}, Lcn/nubia/camera/o/c;->j(Lcn/nubia/camera/o/c;)V

    .line 447
    iget-object v0, p0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v0}, Lcn/nubia/camera/o/c;->k(Lcn/nubia/camera/o/c;)V

    return-void
.end method
