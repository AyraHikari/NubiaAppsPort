.class Lcn/nubia/camera/r/e$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/e;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/r/e;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/r/e;Lcn/nubia/camera/r/e$1;)V
    .locals 0

    .line 842
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/e$a;-><init>(Lcn/nubia/camera/r/e;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 845
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 866
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->c(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/e$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/r/e$a;->removeMessages(I)V

    .line 867
    iget-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/i;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/r/i;->b()V

    goto/16 :goto_0

    .line 857
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->y(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 858
    iget-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->z(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c()V

    .line 859
    iget-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->z(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 860
    iget-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->z(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 861
    iget-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    const-string v0, "ui_change_recording"

    invoke-static {p1, v0}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;Ljava/lang/String;)V

    .line 862
    iget-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1, v1}, Lcn/nubia/camera/r/e;->e(Lcn/nubia/camera/r/e;Z)Z

    .line 863
    iget-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->A(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    goto :goto_0

    .line 847
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/i;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object p1

    sget-object v2, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-ne p1, v2, :cond_4

    .line 848
    iget-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->w(Lcn/nubia/camera/r/e;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x7

    if-ge p1, v2, :cond_3

    .line 849
    iget-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->x(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 850
    iget-object p1, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->x(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setEnabled(Z)V

    goto :goto_0

    .line 852
    :cond_3
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget-object v3, p0, Lcn/nubia/camera/r/e$a;->a:Lcn/nubia/camera/r/e;

    const v4, 0x7f0f00bd

    invoke-virtual {v3, v4}, Lcn/nubia/camera/r/e;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method
