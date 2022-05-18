.class Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener$1;
.super Ljava/lang/Object;
.source "CloudAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->addAlbum(Lcn/nubia/improve/xcloud/CloudBucket;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener$1;->this$1:Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener$1;->this$1:Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;

    iget-object v0, v0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-virtual {v0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->notifyContentChanged()V

    return-void
.end method
