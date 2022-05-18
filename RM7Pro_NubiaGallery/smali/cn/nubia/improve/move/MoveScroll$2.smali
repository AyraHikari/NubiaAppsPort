.class Lcn/nubia/improve/move/MoveScroll$2;
.super Landroid/os/Handler;
.source "MoveScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/move/MoveScroll;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/data/MediaSet;Lcn/nubia/improve/move/MoveScroll$MovePageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/move/MoveScroll;


# direct methods
.method constructor <init>(Lcn/nubia/improve/move/MoveScroll;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/improve/move/MoveScroll$2;->this$0:Lcn/nubia/improve/move/MoveScroll;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 69
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/improve/move/MoveScroll$MovePageListener;

    .line 70
    invoke-interface {p1}, Lcn/nubia/improve/move/MoveScroll$MovePageListener;->onProgressRefresh()V

    :cond_1
    :goto_0
    return-void
.end method
