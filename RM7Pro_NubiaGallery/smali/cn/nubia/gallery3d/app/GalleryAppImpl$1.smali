.class Lcn/nubia/gallery3d/app/GalleryAppImpl$1;
.super Ljava/lang/Object;
.source "GalleryAppImpl.java"

# interfaces
.implements Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/GalleryAppImpl;->setUpBatteryListener()Lcn/nubia/improve/category/BatteryListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/GalleryAppImpl;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/GalleryAppImpl;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl$1;->this$0:Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatePowerConnected()V
    .locals 2

    const-string v0, "GalleryAppImpl"

    const-string v1, "onStatePowerConnected"

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl$1;->this$0:Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->startCategoryService(Landroid/content/Context;)V

    return-void
.end method

.method public onStatePowerDisconnected()V
    .locals 2

    const-string v0, "GalleryAppImpl"

    const-string v1, "onStatePowerDisconnected"

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl$1;->this$0:Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->stopCategoryService(Landroid/content/Context;)V

    return-void
.end method
