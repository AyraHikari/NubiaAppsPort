.class Lcn/nubia/cloud/ui/CloudAlbumSet$1;
.super Ljava/lang/Object;
.source "CloudAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/ui/CloudAlbumSet;->reloadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/ui/CloudAlbumSet;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-virtual {v0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->notifyContentChanged()V

    return-void
.end method
