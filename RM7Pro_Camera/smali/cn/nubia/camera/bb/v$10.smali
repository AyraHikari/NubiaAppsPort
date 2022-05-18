.class Lcn/nubia/camera/bb/v$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/bb/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/v;->ad()Lcn/nubia/camera/bb/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/v;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/v;)V
    .locals 0

    .line 1086
    iput-object p1, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1089
    iget-object v0, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->v(Lcn/nubia/camera/bb/v;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 1107
    iget-object v0, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->y(Lcn/nubia/camera/bb/v;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 1108
    iget-object v0, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->y(Lcn/nubia/camera/bb/v;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1113
    iget-object v0, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->y(Lcn/nubia/camera/bb/v;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 1114
    iget-object v0, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->y(Lcn/nubia/camera/bb/v;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1094
    iget-object v0, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    const-string v1, "ui_change_recording"

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/v;->b(Lcn/nubia/camera/bb/v;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->m(Lcn/nubia/camera/bb/v;)V

    .line 1096
    iget-object v0, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->w(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1101
    iget-object v0, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;I)V

    .line 1102
    iget-object v0, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->x(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1119
    iget-object v0, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    const-string v1, "ui_change_recording"

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/v;->c(Lcn/nubia/camera/bb/v;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->m(Lcn/nubia/camera/bb/v;)V

    .line 1121
    iget-object v0, p0, Lcn/nubia/camera/bb/v$10;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->z(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method
