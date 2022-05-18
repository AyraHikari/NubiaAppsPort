.class Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;
.super Ljava/lang/Object;
.source "CloudMediaItem.java"

# interfaces
.implements Lcn/nubia/improve/xcloud/CloudManager$RenameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/ui/CloudMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageRenameListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/ui/CloudMediaItem;


# direct methods
.method private constructor <init>(Lcn/nubia/cloud/ui/CloudMediaItem;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/cloud/ui/CloudMediaItem;Lcn/nubia/cloud/ui/CloudMediaItem$1;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;-><init>(Lcn/nubia/cloud/ui/CloudMediaItem;)V

    return-void
.end method


# virtual methods
.method public renameDone(Ljava/lang/String;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-static {v0, p1}, Lcn/nubia/cloud/ui/CloudMediaItem;->access$802(Lcn/nubia/cloud/ui/CloudMediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudMediaItem;->access$900(Lcn/nubia/cloud/ui/CloudMediaItem;)Lcn/nubia/improve/rename/MediaItemRename$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 340
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudMediaItem;->access$900(Lcn/nubia/cloud/ui/CloudMediaItem;)Lcn/nubia/improve/rename/MediaItemRename$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/improve/rename/MediaItemRename$Listener;->renameDone()V

    :cond_0
    return-void
.end method
