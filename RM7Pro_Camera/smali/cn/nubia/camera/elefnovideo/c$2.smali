.class Lcn/nubia/camera/elefnovideo/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/elefnovideo/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/elefnovideo/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/elefnovideo/c;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/c$2;->a:Lcn/nubia/camera/elefnovideo/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopRecordAnimationEnd VideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/c$2;->a:Lcn/nubia/camera/elefnovideo/c;

    invoke-static {v1}, Lcn/nubia/camera/elefnovideo/c;->c(Lcn/nubia/camera/elefnovideo/c;)Lcn/nubia/camera/elefnovideo/g;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/elefnovideo/g;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EleFnoVideoFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c$2;->a:Lcn/nubia/camera/elefnovideo/c;

    const-string v1, "ui_change_recording"

    invoke-static {v0, v1}, Lcn/nubia/camera/elefnovideo/c;->a(Lcn/nubia/camera/elefnovideo/c;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c$2;->a:Lcn/nubia/camera/elefnovideo/c;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/c;->d(Lcn/nubia/camera/elefnovideo/c;)Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    return-void
.end method
