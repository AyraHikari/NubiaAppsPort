.class Lcn/nubia/camera/ah/a$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ah/a;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ah/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ah/a;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcn/nubia/camera/ah/a$13;->a:Lcn/nubia/camera/ah/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 573
    iget-object p1, p0, Lcn/nubia/camera/ah/a$13;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->k(Lcn/nubia/camera/ah/a;)Z

    move-result p1

    const-string v0, "MultiExposureFragment"

    if-eqz p1, :cond_0

    .line 574
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMultiExposureDoneButton onClick mTouchScreenDisabled = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/ah/a$13;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v1}, Lcn/nubia/camera/ah/a;->k(Lcn/nubia/camera/ah/a;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "mMultiExposureDoneButton onClick"

    .line 577
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object p1, p0, Lcn/nubia/camera/ah/a$13;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->c(Lcn/nubia/camera/ah/a;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 579
    iget-object p1, p0, Lcn/nubia/camera/ah/a$13;->a:Lcn/nubia/camera/ah/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/ah/a;->c(Lcn/nubia/camera/ah/a;Z)V

    .line 580
    iget-object p1, p0, Lcn/nubia/camera/ah/a$13;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->n(Lcn/nubia/camera/ah/a;)V

    .line 581
    iget-object p1, p0, Lcn/nubia/camera/ah/a$13;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ah/e;->a(Z)V

    .line 582
    iget-object p1, p0, Lcn/nubia/camera/ah/a$13;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ah/e;->i()V

    :cond_1
    return-void
.end method
