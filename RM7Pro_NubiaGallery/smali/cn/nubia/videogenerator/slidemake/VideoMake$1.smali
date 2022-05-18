.class Lcn/nubia/videogenerator/slidemake/VideoMake$1;
.super Landroid/os/Handler;
.source "VideoMake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/videogenerator/slidemake/VideoMake;-><init>(Lcn/nubia/videogenerator/codec/ImageRender;ILjava/util/ArrayList;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/slidemake/VideoMake;


# direct methods
.method constructor <init>(Lcn/nubia/videogenerator/slidemake/VideoMake;Landroid/os/Looper;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake$1;->this$0:Lcn/nubia/videogenerator/slidemake/VideoMake;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 71
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "VideoMakeLog"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 81
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake$1;->this$0:Lcn/nubia/videogenerator/slidemake/VideoMake;

    invoke-static {p1}, Lcn/nubia/videogenerator/slidemake/VideoMake;->access$200(Lcn/nubia/videogenerator/slidemake/VideoMake;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    const-string p1, "hander---MSG_SHOW_PENDING_BITMAP"

    .line 73
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake$1;->this$0:Lcn/nubia/videogenerator/slidemake/VideoMake;

    invoke-static {p1}, Lcn/nubia/videogenerator/slidemake/VideoMake;->access$000(Lcn/nubia/videogenerator/slidemake/VideoMake;)V

    goto :goto_0

    :cond_2
    const-string p1, "hander---MSG_LOAD_NEXT_BITMAP"

    .line 77
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake$1;->this$0:Lcn/nubia/videogenerator/slidemake/VideoMake;

    invoke-static {p1}, Lcn/nubia/videogenerator/slidemake/VideoMake;->access$100(Lcn/nubia/videogenerator/slidemake/VideoMake;)V

    :goto_0
    return-void
.end method
