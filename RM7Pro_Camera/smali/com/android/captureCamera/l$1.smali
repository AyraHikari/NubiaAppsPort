.class Lcom/android/captureCamera/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/captureCamera/l;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/captureCamera/l;


# direct methods
.method constructor <init>(Lcom/android/captureCamera/l;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/captureCamera/l$1;->a:Lcom/android/captureCamera/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 0

    .line 59
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method
