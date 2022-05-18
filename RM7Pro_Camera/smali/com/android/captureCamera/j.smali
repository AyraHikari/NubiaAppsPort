.class public final Lcom/android/captureCamera/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/hardware/camera2/TotalCaptureResult;

.field public b:J

.field public c:Landroid/media/Image;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/captureCamera/j;->c:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_0
    return-void
.end method
