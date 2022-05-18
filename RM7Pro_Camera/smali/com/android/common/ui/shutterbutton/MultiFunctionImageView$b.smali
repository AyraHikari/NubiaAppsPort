.class Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;


# direct methods
.method private constructor <init>(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$b;->a:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$1;)V
    .locals 0

    .line 450
    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$b;-><init>(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 453
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$b;->a:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->invalidate()V

    :goto_0
    return-void
.end method
