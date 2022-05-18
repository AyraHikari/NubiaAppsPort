.class Lcom/google/zxing/activity/CaptureActivity$1;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/activity/CaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/activity/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/google/zxing/activity/CaptureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/zxing/activity/CaptureActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/zxing/activity/CaptureActivity$1;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 96
    return-void
.end method
