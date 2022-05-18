.class Lcn/nubia/video/player/OnTouchListener$MySetting;
.super Ljava/lang/Object;
.source "OnTouchListener.java"

# interfaces
.implements Lcn/nubia/video/player/MediaSettings$ISettingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySetting"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/OnTouchListener;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/OnTouchListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/video/player/OnTouchListener$MySetting;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/OnTouchListener;Lcn/nubia/video/player/OnTouchListener$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/video/player/OnTouchListener$MySetting;-><init>(Lcn/nubia/video/player/OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public onBrightChange(I)V
    .locals 0

    return-void
.end method

.method public onVolumeChange(I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/nubia/video/player/OnTouchListener$MySetting;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {v0}, Lcn/nubia/video/player/OnTouchListener;->access$200(Lcn/nubia/video/player/OnTouchListener;)Lcn/nubia/video/player/ViewBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/video/player/ViewBase;->onGestrueVolumeChange(I)V

    return-void
.end method
