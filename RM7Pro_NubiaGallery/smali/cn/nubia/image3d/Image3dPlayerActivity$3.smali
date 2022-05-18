.class Lcn/nubia/image3d/Image3dPlayerActivity$3;
.super Landroid/os/Handler;
.source "Image3dPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/image3d/Image3dPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/image3d/Image3dPlayerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/image3d/Image3dPlayerActivity;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$3;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 347
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$3;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-static {p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->access$1300(Lcn/nubia/image3d/Image3dPlayerActivity;)V

    :goto_0
    return-void
.end method
