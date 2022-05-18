.class public final Lcn/nubia/gallery3d/app/UsbDeviceActivity;
.super Landroid/app/Activity;
.source "UsbDeviceActivity.java"


# static fields
.field static final TAG:Ljava/lang/String; = "UsbDeviceActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/nubia/gallery3d/app/Gallery;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/UsbDeviceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "UsbDeviceActivity"

    const-string v1, "unable to start Gallery activity"

    .line 43
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/UsbDeviceActivity;->finish()V

    return-void
.end method
