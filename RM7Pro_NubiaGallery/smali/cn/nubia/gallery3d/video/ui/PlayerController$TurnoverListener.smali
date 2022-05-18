.class Lcn/nubia/gallery3d/video/ui/PlayerController$TurnoverListener;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Lcn/nubia/video/player/common/PlayMotion$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/video/ui/PlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TurnoverListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/video/ui/PlayerController;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$TurnoverListener;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/video/ui/PlayerController;Lcn/nubia/gallery3d/video/ui/PlayerController$1;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/video/ui/PlayerController$TurnoverListener;-><init>(Lcn/nubia/gallery3d/video/ui/PlayerController;)V

    return-void
.end method


# virtual methods
.method public TurnDown()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$TurnoverListener;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onPause()V

    return-void
.end method

.method public TurnUp()V
    .locals 0

    return-void
.end method
