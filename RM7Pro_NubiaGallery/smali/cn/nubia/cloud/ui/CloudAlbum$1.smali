.class Lcn/nubia/cloud/ui/CloudAlbum$1;
.super Ljava/lang/Object;
.source "CloudAlbum.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/ui/CloudAlbum;->setCloudItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/ui/CloudAlbum;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/ui/CloudAlbum;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbum$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbum;

    invoke-virtual {v0}, Lcn/nubia/cloud/ui/CloudAlbum;->notifyContentChanged()V

    return-void
.end method
