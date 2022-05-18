.class Lcom/google/zxing/activity/CaptureActivity$4;
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
    .line 137
    iput-object p1, p0, Lcom/google/zxing/activity/CaptureActivity$4;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/zxing/activity/CaptureActivity$4;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    const-class v2, Lcn/nubia/touping/WirelessHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/zxing/activity/CaptureActivity$4;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-virtual {v1, v0}, Lcom/google/zxing/activity/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void
.end method
