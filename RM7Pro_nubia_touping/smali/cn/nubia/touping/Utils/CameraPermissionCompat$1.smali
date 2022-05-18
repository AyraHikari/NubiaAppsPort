.class final Lcn/nubia/touping/Utils/CameraPermissionCompat$1;
.super Ljava/lang/Object;
.source "CameraPermissionCompat.java"

# interfaces
.implements Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/CameraPermissionCompat;->startCaptureActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/touping/Utils/CameraPermissionCompat$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGrantResult(Z)V
    .locals 5
    .param p1, "granted"    # Z

    .prologue
    .line 84
    const-string v2, "CameraPermissionCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6743\u9650--------->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/nubia/touping/Utils/CameraPermissionCompat$1;->val$activity:Landroid/app/Activity;

    const-class v3, Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcn/nubia/touping/Utils/CameraPermissionCompat$1;->val$activity:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
