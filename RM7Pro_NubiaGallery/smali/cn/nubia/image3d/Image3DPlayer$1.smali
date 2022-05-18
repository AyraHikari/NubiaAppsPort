.class Lcn/nubia/image3d/Image3DPlayer$1;
.super Ljava/lang/Object;
.source "Image3DPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/image3d/Image3DPlayer;->seekTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/image3d/Image3DPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/image3d/Image3DPlayer;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/image3d/Image3DPlayer$1;->this$0:Lcn/nubia/image3d/Image3DPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/nubia/image3d/Image3DPlayer$1;->this$0:Lcn/nubia/image3d/Image3DPlayer;

    invoke-static {v0}, Lcn/nubia/image3d/Image3DPlayer;->access$000(Lcn/nubia/image3d/Image3DPlayer;)Lcn/nubia/image3d/Image3DPlayer$Image3DFrameCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/image3d/Image3DPlayer$1;->this$0:Lcn/nubia/image3d/Image3DPlayer;

    invoke-static {v0}, Lcn/nubia/image3d/Image3DPlayer;->access$100(Lcn/nubia/image3d/Image3DPlayer;)Z

    :cond_0
    return-void
.end method
