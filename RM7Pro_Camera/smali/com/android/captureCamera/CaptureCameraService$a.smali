.class Lcom/android/captureCamera/CaptureCameraService$a;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/captureCamera/CaptureCameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/captureCamera/CaptureCameraService;


# direct methods
.method public constructor <init>(Lcom/android/captureCamera/CaptureCameraService;Landroid/content/Context;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$a;->a:Lcom/android/captureCamera/CaptureCameraService;

    .line 634
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$a;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->m(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$a;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->m(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/captureCamera/e;->a(I)V

    :cond_0
    return-void
.end method
