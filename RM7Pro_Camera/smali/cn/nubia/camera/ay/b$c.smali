.class Lcn/nubia/camera/ay/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ay/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ay/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/ay/b;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcn/nubia/camera/ay/b$c;->a:Lcn/nubia/camera/ay/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/ay/b;Lcn/nubia/camera/ay/b$1;)V
    .locals 0

    .line 629
    invoke-direct {p0, p1}, Lcn/nubia/camera/ay/b$c;-><init>(Lcn/nubia/camera/ay/b;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 633
    iget-object p1, p0, Lcn/nubia/camera/ay/b$c;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->j(Lcn/nubia/camera/ay/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getVisibility()I

    move-result p1

    const-string v0, "TrajectoryFragment"

    if-nez p1, :cond_0

    const-string p1, "can\'t RestartButtonClickListener ,because is making"

    .line 634
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "RestartButtonClickListener "

    .line 637
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object p1, p0, Lcn/nubia/camera/ay/b$c;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->h(Lcn/nubia/camera/ay/b;)V

    return-void
.end method
