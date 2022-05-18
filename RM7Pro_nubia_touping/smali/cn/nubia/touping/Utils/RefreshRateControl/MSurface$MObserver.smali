.class Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;
.super Landroid/database/ContentObserver;
.source "MSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;


# direct methods
.method public constructor <init>(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 249
    iput-object p1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .line 250
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 251
    return-void
.end method


# virtual methods
.method observer()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$1000(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_frame_flag"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 255
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 264
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$1100(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)V

    .line 265
    return-void
.end method

.method unregister()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$1000(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 259
    return-void
.end method
