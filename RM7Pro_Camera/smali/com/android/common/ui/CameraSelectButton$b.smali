.class Lcom/android/common/ui/CameraSelectButton$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/ui/CameraSelectButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/CameraSelectButton;


# direct methods
.method private constructor <init>(Lcom/android/common/ui/CameraSelectButton;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/common/ui/CameraSelectButton$b;->a:Lcom/android/common/ui/CameraSelectButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/ui/CameraSelectButton;Lcom/android/common/ui/CameraSelectButton$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/common/ui/CameraSelectButton$b;-><init>(Lcom/android/common/ui/CameraSelectButton;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 84
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton$b;->a:Lcom/android/common/ui/CameraSelectButton;

    invoke-static {p1}, Lcom/android/common/ui/CameraSelectButton;->a(Lcom/android/common/ui/CameraSelectButton;)Lcom/android/common/ui/CameraSelectButton$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton$b;->a:Lcom/android/common/ui/CameraSelectButton;

    invoke-static {p1}, Lcom/android/common/ui/CameraSelectButton;->a(Lcom/android/common/ui/CameraSelectButton;)Lcom/android/common/ui/CameraSelectButton$a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton$b;->a:Lcom/android/common/ui/CameraSelectButton;

    invoke-static {v0}, Lcom/android/common/ui/CameraSelectButton;->b(Lcom/android/common/ui/CameraSelectButton;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/common/ui/CameraSelectButton$a;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method
