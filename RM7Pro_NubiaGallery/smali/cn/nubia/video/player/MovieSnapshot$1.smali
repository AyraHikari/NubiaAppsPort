.class Lcn/nubia/video/player/MovieSnapshot$1;
.super Ljava/lang/Thread;
.source "MovieSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/MovieSnapshot;->startImportVideoFileThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/MovieSnapshot;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/MovieSnapshot;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcn/nubia/video/player/MovieSnapshot$1;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot$1;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/video/player/MovieSnapshot;->access$002(Lcn/nubia/video/player/MovieSnapshot;Z)Z

    .line 200
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot$1;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    invoke-static {v0}, Lcn/nubia/video/player/MovieSnapshot;->access$100(Lcn/nubia/video/player/MovieSnapshot;)V

    return-void
.end method
