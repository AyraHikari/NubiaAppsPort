.class Lcom/google/zxing/activity/CaptureActivity$3;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/activity/CaptureActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 126
    iput-object p1, p0, Lcom/google/zxing/activity/CaptureActivity$3;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity$3;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/zxing/activity/CaptureActivity;->setResult(I)V

    .line 129
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity$3;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-virtual {v0}, Lcom/google/zxing/activity/CaptureActivity;->finish()V

    .line 130
    return-void
.end method
