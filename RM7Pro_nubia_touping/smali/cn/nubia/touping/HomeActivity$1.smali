.class Lcn/nubia/touping/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/HomeActivity;->refreshInMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/HomeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/HomeActivity;

    .prologue
    .line 171
    iput-object p1, p0, Lcn/nubia/touping/HomeActivity$1;->this$0:Lcn/nubia/touping/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v0

    .line 175
    .local v0, "isPlayMirrorStatus":Z
    iget-object v1, p0, Lcn/nubia/touping/HomeActivity$1;->this$0:Lcn/nubia/touping/HomeActivity;

    new-instance v2, Lcn/nubia/touping/HomeActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/touping/HomeActivity$1$1;-><init>(Lcn/nubia/touping/HomeActivity$1;Z)V

    invoke-virtual {v1, v2}, Lcn/nubia/touping/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method
