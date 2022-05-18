.class Lcom/android/captureCamera/CaptureCameraService$6;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/captureCamera/CaptureCameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/captureCamera/CaptureCameraService;


# direct methods
.method constructor <init>(Lcom/android/captureCamera/CaptureCameraService;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$6;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 453
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$6;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {p1}, Lcom/android/captureCamera/CaptureCameraService;->s(Lcom/android/captureCamera/CaptureCameraService;)V

    :goto_0
    return-void
.end method
